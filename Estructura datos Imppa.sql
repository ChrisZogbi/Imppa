--Tabla Usuarios
CREATE TABLE [Usuarios]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[TipoUsuario] INT FOREIGN KEY REFERENCES TipoUsuario(ID) NOT NULL,
	[Mail] VARCHAR(50) NOT NULL,
	[Contraseņa] VARCHAR(10) NOT NULL,
	[AddedDate] DATETIME NOT NULL,
	[LastLogin] DATETIME NOT NULL,
	[Nombre] varchar(50) NULL,
	[Apellido] VARCHAR(50) NULL,
	[Direccion] VARCHAR MAX
)

--Tabla Tipo Usuario
CREATE TABLE [TipoUsuario]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[Tipo] VARCHAR MAX NOT NULL
)

--Tabla Tipo Usuario
CREATE TABLE [TituloUsuario]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[IDUsuario] INT FOREIGN KEY REFERENCES Usuario(ID)NOT NULL,
	[IDTitulo] FOREIGN KEY REFERENCES Titulo(ID)NOT NULL
)

CREATE TABLE [Titulo]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[Titulo] BINARY NOT NULL
)


--Tabla Subscripcion Usuario
CREATE TABLE [SubscripcionUsuario]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[IDUsuario] INT FOREIGN KEY REFERENCES Usuario(ID)NOT NULL,
	[IDSubscripcion] FOREIGN KEY REFERENCES [Subscripcion](ID)NOT NULL
)
--Tabla Subcripciones
CREATE TABLE [Subscripcion]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[Nombre] VARCHAR(50) NOT NULL,
	[Descripcion] VARCHAR MAX NULL,
	[Precio] INT NOT NULL
)

--Tabla Comentarios
CREATE TABLE [Comentarios]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[IDProfesor] INT FOREIGN KEY REFERENCES Usuario(ID) NOT NULL,
	[IDAlumno] INT FOREIGN KEY REFERENCES Usuario(ID) NOT NULL,
	[Comentario] VARCHAR MAX NOT NULL,
	[Puntaje] VARCHAR MAX NOT NULL
)

--Tabla Clases
CREATE TABLE [ClaseProfesor]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[IDUsuario] INT FOREIGN KEY REFERENCES Usuario(ID) NOT NULL,
	[IDCategoriaClase] INT FOREIGN KEY REFERENCES CategoriaClase(ID) NOT NULL,
	[IDTipoClase] INT FOREIGN KEY REFERENCES TipoClase(ID) NOT NULL,
	[Precio] INT NOT NULL
)


--Tabla Categorias de Clases
CREATE TABLE [CategoriaClase]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[NombreCategoria] VARCHAR NOT NULL
)

--Tabla Tipo Clases
CREATE TABLE [TipoClase]
(
	[ID] INT IDENTITY PRIMARY KEY,
	[Tipo] VARCHAR(50)
)