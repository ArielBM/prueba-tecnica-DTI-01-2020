const connection = require('../DB/dbconnection').config()

exports.Login = function(req,res){
    connection.query(`

    SELECT p.id_persona, p.nombres_persona, p.apellidos_persona FROM persona p
    WHERE p.usuario_persona=?
    AND p.contrasenia_persona=PASSWORD(?);`, 
    [req.body.nombre_usuario,req.body.contrasenia_usuario],
    function(error, results, fields){
        if (error) console.log(error)
        if (results.length > 0 ) 
        {
            
            res.json({
                estado: 1,
                info: results
            })
        }
        else
        {
            res.json({
                estado: 0,
                info: 'Error de credenciales'
            })
        }
    })
}


exports.CrearPersona = function(req,res){
    connection.query(`

    INSERT INTO persona(nombres_persona,apellidos_persona,telefono_persona,direccion_persona,fecha_nacimiento,usuario_persona,contrasenia_persona)
    VALUES (?,?,?,?,?,?,PASSWORD(?));`, 
    [req.body.nombre_usuario,req.body.apellidos_persona,req.body.telefono_persona,req.body.direccion_persona,req.body.fecha_nacimiento,req.body.usuario_persona,req.body.contrasenia_persona],
    function(error, results, fields){
        if (error) console.log(error)
        if (results.length > 0 ) 
        {
            
            res.json({
                estado: 1,
                info: results
            })
        }
        else
        {
            res.json({
                estado: 0,
                info: 'Error de credenciales'
            })
        }
    })
}



exports.GetPersons = function(req,res){
    connection.query(`

    SELECT DISTINCT p.id_persona, p.nombres_persona, p.apellidos_persona, p.telefono_persona, p.direccion_persona, p.fecha_nacimiento, 
    (SELECT g2.nombre_grado FROM registro_grado r2, persona p2, area_desempenio a2, grado_academico g2
    WHERE p2.id_persona=r2.id_persona
    AND a2.id_area=r2.id_area
    AND g2.id_grado=r2.id_grado
    AND p2.id_persona=p.id_persona
    ORDER BY r2.fecha_registro DESC
    LIMIT 1) as grado_persona,
    (SELECT a2.nombre_area FROM registro_grado r2, persona p2, area_desempenio a2, grado_academico g2
    WHERE p2.id_persona=r2.id_persona
    AND a2.id_area=r2.id_area
    AND g2.id_grado=r2.id_grado
    AND p2.id_persona=p.id_persona
    ORDER BY r2.fecha_registro DESC
    LIMIT 1) as area_persona
    FROM persona p;
    
    `, function(error, results, fields){
        if (error) console.log(error)
        if (results.length > 0 ) 
        {
            res.json(results)
        }
        else
        {
            res.json({
                info: 'Sin registros'
            })
        }
    })
}