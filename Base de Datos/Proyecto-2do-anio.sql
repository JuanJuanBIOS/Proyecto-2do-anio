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
