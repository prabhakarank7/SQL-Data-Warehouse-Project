USE DataWarehouse;

/*
Script Purpose: The purpose of this script is to execute the stored procedure which loads the data into the tables
in the bronze schema.
*/

EXEC bronze.load_bronze;
