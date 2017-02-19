// A String Literal 
let sectionName = "Strings and Characters"				// Implicit Swift Type Inference
let myName:String = "Johnathon A. Valles"				// Explicit Type


// How to Initialize an Empty String 
var emptyString1 = ""									// Empty String Lieral
var emptyString2 = String()								// String Initializer

// How to Check if Sting is Empty 
var today = "Thursday"
var tomorrow = "Friday"
var yesterday = ""

if yesterday.isEmpty {									// String must be initialized with
	print("String is empty")							// something for isEmpty to work. 
} else {
	print("String is not empty.")
}


// String Mutability 
var MustableString:String = "This is mutable."			// String Variable
let ImmutableString:String = "This is immutable."		// String Constant


// Working with Characters 
var message = "Hello World"
for char in message.characters {						// String .characters property
	print(char, terminator:"" /*or \n or " "*/)
}

let A1:Character = "!"									// A Single Character Variable

var CharArray:[Character] = ["O", "r", "a", "x"]		// Character Array
var StringFrmArray = String(CharArray)					// Array passed to constructor
print(StringFrmArray)


// Concatenating Strings and Characters  
let songName1 = "Missing"
let artist1 = "Orax"
var selection1 = artist1 + " - " + songName1			// Assignment Operator
var selection2 = artist1
selection2 += " - " + songName1							// Addition Assignment Operator
var selection3 = artist1
selection3.append(" - ")								// String .append property
selection3.append(songName1)
print(selection1)
print(selection2)
print(selection3)


// String Interpolation 
let  birthYear:Int = 1997
var presentYear:Int = 2016
print("You were born in \(birthYear)")
print("\(presentYear) minus \( birthYear)" + 
           " is \(presentYear - birthYear)")


// Counting Characters 
let path:String = "W:/2016ALBUM/"
var sizeOf:Int = path.characters.count 
print(sizeOf)


// Accessing and Modifying a String 
let elli0t:String = "fsociety"
let firstLetter = elli0t.startIn dex 
print(elli0t[firstLetter], terminator: ".")
let lastIndex = elli0t.index(before: elli0t.endIndex)
print(elli0t[lastIndex], terminator: ".")
let inBetween = elli0t.index( elli0t.startIndex, offsetBy: 4)
print(elli0t[inBetween], terminator: ".")


// Inserting and Removing 
var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex)
print(welcome)
welcome.insert(contentsOf:" there".characters, at: welcome.index(before: welcome.endIndex))
print(welcome)
welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)