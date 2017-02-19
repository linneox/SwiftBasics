/*
	- Arrays: Ordered collections of values.
	- Sets: Unordered collections of unique values. 
	- Dictionaries: Unordered collections of key-value associations. 
	- Swift String, Bool, Int, Double are hashable by default.
	* Hashing

*/


// Array Type Syntax (Two ways, both same)
var namesList1:Array<String> = ["Johnny", "German", "Marcus"]
let namesList2:[String] = ["Dennis", "James", "Hicks"]
print(namesList1[2])																								// Marcus
print(namesList2[1])																								// James


// Creating an Empty Array and Adding
var someInts = [Int]()																								// Creates an empty array
print("Number of elements in Array: \(someInts.count)")
someInts.append(3)
print("Array element value: \(someInts[0])")
print("Number of elements in Array: \(someInts.count)")
someInts = []
print("Number of elements in Array: \(someInts.count)")


// Creating an Array with a Default value and Displaying Items
var threeDoubles = Array(repeating: 2.0, count: 3)
var count:Int = 1

for INDEX in threeDoubles {
	print("Element #\(count): \(INDEX)")
	count += 1
}


// Creating an Array by Adding Two Arrays Together
var listOne:Array<Int> = Array(repeating: 2, count: 3)
var listTwo:Array<Int> = Array(repeating: 4, count: 3)
listTwo += listOne
print("Here is the array: \(listTwo)")


// Creating an Array with an Array Literal 
var myDevices:[String] = ["iPhone 3GS", "iPhone 4", "iPhone 5", "iPhone 6 Plus", "iPhone 7"]
print("Here are my mobile devices: \(myDevices)")


// Accessing and Modifying an Array
var randomInts:Array<Int> = [1, 2, 3, 4, 5]
print("Number of elemets in the array: \(randomInts.count)")

if randomInts.isEmpty {
	print("The array is empty.")
} else {
	print("The array is not empty.")
}

print(randomInts)                           																		// Prints array starting values                           
 
randomInts.append(6)                        																		// Adds a 6 to end of array
print(randomInts)

randomInts += [7]                          											 								// Adds a 7 to end of array
print(randomInts)

randomInts += [8, 9, 10]                    																		// Adds values to end of array
print(randomInts)

randomInts[4...6] = [11, 12]                																		// Indices 4-6 values removed. Indices 4-5 = 11, 12 
print(randomInts)

randomInts.insert(20, at: 0)                																		// Inserting into specified INDEX
print(randomInts)

randomInts.remove(at: 1)                    																		// Removes item at specified INDEX
print(randomInts)

randomInts.removeLast()																								// Removes last element of array
	
for (index, value) in randomInts.enumerated() { 																	// .enumerated returns tuple of composed of
	print("Element #\(index+1): \(value)")																			// integer and the element value. 
}


// Set Type Syntax 
var letters = Set<Character>()	// Empty Set
print("letters is of type Set<Character> with \(letters.count) items.")


letters.insert("a") // Not Empty
letter = []			// Empty 


// Creating a Set with an Array Literal 
var musicGenres:Set<String> = ["Synthwave", "Indie", "Electronica"]

print("I have \(musicGenres.count) favorite music genres.")

if musicGenres.isEmpty {
	print("No favorite genres in set.")
} else {
	print("Genres available in set.")
}

musicGenres.insert("Jazz")

musicGenres.removeAll() // Removes all items in a set.
musicGenres.contains()	// Check whether an item is in the set.







var genres:Set<String> = ["Synthwave", "Jazz", "Electronica"]
let endl:Character = "\n"


let gnreCnt = genres.count
print("Number of genres: \(gnreCnt)")
print(endl)

// Checking if set is empty
if genres.isEmpty {
    print("No genres in the set.")
} else {
    print("Genres available.")   
}
print(endl)

// Insert an item into a set
genres.insert("Indie")


// Enumerate set to display numbers & values
for (item, value) in genres.enumerated() {
    print("Genre #\(item+1): \(value)")
}
print(endl)


// Searching for an item in the set
if genres.contains("Synthwave") {
    print("Your username is RetroSynth")
} else {
    print("No username available.")
}
print(endl)

// .intersectin()
// .symmetricDifference()
// .union()
// .subtracting()

let firstSet:Set = [1,2,3,4,5,6,7,8,9,0]
let secondSet:Set = [5,4,3,2,1]
let thirdSet:Set = [7,8,9,0]

// isSubset(of: )
// isSuperset(of: )
// isStrictSubset(of: )
// isStrictSuperSet(of: )
// isDisjoint(of: )
if secondSet == thirdSet {
    print("The two sets are equal.")
} else {
    print("The two sets are not equal.")
}


var airports:[String:String] = ["YYZ": "Toronto Pearson", "DUB":"Dublin"]


// Dictinary .count 
print("Number of Airports: \(airports.count)")

if airports.isEmpty {
    print("The Dictionary is Empty.")
} else {
    print("The Dictionary is not Empty.")
}

// Adding new item 
airports["LHR"] = "London"

// Change a vlue of a key 
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("Previous Value: \(oldValue)")
}



if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName)")
} else {
    print("That airport name is not in the dictionary.")
}



airports["APL"] = "Apple International"
airports["APL"] = nil

if airports["APL"] == nil {
    print("No value for that key.")
}


// .removeValue()

let airportCodes = [String](airports.keys)
// airportCodes is ["YYZ", "LHR"]
 
let airportNames = [String](airports.values)
// airportNames is ["Toronto Pearson", "London Heathrow"]