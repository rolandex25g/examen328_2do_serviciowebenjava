create table alumno
(
idAlumno integer PRIMARY KEY,
nombre varchar(50),
paterno varchar(30),
materno varchar(30),
ci varchar(10)
);

create table materia
(
idMateria integer PRIMARY KEY,
sigla varchar(30),
nombre_materia varchar(60)
);

create table inscripcion (
idInscripcion integer PRIMARY KEY,
idAlumno integer not null,
idMateria integer not null,
fecha date not null,
CONSTRAINT fk_Alumno FOREIGN KEY (idAlumno) REFERENCES alumno (idAlumno),
CONSTRAINT fk_Materia FOREIGN KEY (idMateria) REFERENCES materia (idMateria)
);


insert into alumno values(1,'Maria','Tapia','Sanchez','6092123');
insert into alumno values(2,'Juan','Perez','Lopez','5609312');
insert into alumno values(3,'Rolando','Quispe','Mamani','4886089');

insert into materia values(1,'INF328','Comparación de Lenguajes');
insert into materia values(2,'INF317','Sistemas en Tiempo Real y Distribuido');
insert into materia values(3,'INF325','Programación Virtual');
insert into materia values(4,'INF281','Taller de Sistemas');

insert into inscripcion values(1,1,3,'2020-07-20');
insert into inscripcion values(2,1,4,'2020-07-20');
insert into inscripcion values(3,2,4,'2020-07-21');
insert into inscripcion values(4,3,1,'2020-07-22');
insert into inscripcion values(5,3,2,'2020-07-22');
insert into inscripcion values(6,3,3,'2020-07-22');

select * from inscripcion


select M.nombre_materia 
from inscripcion as I, materia as M, alumno as A
where I.idAlumno=A.idAlumno and I.idMateria=M.idMateria and A.ci='4886089'