CREATE TABLE area_desempenio (
    id_area      INT NOT NULL AUTO_INCREMENT,
    nombre_area  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_area)
);


CREATE TABLE grado_academico (
    id_grado      INTEGER NOT NULL AUTO_INCREMENT,
    nombre_grado  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_grado)
);


CREATE TABLE persona (
    id_persona           INTEGER NOT NULL AUTO_INCREMENT,
    nombres_persona      VARCHAR(255) NOT NULL,
    apellidos_persona    VARCHAR(255) NOT NULL,
    telefono_persona     VARCHAR(10) NOT NULL,
    direccion_persona    VARCHAR(500) NOT NULL,
    fecha_nacimiento     DATE NOT NULL,
    usuario_persona      VARCHAR(100) NOT NULL UNIQUE,
    contrasenia_persona  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_persona)
);


CREATE TABLE registro_grado (
    id_persona  INTEGER NOT NULL,
    id_grado    INTEGER NOT NULL,
    id_area     INTEGER NOT NULL,
    fecha_registro  DATE NOT NULL,
    PRIMARY KEY (id_persona,id_grado,id_area)
);

ALTER TABLE registro_grado
    ADD CONSTRAINT grado_area_desempenio_fk FOREIGN KEY ( id_area )
        REFERENCES area_desempenio ( id_area );

ALTER TABLE registro_grado
    ADD CONSTRAINT registro_grado_academico_fk FOREIGN KEY ( id_grado )
        REFERENCES grado_academico ( id_grado );

ALTER TABLE registro_grado
    ADD CONSTRAINT registro_grado_persona_fk FOREIGN KEY ( id_persona )
        REFERENCES persona ( id_persona );