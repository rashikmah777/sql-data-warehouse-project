/*
===================================================================
Create Database and Schemas
===================================================================

Script purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze','silver','gold'

WARNING:
	Running this script will drop the entire 'DataWarehouse' database it it exists.
	All the data in the database will be permanently deleted. Proceed with caution and
	ensure you have proper backups before running this script.

*/

-- Check if the database named 'DataWarehouse' exists or not and then drop if exists
if exists (select 1 from sys.databases where name = 'DataWarehouse')
	begin
		drop database DataWarehouse
	end

go

-- create new database
create database DataWarehouse;

go
create schema bronze;
go 
create schema silver;
go
create schema gold;
go
