const connection = require('../DB/dbconnection').config()

exports.CountAreas = function(req,res){
    connection.query(`

    SELECT a.nombre_area, COUNT(r.id_area) as cantidad_registrada
    FROM area_desempenio a, registro_grado r
    WHERE r.id_area=a.id_area
    GROUP BY (r.id_area);
    
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

exports.GetArea = function(req,res){
    connection.query(`

    SELECT * FROM area_desempenio
    
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