const connection = require('../DB/dbconnection').config()

exports.GetGrade = function(req,res){
    connection.query(`

    SELECT * FROM grado_academico
    
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