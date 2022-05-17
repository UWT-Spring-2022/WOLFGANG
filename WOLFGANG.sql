CREATE TABLE IF NOT EXISTS Clojure (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);


CREATE TABLE IF NOT EXISTS C (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);


CREATE TABLE IF NOT EXISTS CPP (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS CSharp(
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS Java (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS Go (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS Python (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS JavaScript (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS HTML (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS Erlang (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS Scala (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS Ruby(
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXISTS PHP (
	Name varchar(255),
	Definition varchar(255),
	Syntax varchar(255),
	Example varchar(255),
	ID int,
	Reference int,
	PRIMARY KEY(ID, Reference)
);

CREATE TABLE IF NOT EXIST LanguageIndex (
	Language varchar(255),
	Reference int
)
