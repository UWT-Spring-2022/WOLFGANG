INSERT IGNORE INTO JavaScript VALUES
("Built-in Data Types","","","",1,800),
("Varibles","May contain global and local variables. May use 'const' instead of 'var' for variables that will never change once assigned. You may also use 'let' when you want a variable that is block scoped.","","",2,800),
("Primitive","","","",3,800),
("Integers","Whole number.","var <var-name> = <value>; OR const <var-name> = <value>;","var x = 1;",4,800),
("Floating point","Whole or decimal number.","","var x = 1.346;",5,800),
("Char","N/A","","N/A",6,800),
("Boolean","Logical variable having two values: true and false.","","var myBool = true; OR var myBool = false;",7,800),
("String","Some kind of text.","","var myString = 'Hello, World!'",8,800),
("Nil","Null value.","","var myNull = null",9,800),
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
