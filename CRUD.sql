create database CRUD

use CRUD

create table Usuarios(
Id_Usuario int identity(1,1),
Nombre varchar(15),
Edad int,
Correo varchar(max),
Fecha_Nacimiento date
)

create procedure sp_load
as begin
select * from Usuarios
End

--CRUD: CREATE, READ, UPDATE, DELETE

create procedure sp_create
@Nombre varchar(15),
@Edad int,
@Correo varchar(max),
@Fecha date
as begin
insert into Usuarios values(@Nombre, @Edad, @Correo, @Fecha)
end

create procedure sp_read
@Id int
as begin
select * from Usuarios where Id_Usuario=@Id
end

create procedure sp_update
@Id int,
@Nombre varchar(15),
@Edad int,
@Correo varchar(max),
@Fecha date
as begin
update Usuarios set Nombre=@Nombre, Edad=@Edad, Correo=@Correo, Fecha_Nacimiento=@Fecha
where Id_Usuario=@Id
end

create procedure sp_delete
@Id int
as begin
delete from Usuarios where Id_Usuario=@Id
end

select * from Usuarios