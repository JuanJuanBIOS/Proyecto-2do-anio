USE MASTER
SET LANGUAGE Spanish
GO

IF EXISTS(SELECT * FROM sysDATABASEs WHERE name = 'BiosFarma')
BEGIN
	ALTER DATABASE BiosFarma SET single_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE BiosFarma
end
GO

--Se crea la base de datos
CREATE DATABASE BiosFarma
GO


--Se selecciona la base de datos
USE BiosFarma
GO

-- ------------------------------------------------------------------------------------------------
-- CREACIÓN DE TABLAS 
-- ------------------------------------------------------------------------------------------------

--Se crea la tabla de Empleados
CREATE TABLE Usuarios(
nombre VARCHAR(100) NOT NULL UNIQUE,
cedula VARCHAR(9) NOT NULL PRIMARY KEY,
pass VARCHAR(7) NOT NULL CHECK (LEN(pass) = 6),
--falta el check de la contraseña
activo BIT NOT NULL DEFAULT 1
)
GO