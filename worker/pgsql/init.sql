-- Create the database
CREATE DATABASE db;

-- Create the user
CREATE USER admin WITH PASSWORD 'admin';

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON DATABASE db TO admin;

