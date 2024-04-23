CREATE DATABASE libreriasDb
GO

USE libreriasDb
GO

CREATE TABLE [clientes3] (
  [id] integer PRIMARY KEY identity,
  [nombre] nvarchar(255),
  [apellido] nvarchar(255),
  [email] nvarchar(255),
  [direccion] nvarchar(255),

)

insert into clientes3 values ('Mario','Sandoval','@@@','Santa Ana')
 select * from clientes3



CREATE TABLE autores5
(
  id integer PRIMARY KEY identity,
  autor varchar(200),
  obra varchar (200)
)

insert into autores5 values ('León Tolstoi', 'Ana Karenina')
insert into autores5 values ('León Tolstoi', 'Guerra y Paz')
insert into autores5 values ('Fiódor Dostoyevski', 'Crimen y Castigo')
insert into autores5 values ('Jane Austen', 'Orgullo y Prejuicio')

select * from autores5

CREATE TABLE categorias9
(
  id integer PRIMARY KEY identity,
  categoria varchar(200)
)

insert into categorias9 values ('Novela Rosa')
insert into categorias9 values ('Novela Policial')
insert into categorias9 values ('Novela historica')
insert into categorias9 values ('Realismo literario')

select* from categorias9

CREATE TABLE libros2
(
  id integer PRIMARY KEY identity,
  nombre nvarchar(255),
  descripcion nvarchar(255),
  id_autor integer,
  id_categoria integer,
  precio decimal(18,2),
  estado char(1)
)





CREATE TABLE [pedido_encabezado5] (
  [id] integer PRIMARY KEY,
  [id_cliente] integer,
  [cantidad_libros] integer,
  [total] decimal(18,2)
)
GO

CREATE TABLE [pedido_detalle6] (
  [id] integer PRIMARY KEY,
  [id_pedido] integer,
  [id_libro] integer,
  [created_at] datetime
)
GO

CREATE TABLE [comentarios_libros7] (
  [id] integer PRIMARY KEY,
  [id_libro] integer,
  [comentarios] varchar(max),
  [usuario] varchar(50),
  [created_at] datetime
)
GO

ALTER TABLE [pedido_encabezado] ADD FOREIGN KEY ([id_cliente]) REFERENCES [clientes] ([id])
GO

ALTER TABLE [pedido_detalle] ADD FOREIGN KEY ([id_pedido]) REFERENCES [pedido_encabezado] ([id])
GO

ALTER TABLE [pedido_detalle] ADD FOREIGN KEY ([id_libro]) REFERENCES [libros] ([id])
GO

ALTER TABLE [libros] ADD FOREIGN KEY ([id_autor]) REFERENCES [autores] ([id])
GO

ALTER TABLE [comentarios_libros] ADD FOREIGN KEY ([id_libro]) REFERENCES [libros] ([id])
GO

ALTER TABLE [libros] ADD FOREIGN KEY ([id_categoria]) REFERENCES [categorias] ([id])
GO
