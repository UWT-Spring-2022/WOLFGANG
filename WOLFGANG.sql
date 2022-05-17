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

INSERT IGNORE INTO C VALUES
('Built-in Data Types','','',1,200),
('Varibles','','','',2,200),
('Primitive','',' ','',3,200),
('Integers','Whole numbers','type variableName = value;','int x = 5;',4,200),
('Floating point','Decimal numbers','','float x = 3.14;',5,200),
('Char','Multiple or single character, based of ASCII code','','char c = 'M'',6,200),
('Boolean','True / False','','bool A = true',7,200),
('String','NULL','','NULL',8,200),
('Null','N/A','','int x = NULL;',9,200),
('Atom','not in standard C','_Atomic (type-name)',10,200),
('','','','',11,200),
('Structured','','','',12,200),
('Lists','Standard C doesnt support lists','Null','Null',13,200),
('Sets','Standard C doesnt support sets','Null','Null',14,200),
('Vectors','Standard C doesnt support vectors','Null','Null',15,200),
('Maps','','','',16,200),
('hashed map','Standard C doesnt support hashed map','Null','Null',17,200),
('sorted map','','','',18,200),
('','','','',19,200),
('','','','',20,200),
('','','','',21,200),
('Functions','','','',22,200),
('Regular','','',23,200),
('Anonymous','Standard C does not support anonymous functions','N/A','N/A',24,200),
('Multiple Arguments','',' myFunction(value1, value2, ... , value n); ',' Add(10, 5, 2)',25,200),
('Variadic','functions that can take a variable number of arguments','int funcName(data_type variable_name, ...);','int funcName(int n, ...){}',26,200),
('Higher Order','a function that accepts other functions as arguments or returns a function itself.Can be implemented in C using function pointers and compiler support ','void functionName(void(Function pointer)(void)) {}','void myFunc(void (*funcParameter)(void) ){}',27,200),
('If - else','','if (condition) {} else {}','',28,200),
('Switch Statement','','switch(expression) {}','{}',29,200),
('Loops','','','',30,200),
('While','','while (condition) {}','{}',31,200),
('Do While','','','',32,200),
('For','','for (statement 1; statement 2; statement 3) {}','{}',33,200),
('','','','',34,200),
('','','','',35,200),
('','','','',36,200),
('Parameter','','','',37,200),
('Single','','returnType functionName(parameter1) {}','void myName(char name[]) {}',38,200),
('Multiple','','returnType functionName(parameter1, parameter2, parameter3) {}','void myValue(int a, int b, int c) {}',39,200),
('Abitrary','','return type functionName(int, ... ) {}','void value(int a, ..) {}',40,200),
('','','','',41,200),
('Return Mechanism','To return a value, you can use a data type.','returnType functionName(parameter1, ...,) {}','int myFuction(int a, int b) {return a + b;}',42,200)
;

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

