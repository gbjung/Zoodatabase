drop database zoo;
create database zoo;
use zoo;



create table if not exists Animal(
  Animalid varchar(15) primary key not null,
  Name varchar(50) not null,
  Age int not null,
  Speciesid int,
  Acquisitionid int,
  Cageid int
);

create table if not exists Species(
  Speciesid int primary key not null,
  Species varchar(50) not null,
  Genusid int,
  Countryid int,
  Statusid varchar(5)
);

create table if not exists Genus(
  Genusid int primary key not null,
  name varchar(50) not null,
  Familyid int
);

create table if not exists Family(
  Familyid int primary key not null,
  name varchar(50) not null
);

create table if not exists Acquisition(
  Acquisitionid int primary key not null,
  ADate date not null,
  ZooBorn boolean not null
);

create table if not exists Country(
  Countryid int primary key not null,
  name varchar(50) not null,
  Continentid int
);

create table if not exists Continent(
  Continentid int primary key not null,
  name varchar(50) not null
);

create table if not exists cStatus(
  Statusid varchar(5) primary key not null,
  name varchar(50) not null
);

create table if not exists ExhibitZones(
  Exhibitid varchar(10) primary key not null,
  name varchar(50) not null,
  Zoneid int
);

create table if not exists Cage(
  Cageid int primary key not null,
  name varchar(50) not null,
  Exhibitid varchar(10)
);

create table if not exists Zone(
  Zoneid int primary key not null,
  name varchar(6) not null
);

create table if not exists Employees(
  Employeeid int primary key not null,
  name varchar(50) not null,
  Positionid varchar(6)
);

create table if not exists emPosition(
  Positionid varchar(6) primary key not null,
  name varchar(50) not null
);

create table if not exists Contact(
  Employeeid int primary key not null,
  Phone varchar(50) not null,
  StreetAd varchar(50) not null,
  City varchar(50) not null,
  State char(2) not null,
  Zip int
);

create table if not exists Buildings(
  Buildingid int primary key not null,
  name varchar(50) not null,
  Zoneid int,
  Functionid int,
  Employeeid int
);

create table if not exists bFunction(
  Functionid int primary key not null,
  name varchar(50) not null
);
  
