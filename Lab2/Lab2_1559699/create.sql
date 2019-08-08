-- Lab 2 
-- create.sql
-- CMPS 180 Winter 2018
-- Eduardo Chavez (echavez9@ucsc.edu)

-- For testing purposes
-- Drops all objects from the database everytime 
DROP SCHEMA Lab2 CASCADE;
CREATE SCHEMA Lab2;

-- Create Tables

CREATE TABLE TaxReturns (
taxpayerID      INTEGER,
taxYear         INTEGER,
kind            CHAR(1),
dateFiled       DATE NOT NULL,
income          DECIMAL(11,2),
taxOwed         DECIMAL(11,2),
PRIMARY KEY (taxpayerID, taxYear),
UNIQUE  (taxpayerID, dateFiled)
);

CREATE TABLE Payments (
taxpayerID      INTEGER,
datePaid        DATE,
amountPaid      DECIMAL(11,2) NOT NULL,
PRIMARY KEY (taxpayerID, datePaid)
);

CREATE TABLE Individuals (
taxpayerID      INTEGER,
name            VARCHAR(30),
address         VARCHAR(30),
spouseID        INTEGER,
lastDateFiled   DATE,
lastDatePaid    DATE,
totalTaxOwed    DECIMAL(11,2),
PRIMARY KEY (taxpayerID),
UNIQUE  (spouseID)
);

CREATE TABLE Businesses (
taxpayerID      INTEGER,
name            VARCHAR(30),
address         VARCHAR(30),
businessType    CHAR(1),
lastDateFiled   DATE,
lastDatePaid    DATE,
totalTaxOwed    DECIMAL(11,2),
PRIMARY KEY (taxpayerID),
UNIQUE  (name, address)
);

CREATE TABLE IRSagents (
IRSagentID      CHAR(6),
taxpayerID      INTEGER NOT NULL,
jobLevel        INTEGER,
active          BOOLEAN,
PRIMARY KEY (IRSagentID)
);

CREATE TABLE Delinquents (
taxpayerID          INTEGER,
IRSagentID          CHAR(6),
collectionAgencyID  INTEGER,
PRIMARY KEY (taxpayerID)
);
