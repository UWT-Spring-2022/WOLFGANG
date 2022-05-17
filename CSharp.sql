INSERT IGNORE INTO CSharp VALUES
("Built-in Data Types","","","",1,400),
("Varibles","","(see below)","(see below)",2,400),
("Primitive","","","",3,400),
("Integers","Whole numbers","type variableName = value","int x = 2",4,400),
("Double/Floating point","Decimal numbers","","float y = 3.142F",5,400),
("Char","Just a single character, based of ASCII code","","char c = "M"",6,400),
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
("hashed map","keys support hashCode and is created using the hash-map function","Null","Null",17,400),
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
("Single","A function could have a single, multiple or an abitrary numbers of parameter(s)","<modifiers> <return-type> <method-name> 
<parameter-list>","public int myNumbers(int x){}",30,400),
("Multiple","","<modifiers> <return-type> <method-name> <parameter-list>","public int AddNumbers(int x, int y){}",31,400),
("Abitrary","","","",32,400),
("","","","",33,400),
("Return Mechanism","To return a value, you can use a primitive data type.","<modifiers> <return-type> <method-name> <parameter-list> {}", "return a + b",34,400)
;