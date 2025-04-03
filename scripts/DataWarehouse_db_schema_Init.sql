/*
=====================================================================
CREATE DATABASE AND SCHEMAS
=====================================================================

Script purpose:

	This script creates a new database 'DataWarehouse' after checking if the database already exists. If the database 
	already exists, it is dropped and recreated. After the database creation, three schemas, bronze, silver and gold 
	are created within the database.

Warning:
	
	Please be warned that running this script will drop the entire 'DataWarehouse' database permanently if it exists and 
	along with that all the data in the database will be permanently deleted and cannot be recovered.

	Proceed with caution and ensure you have a proper backup(s) before running this script.
*/

USE master;
GO

--Check if any existing database with same name and drop it
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END;
	GO

-- Create 'DataWarehouse' database & USE
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
