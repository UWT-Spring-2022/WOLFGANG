-- Uncomment the line below if database is not created
--create database WOLFGANG;

-----------------------------------------------------------
--
-- Table structure for the LanguageIndex table
--

CREATE TABLE IF NOT EXISTS LanguageIndex (
  `Language` VARCHAR(255) NOT NULL,
  `References` INT NOT NULL AUTO_INCREMENT,
  UNIQUE INDEX `idnew_table_UNIQUE` (`Language` ASC) VISIBLE,
  PRIMARY KEY (`References`),
  UNIQUE INDEX `References_UNIQUE` (`References` ASC) VISIBLE
  );
  
--
-- Dumping data into the LanguageIndex table 
--
  
INSERT IGNORE INTO LanguageIndex VALUES
("Clojure", 100),
("C", 200),
("CPP", 300),
("CSharp", 400),
("Java", 500),
("Go", 600),
("Python", 700),
("JavaScript", 800),
("HTML", 900),
("Erlang", 1000),
("Scala", 1100),
("Ruby", 1200),
("PHP", 1300)
;

-----------------------------------------------------------
--
-- Table structure for the C Language table
--

CREATE TABLE IF NOT EXISTS C (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the C table 
--

INSERT IGNORE INTO C VALUES

('Built-in Data Types','','','',1,200),
('Varibles','','','',2,200),
('Primitive','',' ','',3,200),
('Integers','Whole numbers','type variableName = value','int x = 5',4,200),
('Floating point','Decimal numbers','','float x = 3.14',5,200),
('Char','Multiple or single character, based of ASCII code','', 'char c = ''M''',6,200),
('Boolean','True / False','','bool A = true',7,200),
('String','NULL','','NULL',8,200),
('Null','N/A','','int x = NULL',9,200),
('Atom','Their purpose is to ensure race-free access to variables that are shared between different threads','_Atomic ( type-name )','_Atomic int p1',10,200),
('','','','',11,200),
('Structured','','','',12,200),
('Lists','Standard C doesnt support lists','Null','Null',13,200),
('Sets','Standard C doesnt support sets','Null','Null',14,200),
('Vectors','Standard C doesnt support vectors','Null','Null',15,200),
('Maps','','','',16,200),
('hashed map','Standard C doesnt support hashed map','Null','Null',17,200),
('sorted map','Standard C doesnt support hashed map','Null','Null',18,200),
('','','','',19,200),
('','','','',20,200),
('','','','',21,200),
('Functions','','','',22,200),
('Regular','A function is a group of statements that together perform a task','void myFunction() {}', 'void myName() {printf("My name is John Doe!");}',23,200),
('Anonymous','Standard C does not support anonymous functions','N/A','N/A',24,200),
('Multiple Arguments','The values that are declared within a function when the function is called are known as an argument.',' myFunction(value1, value2, ... , value n) ',' Add(10, 5, 2)',25,200),
('Variadic','functions that can take a variable number of arguments','int funcName(data_type variable_name, ...)','int funcName(int n, ...) {}',26,200),
("Higher Order","HOFs are functions that take in other functions as arguments. C++11 uses lamdas"," void functionName(void(Function pointer)(void)) {// code to be executed}", "void myFunc(void (*funcParameter)(void) ){}",27,300),
('If - else','if statement that contains the use of logical conditions from mathematics','if (condition) {} else {}','if (x > y) {}',28,200),
('Switch Statement','Case statement that contains the use of multiple logical conditions','switch(expression) {}','  switch (day) {
    case 1:
      printf("Monday");
      break;
    case 2:
      printf("Tuesday");
      break;
  }',29,200),
('Loops','','','',30,200),
('While','Execute instructions as long as condition is true.','while (condition) {}','int i; while (i < 5) { printf("%d\n", i);  i++; }',31,200),
('Do While','Execute instructions first, then repeats as long as condition is true.','do {  //code to be executed  } while(condition);  ',' int i=1;  do{ printf("%d \n",i);  i++; } while(i<=10);  return 0;  } ',32,200),
('For','Loops instructions with a set value.','for (statement 1 statement 2 statement 3) {}','int i; for (i = 0; i < 5; i++) { printf("%d\n", i); }',33,200),
('','','','',34,200),
('','','','',35,200),
('','','','',36,200),
('Parameter','','','',37,200),
('Single','A function that has a single parameter','returnType functionName(parameter1) {}','void myName(char name[]) {}',38,200),
('Multiple','A function that has two or more parameters','returnType functionName(parameter1, parameter2, parameter3) {}','void myValue(int a, int b, int c) {}',39,200),
('Abitrary','A function could have an arbitrary number of parameter','return type functionName(int, ... ) {}','void value(int a, ..) {}',40,200),
('','','','',41,200),
('Return Mechanism','If you want the function to return a value, you can use a data type.','returnType functionName(parameter1, ...,) {return returnvalue}','return a + b',42,200)
;

-----------------------------------------------------------
--
-- Table structure for the Clojure Language table
--

CREATE TABLE  IF NOT EXISTS Clojure (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_1`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the Clojure table 
--

INSERT IGNORE INTO Clojure VALUES
('Built-in Data Types','','','',1,100),
('Varibles',' ','(def <var-name> <var-value>)','(see below)',2,100),
('Primitive','','','',3,100),
('Integers','Whole numbers','(def <var-name> <var-value>)','(def aInt 15)',4,100),
('Floating point','Decimal numbers','','(def aFloat 1.5)',5,100),
('Char','Just a single character, based of ASCII code','','(def aChar ''a'')',6,100),
('Boolean','True / False','','(def aBool true)',7,100),
('String','Some sort of text','','(def aString "Hampton")',8,100),
('Null','Just a NULL character','','(not null)',9,100),
('Atom','A reference type that manages state','','(def aAtom (atom 1))',10,100),
('','','','',11,100),
('Structured','','','',12,100),
('Lists','','(list & items)','(list ""Dog"" 1 3.4 true)',13,100),
('Sets','Sets in Clojure are a collection of unique values, created with the set command','(set coll)','(set ''(1 2 3 4))',14,100),
('Vectors','A  collection of values indexed by integers, created using the vector method','(vector & items)','(vector (8 22 912))',15,100),
('Maps','A collection of keys and values','','',16,100),
('hashed map','keys support hashCode and is created using the hash-map function','(hash-map & keyvals)','(hash-map "Name" "Derek" "Age" 42)',17,100),
('sorted map','implement Comparable, created using the sorted-map function','(sorted-map & keyvals)','(sorted-map 2 42 2 "Banas" 1 "Derek")',18,100),
('','','','',19,100),
('','','','',20,100),
('','','','',21,100),
('Functions','','','',22,100),
('Regular','Defined with ''defn'' macro','','',23,100),
('Anonymous','Essentially functions with no names','','',24,100),
('Multiple Arguments','Clojure supports functions defined with zero or more parameters','','',25,100),
('Variadic','Functions that take in an abitrary numbers of arguments, specified with the '&' ampersand symbol','','',26,100),
('Higher Order','HOFs are functions that take in other functions as arguments','','',27,100),
('Loops','','','',28,100),
('If - else','','','',29,100),
('While','','','',30,100),
('Do While','','','',31,100),
('For','','','',32,100),
('Case','','','',33,100),
('','','','',34,100),
('','','','',35,100),
('','','','',36,100),
('Parameter','','','',37,100),
('Single','A function that has a single parameter','[var-name]','',38,100),
('Multiple','A function that has two or more parameters','[var-name-1 var-name-2 ...]','',39,100),
('Abitrary','A function could have an arbitrary number of parameters','[& var-name]','',40,100),
('','','','',41,100),
('Return Mechanism','Since Clojure is a functional programming language, everything returns a value, thus there is no need for a return keyword','','',42,100);

-----------------------------------------------------------
--
-- Table structure for the Cpp Language table
--

CREATE TABLE  IF NOT EXISTS CPP (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_2`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the Cpp table 
--

INSERT IGNORE INTO CPP VALUES
("Built-in Data Types","","","",1,300),
("Varibles","instances of Objects","type variableName = value","(see below)",2,300),
("Primitive","","","",3,300),
("Integer","Whole numbers","type variableName = value","int x = 5",4,300),
("Floating point","Decimal numbers","","float x = 3.14 ",5,300),
("Char","Characters based of ASCII code","","char c = 'A'",6,300),
("Boolean","True / False","","bool A = true",7,300),
("String","Some sort of text","","string name = Jane Doe",8,300),
("NULL","Just a NULL character","","int y = NULL",9,300),
("Atom","A reference type that manages state","std::atomic<T>::value","struct Sum { int a int b }",10,300),
("","","","",11,300),
("Structured","","","",12,300),
("Lists","A collection of data items","list <datatype> listName","list <int> myList = {1, 2, 3 , 4, 5}",13,300),
("Sets","Associative containers that store unique elements","set<datatype> setName","set<int> mySet={1,2,3,4,5}",14,300),
("Vectors","A collection of values indexed by integers","vector <data-type> vectorName (items)","vector<int> myVectors = {1,2,3,4,5}",15,300),
("Maps","A collection of keys and values","map<datatype1, datatype2>  mapName","map<int, char>  myMap",16,300),
("hashed map","keys support hashCode and is created using the hash-map function","unordered_map<datatype1, datatype2> mapName"," unordered_map<string, int> unorderedmap",17,300),
("sorted map","implement Comparable, created using the sorted-map function","std::map <datatype1, datatype2> mapName","std::map <int, int> orderedmap",18,300),
("","","","",19,300),
("","","","",20,300),
("","","","",21,300),
("Functions","","","",22,300),
("Regular","A function is a group of statements that together perform a task","datatype myFunction() {}","",23,300),
("Anonymous"," Lambda is convenient way of defining an anonymous function object in C++","","",24,300),
("Multiple Arguments","C++ supports functions defined with zero or more parameters"," myFunction(value1, value2, ... , value n) "," Add(10, 5, 2)",25,300),
("Variadic","Functions that take in an abitrary numbers of arguments","datatype myFunction(const datatype...) {}","int printf(const char* format...)",26,300),
("Higher Order","HOFs are functions that take in other functions as arguments. C++11 uses lamdas","auto functionName = [] (datatype1,dataype2){return values;}","auto add = [](int x, int y) { return x + y; };",27,300),
("If - else","","if (condition) {} else {}","if (x > y) {}",28,300),
("Parameter","","","",29,300),
("Single","A function that has a single parameter","return_type function_name() {}","",30,300),
("Multiple","A function that has two or more parameters","return type function_name(paraemter1, parameter2, parameter3) {}","",31,300),
("Abitrary","A function could have an arbitrary number of parameters","return type functionName(datatype, ... ) {}","int sum(int num,...) {}",32,300),
("","","","",33,300),
("Return Mechanism","If you want the function to return a value, you can use a data type.","return type functionName(parameters1, ...) {}","int myFuction(int a, int b){return a + b }
",34,300)
;

-----------------------------------------------------------
--
-- Table structure for the CSharp Language table
--

CREATE TABLE  IF NOT EXISTS CSharp (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_3`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the CSharp table 
--

INSERT IGNORE INTO CSharp VALUES
("Built-in Data Types","","","",1,400),
("Varibles","","(see below)","(see below)",2,400),
("Primitive","","","",3,400),
("Integers","Whole numbers","type variableName = value","int x = 2",4,400),
("Double/Floating point","Decimal numbers","","float y = 3.142F",5,400),
("Char","Just a single character, based of ASCII code","","char c = 'M'",6,400),
("Boolean","True / False","","bool A = true",7,400),
("String","Some sort of text","","string name = John Doe",8,400),
("NULL","Just a NULL character","Nullable<t>","Nullable<int> i = null",9,400),
("Atom","There is no atomic variable in c# ","Null","Null",10,400),
("","","","",11,400),
("Structured","","","",12,400),
("Lists","A collection of data items","List<T>","List<int> values = new List<int>()",13,400),
("Sets","A collection of unique values","HashSet<T>","HashSet<int> values = new HashSet<int>()",14,400),
("Vectors","A  collection of values indexed by integers, created using the vector method","vector<T> Struct","public struct Vector<T> :",15,400),
("Maps","A collection of keys and values","Null","Null",16,400),
("hashed map","created using hash-map fn","Null","Null",17,400),
("Dictionary ","Represents a collection of keys and values.","Dictionary<TKey,TValue>","Dictionary<string, string> mystring",18,400),
("","","","",19,400),
("","","","",20,400),
("","","","",21,400),
("Functions","","","",22,400),
("Regular","Used for parsing and pattern matching","<modifiers> <return-type> <method-name> <parameter-list>","public int AddNumbers(int num1, int num2){}",23,400),
("Anonymous","Anonymous methods can access variables defined in an outer function. ","delegate(parameter_list){}","delegate(string name) {}",24,400),
("Multiple Arguments","You can specify method parameter that takes a variable number of arguments."," myMethod(value1, value2, .., Value n) ","Add(10, 5, 2)",25,400),
("Variadic","By using the params keyword, you can specify a method parameter that takes a variable number of arguments.","<modifiers> <return-type> <method-name> 
<param parameter-list>"," public static void UseParams(params int[] a)",26,400),
("Higher Order","HOFs are functions that take in other functions as arguments","<modifiers>  delegate <return-type> <method-name> 
<parameter-list>","public delegate int Calculate(int x, int y)",27,400),
("If - else","","if (condition){}","if(x=5){}",28,400),
("Parameter","","","",29,400),
("Single","A function that has a single parameter","<modifiers> <return-type> <method-name> 
<parameter-list>","public int myNumbers(int x){}",30,400),
("Multiple","A function that has two or more parameters","<modifiers> <return-type> <method-name> <parameter-list>","public int AddNumbers(int x, int y){}",31,400),
("Abitrary","A function could have an arbitrary number of parameters","","",32,400),
("","","","",33,400),
("Return Mechanism","To return a value, you can use a primitive data type.","<modifiers> <return-type> <method-name> <parameter-list> {}", "return a + b",34,400)
;


-----------------------------------------------------------
--
-- Table structure for the Java Language table
--

CREATE TABLE  IF NOT EXISTS Java (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_4`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the Java table 
--

INSERT IGNORE INTO Java VALUES
("Built-in Data Types","","","",1,500),
("Varibles","","(def var-name var-value)","(see below)",2,500),
("Primitive","","","",3,500),
("Integers","Whole numbers","type variableName = value","int x = 5",4,500),
("Floating point","Decimal numbers","","float y = 3.142f",5,500),
("Char","Just a single character, based of ASCII code","","char  c = 'J'",6,500),
("Boolean","True / False","","boolean mybool = true",7,500),
("String","Some sort of text","","String name = John Doe",8,500),
("Null","In Java null is a reserved word (keyword) for literal values","type variableName = (typecast)null","Object myObject = null ",9,500),
("Atom","A reference type that manages state","AtomicClass  variableName;","AtomicInteger myInt;",10,500),
("","","","",11,500),
("Structured","","","",12,500),
("Lists","A collection of data items","List<Obj> list = new ArrayList<Obj> () ","List<Integer>  list = new ArrayList<Integer>()",13,500),
("Sets","A collection of unique items","Set<Obj> set = new HashSet<Obj> ()","Set<String> hash_set = new HashSet<String>()",14,500),
("Vectors","A  collection of values indexed by integers","Vector vector_name = new Vector()","Vector v = new Vector()",15,500),
("Maps","A collection of keys and values","","",16,500),
("hashed map","Maps that support hashCode","Map<Obj1, Obj2> set = new HashMap<Obj1, Obj2> ()","Map<Integer, String> hmap = new HashMap<>()",17,500),
("sorted map","Maps that implement Comparable","SortedMap<Obj1, Obj2> set = new TreeMap<Obj1, Obj2> ()","SortedMap<Integer, String> tm2= new TreeMap<Integer, String>()",18,500),
("","","","",19,500),
("","","","",20,500),
("","","","",21,500),
("Functions","","","",22,500),
("Regular","Basic functions","static returntype methodname() {}","static void myMethod() {}",23,500),
("Anonymous","Yes, if you are using Java 8 or above. Java 8 make it possible to define anonymous functions", " (parameter1, parameter2) -> { code block }","  interface myMethod { String run(String str); }",24,500),
("Multiple Arguments","Java supports functions defined with zero or more parameters","methodName(value1, value2, ..., value3)","Add(10, 5,  20)",25,500),
("Variadic","In Java, an argument of a method can accept arbitrary number of values.","  "," ",26,500),
("Higher Order","HOFs are functions that take in other functions as arguments","","",27,500),
("","","","",28,500),
("Parameter","","","",29,500),
("Single","A function that has a single parameter"," static returntype methodname(parameter1) {}","static void myMethod(String Fname) {}",30,500),
("Multiple","A function that has two or more parameters"," static returntype methodname(parameter1, parameter2) {}"," static void myMethod(String Fname, String Lname, int age){}",31,500),
("Abitrary","A function could have an arbitrary number of parameters"," static returntype methodname(param datatype)  { // code to be execute ","static void myMethod(params string[] names) { }",32,500),
("","","","",33,500),
("Return Mechanism","If you want the function to return a value, you can use a data type"," static returntype methodname(parameter1) {}","static int myMethod(int a, int b) {return a + b}",34,500)
;

-----------------------------------------------------------
--
-- Table structure for the Go Language table
--

CREATE TABLE  IF NOT EXISTS Go (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_5`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the Go table 
--

INSERT IGNORE INTO Go VALUES
("Built-in Data Types","","","",1,600),
("Varibles","Variables in Go are immutable and both explicit and implicit. Variables in functions are allocated into stacks unless the compiler cannot prove the variable isnt referenced elsewhere. Since go contains automatic garbage collected, So there is no need to remove variables from memory by the user. Variables are stack, which means they are called within its block, and contain global and local variables.","","",2,600),
("Primitive","In go, primitive types consist of int, float, string and bool. Numeric types can be called with different size bits. Please reference the table below.","","",3,600),
("Integers","Unsign bit integers & Signed bit integers","var <var-name> <type> = <value>","var myInt int = 1",4,600),
("Floating point","Whole or decimal numbers","var name type = val", "var myFloat float = 1.342",5,600),
("Char","N/A","","N/A",6,600),
("Boolean","value consisting of true or false","","var myBool bool = true OR var myBool := false",7,600),
("String","text value","","var myString := Hello, World!",8,600),
("Nil","Null Value","","var myNil int = nil",9,600),
("Atom","N/A","","N/A",10,600),
("","","","",11,600),
("Structs","Similar to C, Go has the capability to create structs. See the table below on how to declare and initialize a struct.","","",12,600),
("Create struct","How to create a struct.","Type Date struct {}","",13,600),
("Declare and initialize","How to declare and initialize a struct.","","",14,600),
("","","","",15,600),
("","","","",16,600),
("","","","",17,600),
("Functions","In the subprogram parameter, there is no default values or support for keyword parameters. The parameters in Go are position, which means that the order of formal values are the same as the order of the actual parameter. Go can call by value and also call by reference.","","",18,600),
("Regular","Receive and return variables","func add(x int, y int) int{}","",19,600),
("Anonymous","Support for nested and anonymous functions","x := func(str string) {}","",20,600),
("Multiple Arguments","Can receive multiple arguments and return multple arguments","func add(x int, y int)","",21,600),
("Variadic","","","",22,600),
("Higher Order","Can receive and/or return a function","Func sum(x int) func(int) int {}","",23,600),
("","","","",24,600),
("","","","",25,600),
("","","","",26,600),
("Parameter","","","",27,600),
("Single","Can be single or multiple, pass by value, or pass by reference. ","","",28,600),
("Multiple","","","",29,600),
("Abitrary","","","",30,600),
("","","","",31,600),
("Return Mechanism","return <value>","","",32,600)
;

-----------------------------------------------------------
--
-- Table structure for the Python Language table
--

CREATE TABLE  IF NOT EXISTS Python (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_6`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the Python table 
--

INSERT IGNORE INTO Python VALUES
("Built-in Data Types","","","",1,700),
("Varibles","","","",2,700),
("Primitive","","","",3,700),
("Integers","Whole number","<var-name> = <value>","x = 5",4,700),
("Floating point","Whole number or decimal","","x = 5, x= 5.0",5,700),
("Char","N/A","","N/A",6,700),
("Boolean","True/False","","a = True, b = False",7,700),
("String","Text, up to 63GB max length","","s = Hello, World!, s = 'Hello, World!'",8,700),
("Null","Null is defined as NONE","","if name is None: print(None found)",9,700),
("Atom","N/A","","N/A",10,700),
("","","","",11,700),
("Structured","","","",12,700),
("Lists","Used to store multiple items","<var-name> = [<value>, <value>, <value>]","myList = [One, Two, Three]",13,700),
("Sets","A collection which is unordered, unchangeable, and unindexed","<var-name> = {<value>, <value>, <value>}","mySet = {One, Two, Three}",14,700),
("Vectors","N/A","N/A","N/A",15,700),
("Maps","A function that returns a map opject of items","<var-name> = map(<fun>, <iter>)","myNumbers = (5, 6, 7, 8) myMap = map(lambda x: x + x, myNumbers)",16,700),
("hashed map","N/A","N/A","N/A",17,700),
("sorted map","N/A","N/A","N/A",18,700),
("","","","",19,700),
("","","","",20,700),
("","","","",21,700),
("Functions","","","",22,700),
("Regular","Regular function that contains instructions","def <fun-name>():","def myFunction(): print(Hello, World!)",23,700),
("Anonymous","Can be acheived by the use of Lambda","<var-name> = lambda x: x <operator> <integer>","myLam = lambda x: x *2 print(myLam(2)) //4",24,700),
("Multiple Arguments","Must be called with correct number of arguments.","def <fun-name>(<var-name1>, <var-name2>): <fun-name>(<var-name1>, <var-name2>)","def myFunction(myVar1, myVar2): print(myVar1 +   + myVar2) -> myFunction(Hello, World)",25,700),
("Variadic","Function that takes a variable number of arguments","print(<string> + <integer> + <Float>) AND *argv","print(Hello + 123 + World) def myFun(*argv): for arg in argv: print(arg)",26,700),
("Higher Order","A function can be assigned to a variable.","def <fun-name>(<var-name>): return <var-name> <var-name> =  <fun-name>","def myFun(myNumber): return myNumber + 5  myVar = myFun  print(myVar(10)) //15",27,700),
("Loops","","","",28,700),
("If - else","if statement that contains the use of logical conditions from mathematics","if a <operator> b: elif a <operator> b: else a<operator> b","if a < b: print(hi) elif a == b: print(hello) else: print(world)",29,700),
("While","Execute instructions as long as condition is true","while a <operator> b:","i = 0 while i < 5: print(i) i+=1",30,700),
("Do While","N/A","N/A","N/A",31,700),
("For","iteration loop","for <var-name> in <list/set/fun>: OR for <var-name> in range(<integer1>, <integer2>): ","for x in myList: print(x) OR for x in range(0, 3): print(x)",32,700),
("Case","N/A","N/A","N/A",33,700),
("","","","",34,700),
("","","","",35,700),
("","","","",36,700),
("Parameter","","","",37,700),
("Single","Can be Single, Multple, or Arbitrary.","def <fun-name>(<var-name>)","",38,700),
("Multiple","","def <fun-name>(<var-name1>, <var-name2>, <var-name3>)","",39,700),
("Arbitrary","","def <fun-name>(*<var-name>)","",40,700),
("","","","",41,700),
("Return Mechanism","return <item>","","",42,700)
;

-----------------------------------------------------------
--
-- Table structure for the JavaScript Language table
--

CREATE TABLE  IF NOT EXISTS JavaScript (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_7`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the JavaScript table 
--

INSERT IGNORE INTO JavaScript VALUES
("Built-in Data Types","","","",1,800),
("Varibles","May contain global and local variables. May use 'const' instead of 'var' for variables that will never change once assigned. You may also use 'let' when you want a variable that is block scoped.","","",2,800),
("Primitive","","","",3,800),
("Integers","Whole number.","var <var-name> = <value>; OR const <var-name> = <value>;","var x = 1;",4,800),
("Floating point","Whole or decimal number.","","var x = 1.346;",5,800),
("Char","N/A","","N/A",6,800),
("Boolean","Logical variable having two values: true and false.","","var myBool = true; OR var myBool = false;",7,800),
("String","Some kind of text.","","var myString = 'Hello, World!'",8,800),
("Null","Null value.","","var myNull = null",9,800),
("Atom","N/A","","N/A",10,800),
("","","","",11,800),
("Structured","","","",12,800),
("Lists","N/A","N/A","N/A",13,800),
("Sets","A collection of unique values. Built in method that creates a set from array data. my use .add() to add new elements, .forEach() to iterate through the set.","const <var-name> = new Set([<value>, <value>, <value>]);","const mySet = new Set([1, 2, 3]);",14,800),
("Vectors","N/A","N/A","N/A",15,800),
("Maps","","","",16,800),
("Map","Key-value pairs. Built in method that creates a map from array data. may use .set() to add values, and .get() to get values.","const <var-name> = new Map([<value>, <value>], [<value>, <value>]);","const myMap = new Map([A, 1], [B, 2]); myMap.set(C, 3); myMap.get(B);",17,800),
("","","","",18,800),
("","","","",19,800),
("","","","",20,800),
("","","","",21,800),
("Functions","Every function must begin with the keyword 'function'","","",22,800),
("Regular","Regular function containing instruction.","function <fun-name>() { } <fun-name>()","function myFunc() { var num = 1;} myFunc();",23,800),
("Anonymous","A function without a name.","let <var-name> = function() { } <var-name>();","let myAnon = function() { console.log('My Anonymous Function');} myAnon();",24,800),
("Multiple Arguments","Must be called with the correct number of arguments.","","",25,800),
("Variadic","N/A","N/A","N/A",26,800),
("Higher Order","May accept functions as an argument.","function <fun-name1>(<fun-name2>) { }","function calculate(sum) { }",27,800),
("Loops","","","",28,800),
("If - else","if statement that contains the use of logical conditions from mathematics.","if (<condition>) { } else if { } else { }","",29,800),
("While","Execute instructions as long as condition is true.","while (<condition>) { }","while (i < 5) {console.log('Hello, World!'); i++;}",30,800),
("Do While","Execute instructions first, then repeats as long as condition is true.","do { <instructions> } while (<condition>);","do { console.log('Hello, World!'); i++;} while (i < 5);",31,800),
("For","Loops instructions with a set value.","for (let i = <value>; i <= <value>; i++) { <instructions> }","for (let i = 4; i <= 4; i++) { console.log(i); }",32,800),
("Case","Case statement that contains the use of multiple logical conditions.","switch (<expression>) { case <value1>: statement1; break; case <value2>: statement2; break; default: statementDefault;}","",33,800),
("","","","",34,800),
("","","","",35,800),
("","","","",36,800),
("Parameter","","","",37,800),
("Single","Able to accept single or multiple values, but can only return one value. Abitrary = N/A","","",38,800),
("Multiple","","","",39,800),
("Abitrary","","","",40,800),
("","","","",41,800),
("Return Mechanism","If you want a function to return something, add a return statement at the end.","return <value>;","",42,800)
;

-----------------------------------------------------------
--
-- Table structure for the  Language table
--

CREATE TABLE  IF NOT EXISTS HTML (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_8`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the HTML table 
-- 

INSERT IGNORE INTO HTML VALUES
('Built-in Data Types','','','',1,900),
('Elements','','','',2,900),
('Pragraphs','Add a paragraph to your website.','<p>//value </p>','<p>A paragraph.</p>',3,900),
('Images','Link images to your website.','<img src= //path alt= //description >','<img src= "my_Pic.jpg" alt= "this is my picture." >',4,900),
('Links','Link a clickable link to your website.','<a href= //website_link >//text</a>','<a href="https://www.WolfGangTeam.com">My Link</a>',5,900),
('Headers','Add a header to your website.','<h1>//text</h1> (up to h6)','<h1>My Header</h1>',6,900),
('Footers','Add a footer to your website.','<footer>//text</footer>','<footer>My Footer</footer>',7,900),
('Titles','What is displayed at the top of the browser tab.','<title>//text</title>','<title>My Website</title>',8,900),
('Favicon','Image displayed next to title. Must add the link code right after the title element.','<title></title><link rel="icon" type="image/x-icon" href= //link>','<title></title><link rel="icon" type="image/x-icon" href= "/images/myFavicon.ico">',9,900),
('Colors','Add color to your element. Must be stated within the elements declaration.','<h1 style=//color>//text</h1>','<h1 style="background-color:Red;">Hello, World!</h1>',10,900),
('','','','',11,900),
('Structured','','','',12,900),
('Lists','List that groups a set of related items.','Unordered List: <ul> <li> //value </li> <li> //value </li> <li> //value </li> </ul> Ordered List: The same as unordered list but instead of using <ul></ul> you use <ol></ol>','<ul> <li> A </li> <li> B </li> <li> C </li> </ul>',13,900),
('Table','A table consisting if information between rows and columns.','<table> <tr> <th> //value </th> </tr> <tr> <th> //value </th> </tr> <tr> <th> //value </th> </tr> </table>','<table> <tr> <th> A </th> </tr> <tr> <th>B </th> </tr> <tr> <th> C </th> </tr> </table>',14,900),
('Maps','N/A','N/A','N/A',15,900),
('hashed map','N/A','N/A','N/A',16,900),
('sorted map','N/A','N/A','N/A',17,900),
('','','','',18,900),
('','','','',19,900),
('','','','',20,900),
('Functions','','','',21,900),
('Regular','N/A','','',22,900),
('Anonymous','','','',23,900),
('Multiple Arguments','','','',24,900),
('Variadic','','','',25,900),
('Higher Order','','','',26,900),
('Loops','','','',27,900),
('If - else','','','',28,900),
('While','','','',29,900),
('Do While','','','',30,900),
('For','','','',31,900),
('Case','','','',32,900),
('','','','',33,900),
('','','','',34,900),
('','','','',35,900),
('Parameter','','','',36,900),
('Single','N/A','','',37,900),
('Multiple','','','',38,900),
('Abitrary','','','',39,900),
('','','','',40,900),
('Return Mechanism','','','',41,900)
;

-----------------------------------------------------------
--
-- Table structure for the Erlang Language table
--

CREATE TABLE  IF NOT EXISTS Erlang (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_9`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the Erlang table 
-- 

INSERT IGNORE INTO Erlang VALUES
("Basics","","","",1,1000),
("Comments","","%","% comments goes here",2,1000),
("End of sentence","",".","fwrite('Hello, World\n').",3,1000),
("","","","",4,1000),
("","","","",5,1000),
("Built-in Data Types","","","",6,1000),
("Varibles","","","",7,1000),
("Primitive","","","",8,1000),
("Terms","A piece of data of any data type","any()","",9,1000),
("Integers","of Number type in Erlang","integer() | float()","25",10,1000),
("Floats","of Number type in Erlang","integer() | float()","3.7",11,1000),
("Char","based of ASCII values","0..16#10ffff","",12,1000),
("Boolean","Boolean data type consists of two reserved atoms: true and false","false | true","(2 =< 3).",13,1000),
("Bit String","Used to store an area of un-typed memory","<<_:_*1>>","<<10,20>>.",14,1000),
("Binaries","Bit strings that consist of a number of bits that are evenly divisible by eight","<<_:_*8>>","",15,1000),
("Reference","A term that is unique among connected nodes","","",16,1000),
("String","Implement as character array","value","hello",17,1000),
("Null","Nothing","[]","",18,1000),
("","","","",19,1000),
("","","","",20,1000),
("Atom","An atom is a literal, a constant with name.","Atoms should begin with a lowercase letter and can contain lowercase and uppercase characters, digits, underscore (_) and the “at” sign (@). We can also enclose an atom in single quotes.","io:fwrite(atom1).",21,1000),
("","","","",22,1000),
("Port Identifier","A port identifier identifies an Erlang port","","",23,1000),
("PID","Process Identifier","","",24,1000),
("","","","",25,1000),
("Structured","","","",26,1000),
("Lists","A list is a compound data type with a variable number of terms","[Term1,...,TermN]","L1 = [a,2,{c,4}].",27,1000),
("Tuple","A tuple is a compound data type with a fixed number of terms","{Term1,...,TermN}","P = {john,24,{june,25}} ,",28,1000),
("Maps","A map is a compound data type with a variable number of key-value associations","#{Key1=>Value1,...,KeyN=>ValueN}","M1 = #{name=>adam,age=>24,date=>{july,29}}.",29,1000),
("Record","A record is a data structure for storing a fixed number of elements.","~record (items)","~record(person, {name, age}).",30,1000),
("Fun","Functional object. Used for the creation of anonymous and higher-order function","fun() -> ..","Fun1 = fun (X) -> X+1 end.",31,1000),
("","","","",32,1000),
("Functions","","","",33,1000),
("Regular","A sequence of expressions","FunctionName(Pattern) -> Body;","fact (0) -> 1",34,1000),
("Anonymous","Essentially functions with no names","fun()","fun() -> io:fwrite('Anonymous').",35,1000),
("Multiple Arguments","Where number of arguments (arity) is greater than 1","FunctionName(Pattern1, Pattern2, ..., PatternN) -> 
Body;","add(X, Y) -> Z = X + Y.",36,1000),
("Guard Sequence","Expressions which will only run when evaluated to true","Name(Pattern11,...,Pattern1N) [when GuardSeq] -> Body;","add(X) when X > 3 -> io:fwrite('~w~n', [X]).",37,1000),
("Higher Order","Functions that use other functions as arguments, or creating new functions.","Check Erlang Language Documentation","",38,1000),
("Tail Recursion","Recursive function","loop() -> ..","loop(N) -> io:format('~w~n', [N]), loop(N+1).",39,1000),
("BIFs","Built-in Functions","Check Erlang Language Documentation","tuple_size((a,b,c))",40,1000),
("","","","",41,1000),
("Recursion","","","",42,1000),
("If - else","Recursion that make Boolean decision based of conditions","if condition -> statement1;
true-> statement2
end."," if 
      A == B -> 
         io:fwrite(""True""); 
      true -> 
         io:fwrite(""False"") 
   end.",43,1000),
("While","Recursion that evaluates its condition to determinite its execution state","while() -> ..","while(L) -> while(L,0).
while([], Acc) -> Acc;",44,1000),
("For","Iteration-based recursion","for() ->","for(N,Term) when N > 0 -> io:fwrite('Hello~n').",45,1000),
("Case","Case statement that can be used to execute expressions based of conditions","case expression of
value1 -> statement#1;
value2 -> statement#2;
valueN -> statement#N
end.
","case A of 
      5 -> io:fwrite('The value of A is 5'); 
      6 -> io:fwrite('The value of A is 6') 
   end.",46,1000),
("","","","",47,1000),
("","","","",48,1000),
("","","","",49,1000),
("Parameter","","","",50,1000),
("Single","Arguments for functions","FunctionName(Pattern) -> ...","search(name) -> ...",51,1000),
("Multiple","","FunctionName(Pattern1 ... PatternN) -> ...","multiply(A, B, C) -> A * B * C.",52,1000),
("Abitrary","","Not supported","",53,1000),
("","","","",54,1000),
("Return Mechanism","Erlang do not explicitly implement return mechanism","","",55,1000),
("","","","",56,1000),
('Keywords','','','',57,1000),
('after','','','',58,1000),
('begin','','','',59,1000),
('bsr','','','',60,1000),
('cond','','','',61,1000),
('if','','','',62,1000),
('or','','','',63,1000),
('try','','','',64,1000),
('and','','','',65,1000),
('bnot','','','',66,1000),
('bxor','','','',67,1000),
('div','','','',68,1000),
('let','','','',69,1000),
('orelse','','','',70,1000),
('when','','','',71,1000),
('andalso','','','',72,1000),
('bor','','','',73,1000),
('case','','','',74,1000),
('end','','','',75,1000),
('not','','','',76,1000),
('recieve','','','',77,1000),
('xor','','','',78,1000),
('band','','','',79,1000),
('bsl','','','',80,1000),
('catch','','','',81,1000),
('fun','','','',82,1000),
('of','','','',83,1000),
('rem','','','',84,1000),
('','','','',85,1000),
("Escape Sequences","","","",86,1000),
("\n","","","",87,1000),
("\d","","","",88,1000),
("\e","","","",89,1000),
("\f","","","",90,1000),
("\n","","","",91,1000),
("\r","","","",92,1000),
("\s","","","",93,1000),
("\t","","","",94,1000),
("\v","","","",95,1000),
("\XYZ","","","",96,1000),
("\YZ","","","",97,1000),
("\Z","","","",98,1000),
("\xXY","","","",99,1000),
("","","","",100,1000),
("Type Conversion","","","",101,1000),
("atom_to_list","","","",102,1000),
("list_to_atom","","","",103,1000),
("binary_to_list","","","",104,1000),
("float_to_binary","","","",105,1000)
;

-----------------------------------------------------------
--
-- Table structure for the Scala Language table
--

CREATE TABLE  IF NOT EXISTS Scala (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_10`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the Scala table 
-- 

INSERT INTO Scala VALUES
('Built-in Data Types','','','',1,1100),
('Varibles','','var VariableName : T = [Initial Value]
* (: T) could be ommitted
* var or val is interchangable
','',2,1100),
('Primitive','','','',3,1100),
('Byte','8 bit signed value. Range from -128 to 127','var VariableName : T = [Initial Value]
','var myByte = 120;',4,1100),
('Short','16 bit signed value. Range -32768 to 32767','var VariableName : T = [Initial Value]
','var myShort = -30221;',5,1100),
('Int','32 bit signed value. Range -2147483648 to 2147483647','var VariableName : T = [Initial Value]
','var myVar = 10; ',6,1100),
('Long','64 bit signed value. -9223372036854775808 to 9223372036854775807','var VariableName : T = [Initial Value]
','var myLong = 9223372036854775807;',7,1100),
('Float','32 bit IEEE 754 single-precision float','var VariableName : T = [Initial Value]
','var myVar = 2.5;',8,1100),
('Double','64 bit IEEE 754 double-precision float','var VariableName : T = [Initial Value]
','var myDouble : Double = 88.88;',9,1100),
('Char','16 bit unsigned Unicode character. Range from U+0000 to U+FFFF','var VariableName : T = [Initial Value]
','var myChar = "c";',10,1100),
('Boolean','Either the literal true or the literal false','var VariableName : T = [Initial Value]
','var myBool = true;',11,1100),
('String','A sequence of Chars','var VariableName : T = [Initial Value]
','val myVal = Hello World.;',12,1100),
('Unit','Corresponds to no value','var VariableName : T = [Initial Value]
','',13,1100),
('Null','null or empty reference','var VariableName : T = [Initial Value]
','',14,1100),
('Nothing','The subtype of every other type; includes no values','var VariableName : T = [Initial Value]
','',15,1100),
('Any','The supertype of any type; any object is of type Any','var VariableName : T = [Initial Value]
','',16,1100),
('AnyRef','The supertype of any reference type','var VariableName : T = [Initial Value]
','',17,1100),
('','','','',18,1100),
('','','','',19,1100),
('Structured','','','',20,1100),
('Lists','A collection of data of the same type','val LIstName : List[T] = List(items)','val fruit: List{String] = List(apples, oranges, pears)',21,1100),
('Arrays','Fixed-size sequential collection of elements of the same type','var z:Array[String] = new Array [String](size)

var z = new Array [String](size)','var z = Array(Zara, Nuha, Ayan)',22,1100),
('Sets','A set is a collection of pairwise different elements of the same type.','var s : Set[T] = Set(items)','var s = Set(1,3,5,7)',23,1100),
('Vectors','NA','','',24,1100),
('Tuples','Immutable collection of objects from different types','var TupleName = new TupleN(items)

var TupleName = (items)','var t = (1, helllo, Console)',25,1100),
('Options','Scala Option[ T ] is a container for zero or one element of a given type','','',26,1100),
('Iterators','An iterator is not a collection, but rather a way to access the elements of a collection one by one.','val IteratorName = Iterator(items)','val it = Iterator(a,number, of, words)',27,1100),
('Maps','A Map is a collection of key/value pairs. Any value can be retrieved based on its key.','var MapName:Map[T} = Map(items)','val colors = Map(red -> #FF0000, azure -> #F0FFFF,peru -> #CD853F)',28,1100),
('','','','',29,1100),
('','','','',30,1100),
('','','','',31,1100),
('Functions','','','',32,1100),
('Regular','A function is a group of statements that perform a task','Declaration
def functionName ([list of parameters]) : [return type]

Definition
def functionName ([list of parameters]) : [return type] = {
function body
return [expr]
}
','def printSomething() = {
println(Hello World);
}',33,1100),
('Anonymous','Anonymous functions in source code are called function literals and at run time, function literals are instantiated into objects called function values.','See Scala Documentation','var inc = (x:Int) => x+1',34,1100),
('Multiple Arguments','A function could have multiple arguments','def functionName ([list of parameters]) : [return type]','
def addInt( a:Int, b:Int ) : Int = {
var sum:Int == 0
sum = a + b
return sum
}',35,1100),
('Variadic','Functions that take in an abitrary numbers of arguments, specified with the & ampersand symbol','def functionName ([list of parameters]) : [return type]','',36,1100),
('Higher Order','HOFs are functions that take in other functions as arguments','def functionName ([list of parameters]) : [return type]','def hugePromotion(salaries: List[Double]): List[Double] = salaries.map(salary => salary * salary)',37,1100),
('Loops','','','',38,1100),
('If - else','Recursion that make Boolean decision based of conditions','
if(Boolean_expression){
//Executes when the Boolean expression is true
} else{
//Executes when the Boolean expression is false
}','  if( x < 20 ){
         println(This is if statement);
      } else {
         println(This is else statement);
      }

',39,1100),
('While','Recursion that evaluates its condition to determinite its execution state','while(condition){
statement(s);
}','while( a < 20 ){
         println( Value of a:  + a );
         a = a + 1;
      }',40,1100),
('Do While','Like a while loop, except it would execute the statements first before evaluating the conditions','do {
statement(s);
}
while( condition );','do {
         println( Value of a:  + a );
         a = a + 1;
      }
      while( a < 20 )',41,1100),
('For','Iteration-based recursion','for( var x <- Range ){
statement(s);
}',' for( a <- 1 to 10){
         println( Value of a:  + a );
      }

',42,1100),
('Case','Case statement that can be used to execute expressions based of conditions','x match {
case 1 => val1
case 2 -> val2
case _ => val3
}','def matchTest(x: Int): String = x match {
  case 1 => one
  case 2 => two
  case _ => other
}',43,1100),
('','','','',44,1100),
('Parameter','','','',45,1100),
('Single','Arguments for functions','def functionName(arg : T) ','def justOne(America : String)',46,1100),
('Multiple','Arguments for functions','def functionName(arg1: T, arg2 : T, ... )','def multiiply ( a:Int, b:Int, c:Int)',47,1100),
('Abitrary','Arguments for functions','def functionName (arg: _*)','def printStrings( Names : String*)',48,1100),
('','','','',49,1100),
('','','','',50,1100),
('Return Mechanism','Specified by the return keyword','return value','
def lookUpA( a:Int ) : Int = {return A}',51,1100),
('','','','',52,1100),
('Keywords','','','',53,1100),
('abstract','Reserved word for Scala','','',54,1100),
('case','Reserved word for Scala','','',55,1100),
('catch','Reserved word for Scala','','',56,1100),
('class','Reserved word for Scala','','',57,1100),
('def','Reserved word for Scala','','',58,1100),
('do','Reserved word for Scala','','',59,1100),
('else','Reserved word for Scala','','',60,1100),
('extends','Reserved word for Scala','','',61,1100),
('FALSE','Reserved word for Scala','','',62,1100),
('final','Reserved word for Scala','','',63,1100),
('finally','Reserved word for Scala','','',64,1100),
('for','Reserved word for Scala','','',65,1100),
('forSomme','Reserved word for Scala','','',66,1100),
('if','Reserved word for Scala','','',67,1100),
('implicit','Reserved word for Scala','','',68,1100),
('import','Reserved word for Scala','','',69,1100),
('lazy','Reserved word for Scala','','',70,1100),
('match','Reserved word for Scala','','',71,1100),
('new','Reserved word for Scala','','',72,1100),
('Null','Reserved word for Scala','','',73,1100),
('object','Reserved word for Scala','','',74,1100),
('override','Reserved word for Scala','','',75,1100),
('package','Reserved word for Scala','','',76,1100),
('private','Reserved word for Scala','','',77,1100),
('..','Reserved word for Scala','','',78,1100),
('','','','',79,1100),
('','','','',80,1100),
('','','','',81,1100),
('','','','',82,1100),
('MORE','','','',83,1100),
('Operators / Identifiers','Operator, Mixed, Literal Identifiers','=+ ++ ::: <?> :>
unary_+, myvar_=
`x` `<clinit>` `yield`','',84,1100),
('','','','',85,1100),
('Comments','single-line','//','// example comment',86,1100),
('Comments','multi-line','/* ... */','/* line 1 comment
oh its line 2 now
guess, its line 3 */',87,1100),
('Newline characters','print a new line','println(s)','var s = hello; println(s)',88,1100),
('','','','',89,1100),
('','','','',90,1100),
('Escape characters','','','',91,1100),
('Backspace BS','\u0008','\b','',92,1100),
('Horizontal Tab HT','\u0009','\t','',93,1100),
('Newline','\u000a','\n','',94,1100),
('Formfeed FF','\u000c','\f','',95,1100),
('Carriage Return CR','\u000d','\r','',96,1100),
('Double Quote ','\u0022','\'','',97,1100),
('Single Quote','\u0027','\'','',98,1100),
('Backlash \'','\u0005c','\\','',99,1100)
;

-----------------------------------------------------------
--
-- Table structure for the Ruby Language table
--

CREATE TABLE  IF NOT EXISTS Ruby (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_11`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the Ruby table 
-- 

INSERT IGNORE INTO Ruby VALUES
('Data Types','','','',1,1100),
('Variables','','','',2,1100),
('','','','',3,1100),
('Numbers','','','num = 5.98',4,1100),
('Integers','An integer is simply a sequence of digits','','',5,1100),
('Fixnum','32 or 64 bits','','num = 64',6,1100),
('Bignum','used for bigger numbers','','numBig = 8888',7,1100),
('Floats','Numbers with decimal points','','floatNum = 2.5',8,1100),
('','','','',9,1100),
('Boolean','Represent 2 states: true or false','','TRUE',10,1100),
('Strings','A sequence of characters','','Hello, World!!',11,1100),
('Hashes','An array of key/value pairs','','colors = { red => 0xf00, green => 0x0f0, blue => 0x00f }',12,1100),
('Arrays','An array stores data or list of data','','random = [ fred, 10, 3.14, This is a string, last element, ]',13,1100),
('Symbols','light-weight strings','','domains = {:sk => GeeksforGeeks, :no => GFG, :hu => Geeks}',14,1100),
('','','','',15,1100),
('','','','',16,1100),
('','','','',17,1100),
('','','','',18,1100),
('','','','',19,1100),
('Structured','','','',20,1100),
('Arrays','Fixed-size sequential collection of elements of the same type','arrName = Array.new(arrSize)
arrName = Array[items]','myTools = Array.new(5) nums = Array[1,2,3,4,5]',21,1100),
('Hashes','A Hash is a collection of key-value pairs','hashName = Array.new(hashName) hashName = Hash[items]','months = Hash.new(hashName)
H = Hash[a => 100, b => 200]',22,1100),
('','','','',23,1100),
('','','','',24,1100),
('','','','',25,1100),
('','','','',26,1100),
('','','','',27,1100),
('','','','',28,1100),
('','','','',29,1100),
('','','','',30,1100),
('Methods','','','',31,1100),
('Regular','Ruby methods are used to bundle one or more repeatable statements into a single unit.','def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
   expr..
end
','def test(a1 = Ruby, a2 = Perl)
   puts The programming language is #{a1}
   puts The programming language is #{a2}
end',32,1100),
('Anonymous','Anonymous methods in source code are called function literals and at run time, method literals are instantiated into objects called method values.','See Ruby documentation for lambdas and inline methods','my_array.each{ |item| puts item }',33,1100),
('Multiple Arguments','Methods could have multiple arguments','def method_name (var1, var2)
   expr..
end','def printNum(a1, a2)
   puts The first number is #{a1}
   puts The second number is #{a2}
end',34,1100),
('Variadic','Methods that take in an abitrary numbers of arguments','def method_name(*varList) expr.. end','def studentGen(*names) puts Student names: #{names} end',35,1100),
('Higher Order','HOFs are methods that take in other methods as arguments','def method_name(inputMethod) expr.. return outputMethod end','def IO(innerMethod)
puts Got that method in IO
outerMethod = innerMethod
return outerMethod
end',36,1100),
('Loops','','','',37,1100),
('If - else','Recursion that make Boolean decision based of conditions','if conditional [then]
   code...
[elsif conditional [then]
   code...]...
[else
   code...]
end','x = 1
if x > 2
   puts x is greater than 2
elsif x <= 2 and x!=0
   puts x is 1
else
   puts "I cant guess the number"
end',38,1100),
('While','Recursion that evaluates its condition to determinite its execution state','while conditional [do]
   code
end','
$i = 0
$num = 5

while $i < $num  do
   puts(Inside the loop i = #$i )
   $i +=1
end',39,1100),
('Do While','Like a while loop, except it would execute the statements first before evaluating the conditions','code while condition

OR

begin 
  code 
end while conditional','$i = 0
$num = 5
begin
   puts(Inside the loop i = #$i )
   $i +=1
end while $i < $num',40,1100),
('For','Iteration-based recursion','for variable [, variable ...] in expression [do]
   code
end
','for i in 0..5
   puts Value of local variable is #{i}
end
',41,1100),
('For..in','Iteration-based recursion','(expression).each do |variable[, variable...]| code end
','for i in 0..5
   if i > 2 then
      break
   end
   puts Value of local variable is #{i}
end
',42,1100),
('Case','Case statement that can be used to execute expressions based of conditions','case x
when condition1
do_something
when condition 2
do_something
else
do_something
end','case capacity
when 0
  You ran out of gas.
when 1..20
  The tank is almost empty. Quickly, find a gas station!
when 21..70
  You should be ok for now.
when 71..100
  The tank is almost full.
else
  Error: capacity has an invalid value (#{capacity})
end',43,1100),
('Until','Executes code while conditional is false. An until statements conditional is separated from code by the reserved word do, a newline, or a semicolon.','until conditional [do]
   code
end
','$i = 0
$num = 5

until $i > $num  do
   puts(Inside the loop i = #$i )
   $i +=1;
end',44,1100),
('Until Modified','Executes code while conditional is false.

If an until modifier follows a begin statement with no rescue or ensure clauses, code is executed once before conditional is evaluated.','code until conditional

OR

begin
   code
end until conditional','$i = 0
$num = 5
begin
   puts(Inside the loop i = #$i )
   $i +=1;
end until $i > $num
',45,1100),
('Break','Terminates the most internal loop. Terminates a method with an associated block if called within the block (with the method returning nil).','break
','for i in 0..5
   if i > 2 then
      break
   end
   puts Value of local variable is #{i}
end
',46,1100),
('Next','Jumps to the next iteration of the most internal loop. Terminates execution of a block if called within a block (with yield or call returning nil).','next','for i in 0..5
   if i < 2 then
      next
   end
   puts Value of local variable is #{i}
end
',47,1100),
('Redo','Restarts this iteration of the most internal loop, without checking loop condition. Restarts yeild or call if called within a block.','redo','for i in 0..5
   if i < 2 then
      puts Value of local variable is #{i}
      redo
   end
end
',48,1100),
('Retry','If retry appears in rescure clause of begin expression, restart fro the beginning of the beginn body.','begin
   do_something # exception raised
rescue
   # handles error
   retry  # restart from beginning
end

for i in 1..5
   retry if some_condition # restart from i == 1
end
','for i in 0..5
   retry if i > 2
puts Value of local variable is #{i}
end',49,1100),
('','','','',50,1100),
('Parameter','','','',51,1100),
('Single','When only 1 argument is passed','def method_name(arg)','def printLocation(address)',52,1100),
('Multiple','When multiple argument are passed','def method_name(arg1, arg2, ...)','def whichIsBetter(dog, cat, mouse, zebra)',53,1100),
('Abitrary','When an unknown number of arguments is passed','def method_name(*args)','def zoology(*animals)',54,1100),
('','','','',55,1100),
('','','','',56,1100),
('Return Mechanism','Specified by the return keyword','return expr...','return 1,2,3',57,1100),
('','','','',58,1100),
('','','','',59,1100),
('','','','',60,1100),
('Keywords','','','',61,1100),
('abstract','','','',62,1100),
('case','','','',63,1100),
('catch','','','',64,1100),
('class','','','',65,1100),
('def','','','',66,1100),
('do','','','',67,1100),
('else','','','',68,1100),
('extends','','','',69,1100),
('FALSE','','','',70,1100),
('final','','','',71,1100),
('finally','','','',72,1100),
('for','','','',73,1100),
('forSome','','','',74,1100),
('if','','','',75,1100),
('implicit','','','',76,1100),
('import','','','',77,1100),
('lazy','','','',78,1100),
('match','','','',79,1100),
('new','','','',80,1100),
('Null','','','',81,1100),
('object','','','',82,1100),
('override','','','',83,1100),
('package','','','',84,1100),
('private','','','',85,1100),
('...','','','',86,1100),

('MORE','','','',102,1100),
('Operators / Identifiers','Operator, Mixed, Literal Identifiers','','',103,1100),
('','','','',104,1100),
('Comments','single-line','#','',105,1100),
('','multi-line','=begin text =end','begin "Hello, World" =end',106,1100),
('Newline characters','print a new line','','',107,1100),
('','','','',108,1100),
('','','','',109,1100),
('Escape characters','','','',110,1100),
('Characters','Name','Execution Code','',111,1100),
('\t','tab','0x09','',112,1100),
('\n','newline','0x0a','',113,1100),
('\r','carriage return','0x0d','',114,1100),
('\f','form feed','0x0c','',115,1100),
('\b','backspace','0x08','',116,1100),
('\a','bell','0x07','',117,1100),
('\e','escape','0x1b','',118,1100),
('\s','whitespace','0x20','',119,1100),
('\nnn','character','nnn','',120,1100),
('\xnn','character','nn','',121,1100),
('\cx','control x','','',122,1100),
('\C-x','control x','','',123,1100),
('\M-x','meta x','c | 0x80','',124,1100),
('\M-\C-x','meta control x','','',125,1100),
('\x','character x itself','','',126,1100),
('','','','',127,1100),
('','','','',128,1100),
('','','','',129,1100),
('Variable Types','','','',130,1100),
('Symbol','Type of Variable','','',131,1100),
('[a-z] or _','Local Variable','','',132,1100),
('@','Instance Variable','','',133,1100),
('@@','Class Variable','','',134,1100),
('$','Global Variable','','',135,1100),
('','','','',164,1100),
('\b, \t, \n, \f, \r, \\','','','',165,1100),
('','','','',166,1100),
('Compilation','','','',167,1100),
('Filename Extension','rb','','',168,1100),
('','','','',169,1100),
('Predefined Variables','','','',170,1100),
('$!','It holds the exception information message set by the last ‘raise’. Alias of $ERROR_INFO.','','',171,1100),
('$@','It holds an array of the backtrace of the last exception raised. Alias of $ERROR_POSITION.','','',172,1100),
('$/','The input record separator, by default newline. If it is set to nil then the whole file will be read at once. Alias of $INPUT_RECORD_SEPARATOR.','','',173,1100),
('$\'','The output separator for the print and IO#write, nil by default. Alias of $OUTPUT_RECORD_SEPARATOR','','',174,1100),
('$,','The output field separator for the print and default separator for Array#join. Alias of $OUTPUT_FIELD_SEPARATOR.','','',175,1100),
('$;','It is the default separator for String#split. Alias of $FIELD_SEPARATOR.','','',176,1100),
('$.','It holds the current input line number read from the last file. Alias of $INPUT_LINE_NUMBER.','','',177,1100),
('$<','An object that gives access to the concatenation of the content of all the files given as a command line argument or $stdin. Alias of $DEFAULT_INPUT.','','',178,1100),
('$>','It is the destination of output for kernel.print and kernel.printf, the default value is $stdout. Alias of $DEFAULT_OUTPUT.','','' ,179,1100),
('$&','The string matched by the last pattern match. Alias of $MATCH.','','',180,1100),
('$`','The string to the left of the last pattern match. Alias of $PREMATCH.','','',181,1100),
('$`','The string to the right of the last pattern match. Alias of $POSTMATCH.','','',182,1100),
('$+','The string correlated to the last matched group in the last successful pattern matched. Alias of $LAST_PAREN_MATCH.','','',183,1100),
('$1-$9','The string matched in the nth group of the last successful pattern matched.','','',184,1100),
('$_','The last input line read by get or readline in the current scope. It is a local variable. Alias of $LAST_READ_LINE.','','',185,1100),
('$~','It holds the information about the last match in the current scope. It is a local variables. Alias of $LAST_MATCH_INFO.','','',186,1100),
('$-p','It is true if option -p is set (loop mode is on). It is read-only variable.','','',187,1100),
('$-l','It is true if option -l is set (line-ending process is on). It is read-only variable.','','',188,1100),
('$-i','This variable hold the extension if in-place-edit mode is set otherwise nil.','','',189,1100),
('$-a','It is true if option -a is set (autosplit mode is one). It is read-only variable.','','',190,1100),
('$-d','The level of -d is switch. Alias of $DEBUG.','','',191,1100),
('$-v','The verbose flag. It is set by the -v switch. Alias of $VERBOSE.','','',192,1100),
('$-K','The character encoding of the source code. Alias of $KCODE.','','',193,1100),
('0','It contains the name of the script being executed.','','',194,1100),
('$$','The process number of the current Ruby program being executed. Alias of $PROCESS_ID.','','',195,1100),
('$?','The status of the last child process terminated. Alias of $CHILD_STATUS.','','',196,1100),
('$:','Load paths for programs and binary module by load or required. Alias of $LOAD_PATH.','','',197,1100),
('$FILENAME','The name of current input file reads from $<. Same as $<.filename.','','',198,1100),
('$stderr','Current standard error output.','','',199,1100),
('$stdin','Current standard input.','','',200,1100),
('$stdout','Current standard output.','','',201,1100),
('$=','Flag for case-sensitive, nil by default.Alias of $IGNORECASE','','',202,1100),
('$*','Command line argument given for the program, also known as ARGV.Alias of ARGV.','','',203,1100),
('$”','Array contains the module name loaded by require.Alias of $LOAD_FEATURES.','','',204,1100),
('','','','',205,1100),
('Predefined Constants','','','',206,1100),
('TRUE','Equivalent to true.','','',207,1100),
('FALSE','Equivalent to false.','','',208,1100),
('NIL','Equivalent to nil.','','',209,1100),
('STDIN','Standard input and default value of $stdin.','','',210,1100),
('STDOUT','Standard output and default value of $stdout.','','',211,1100),
('STDERR','Standard output error and default value of $stderr.','','',212,1100),
('RUBY_VERSION','A string shows the version of Ruby interpreter.','','',213,1100),
('RUBY_PLATFORM','A string shows the platform of Ruby interpreter.','','',214,1100),
('RUBY_RELEASE_DATE','A string shows the release date of Ruby interpreter.','','',215,1100),
('DATA','The file object of the program, pointing just after the __END__. And not defined if __END__ is not present in the program.','','',216,1100),
('ARGV','An array holds the command-line arguments passed to the program. Alias of $*.','','',217,1100),
('ARGF','An object that gives the access to the virtual concatenation of files passed as command-line arguments. Alias of $<.','','',218,1100),
('ENV','It is a hash-like object, contains current environment variables.','','',219,1100)
;

-----------------------------------------------------------
--
-- Table structure for the PHP Language table
--

CREATE TABLE  IF NOT EXISTS PHP (
  Name VARCHAR(255) NOT NULL,
  Definition VARCHAR(255) NULL,
  Syntax VARCHAR(255) NULL,
  Example VARCHAR(255) NULL,
  ID INT NOT NULL,
  Reference INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `References_idx` (`Reference` ASC) VISIBLE,
  CONSTRAINT `References_12`
  FOREIGN KEY (`Reference`)
  REFERENCES `WOLFGANG`.`LanguageIndex` (`References`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
);

--
-- Dumping data into the PHP table 
-- 

INSERT IGNORE INTO PHP VALUES
('Built-in Data Types','','','',1,1300),
('Varibles','"containers" of information','','',2,1300),
('Primitive','','','',3,1300),
('Integers','Whole numbers','$name = val;','$number = 25;',4,1300),
('Floating point','Decimal numbers','','$decimal = 5.8;',5,1300),
('Char','Just a single character, based of ASCII code','','$char = "c";',6,1300),
('Boolean','True / False','','$bool = true;',7,1300),
('String','Some sort of text','','$text = "Hello World";',8,1300),
('NULL','Just a NULL character','','',9,1300),
('','','','',10,1300),
('Structured','','','',11,1300),
('Array','An array stores multiple values in one single variable','$name = array(&items);','$cars = array("Volvo","BMW","Toyota");',12,1300),
('Class','Template for objects','class ClassName { }','class Car {
  public $color;
  public $model;
  public function __construct($color, $model) {
    $this->color = $color;
    $this->model = $model;
  }
  public function message() {
    return ""My car is a "" . $this->color . "" "" . $this->model . ""!"";
  }
}
',13,1300),
('Object','Instance of a class','$name = new ObjectName()','$myCar = new Car("black", "volvo");',14,1300),
('','','','',15,1300),
('','','','',16,1300),
('','','','',17,1300),
('','','','',18,1300),
('','','','',19,1300),
('','','','',20,1300),
('Functions','','','',21,1300),
('User Defined','A user-defined function declaration starts with the word "function"','function functionName() {
  code to be executed;
} 
','function writeMsg() {
  echo ""Hello world!"";
}',22,1300),
('Built-in','Over 1000 Built-in Functions within the PHP library and various online open sources','See PHP Documentation','See PHP Documentation',23,1300),
('','','','',24,1300),
('','','','',25,1300),
('','','','',26,1300),

('Loops','Recursion that make Boolean decision based of conditions','','',28,1300),
('If - else','Recursion that evaluates its condition to determinite its execution state','if (condition) {
  code to be executed if condition is true;
} else {
  code to be executed if condition is false;
} 
','$t = date(""H"");

if ($t < ""20"") {
  echo ""Have a good day!"";
} else {
  echo ""Have a good night!"";
}',29,1300),
('While','Like a while loop, except it would execute the statements first before evaluating the conditions','','',30,1300),
('Do While','Iteration-based recursion','','',31,1300),
('For','Case statement that can be used to execute expressions based of conditions','','',32,1300),
('Switch','Use the switch statement to select one of many blocks of code to be executed.','switch (n) {
  case label1:
    code to be executed if n=label1;
    break;
  case label2:
    code to be executed if n=label2;
    break;
  case label3:
    code to be executed if n=label3;
    break;
    ...
  default:
    code to be executed if n is different from all labels;
} ','$favcolor = ""red"";

switch ($favcolor) {
  case ""red"":
    echo ""Your favorite color is red!"";
    break;
  case ""blue"":
    echo ""Your favorite color is blue!"";
    break;
  case ""green"":
    echo ""Your favorite color is green!"";
    break;
  default:
    echo ""Your favorite color is neither red, blue, nor green!"";
}',33,1300),
('','','','',34,1300),
('','','','',35,1300),
('','','','',36,1300),
('Parameter','A function could have a single, multiple or an abitrary numbers of parameter(s)','','',37,1300),
('Multiple','','function functionName($arg1, $arg2, ...) {}','function add($a, $b, $c) {}',39,1300),
('Abitrary','','function functionName(...$arg) {}','function printArray(...$val) {}',40,1300),
('','','','',41,1300),
('Return Mechanism','Determines the outpui of a function which is specified by the "return" keyword','return $name;','return $a + $b;',42,1300),
('','','','',43,1300),
('','','','',44,1300),
('Compilation','','','',45,1300),
('File extension','','.php','',46,1300),
('Comments','Single-line','// comment1
# comment2','// Make the following changes
# TODO',47,1300),
('','Multi-line','/* something */','/* TCSS 422 UWT 
Spring 2022 Program Header */

',48,1300)
;

-----------------------------------------------------------
