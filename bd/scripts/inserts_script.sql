INSERT INTO area_desempenio(nombre_area)
VALUES('Ciencias de la Computación'),
	  ('Psicología'),
      ('Ciencias Económicas'),
      ('Big Data');
      
      
INSERT INTO grado_academico(nombre_grado)
VALUES('Licenciatura'),
	  ('Maestría'),
      ('Doctorado '),
      ('Diplomado');
      
      
INSERT INTO persona(nombres_persona,apellidos_persona,telefono_persona,direccion_persona,fecha_nacimiento,usuario_persona,contrasenia_persona)
VALUES ('Leslie','Sykes','5951-7257','P.O. Box 267, 4905 A, Street','1990-09-25','lSykes5',PASSWORD('My_P4ss1')),
	   ('Carol','Farley','6151-6744','P.O. Box 209, 6399 Ornare. St.','1989-08-17','cFarley10',PASSWORD('My_P4ss2')),
       ('Bryar','Beck','4439-2922','605 Donec Rd.','1993-07-13','bBeck7',PASSWORD('My_P4ss3')),
       ('Suki','Sloan','3786-2149','743-2170 Feugiat Road','1988-02-10','sSloan15',PASSWORD('My_P4ss4')),
       ('Callum','Ferrell','5454-6106','Ap #637-7638 Est. St.','1992-11-27','cFerrell',PASSWORD('My_P4ss5')),
       ('Rafael','Justice','6570-6681','P.O. Box 546, 2700 Arcu. Avenue','1990-03-17','rJustice7',PASSWORD('My_P4ss6'));
       
       
INSERT INTO registro_grado(id_persona,id_grado,id_area,fecha_registro)
VALUES(1,1,1,'2010-11-12'),
	  (1,2,2,'2015-11-07'),
      (1,3,3,'2020-11-25'),
      (2,1,1,'2010-11-12'),
      (2,2,2,'2015-11-07'),
      (3,1,1,'2010-11-12'),
      (4,2,4,'2010-11-12'),
      (5,4,3,'2010-11-12'),
      (5,4,4,'2015-11-07');
       
       
