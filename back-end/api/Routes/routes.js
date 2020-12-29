module.exports  = function(app) {

    var main = require('../Controllers/MainController.js');
    var person = require('../Controllers/PersonaController');
    var area = require('../Controllers/AreaController');
    var grade = require('../Controllers/GradeController');

    app.route('/').get(main.initMain);

    app.route('/getPersons').get(person.GetPersons);
    app.route('/login').post(person.Login);

    app.route('/getArea').get(area.GetArea);
    app.route('/countAreas').get(area.CountAreas);

    app.route('/getGrade').get(grade.GetGrade);
    


}