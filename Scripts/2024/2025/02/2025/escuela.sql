
CREATE DATABASE escuelita;
GO

use escuelita

create TABLE empleado (
    idEmpleado int not NULL PRIMARY KEY, 
    nombre NVARCHAR(50) NOT NULL, 
    sueldo money DEFAULT 1500
)

INSERT into empleado (idEmpleado, nombre,sueldo)
    VALUES (1, 'Felide de Jesus', 2000 )

    select  * FROM empleado; 

    insert into empleado(idEmpleado,nombre)
        VALUES (2, 'Chuerk')
    SELECT * FROM empleado 

    CREATE TABLE personita (
        idEmpleado int NOT NULL PRIMARY KEY, 
        nombre NVARCHAR(50) NOT NULL, 
        sueldo money DEFAULT 1500, 
        telefono VARCHAR(20) CHECK ( telefono like '667[0-9][0-9][0-9]')
    )

    INSERT into personita VALUES (1, 'Juana', null, '667123')

    alter TABLE empleado 
        add sexo char(1) NULL CHECK (sexo in ('H', 'M'))

    SELECT * FROM empleado 
    INSERT into empleado (idEmpleado, nombre, sexo) VALUES (3, 'Alexis Jara Rodriguez', 'H')
    
    INSERT into empleado (idEmpleado, nombre, sexo) VALUES (4, 'Matilde Sandoval', 'M')


    alter TABLE empleado 
        drop CONSTRAINT CK__empleado__sexo__3F466844

    INSERT into empleado (idEmpleado, nombre, sexo) VALUES (4, 'Matilde Sandoval', 'M')


