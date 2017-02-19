//******************************************************* 
for index in 1...5 {
	print("\(index*5)", terminator: "  ")
}
//*******************************************************
/*
	- The For-In loop utilizes the closed range operator
	to print out the multiples of 5 from 1 to 5. 
*/
//*******************************************************





//*******************************************************
let base = 3
let power = 10 
var answer = 1

for _ in 1..<power {
	answer *= base
	print(answer, terminator: "-->")
}

print(answer*base)

//*******************************************************
/*
	- An underscore can be used in place of a counter
	varible is the count values are not needed. 
	- For-In loop prints the powers of 3 from 1 to 10. 
*/
//*******************************************************






//*******************************************************
let artists:[String] = ["Lazerhawk", "Flume", "Orax"]

for item in artists {
	print("Listen to \(item)")
}

print(" \nHere are the artist in chronological order:\n")

for (val, name) in artists.enumerated() {
	print("\t\(val+1)) \(name)")
}
//*******************************************************
/*
	- String array with 3 elements. 
	- First For-In loop iterates through elements 
	and prints them to the console. 
	- Second For-In loop uses the .enumerate() method to
	return a tuple. Tuple values are decomposed and a 
	number is printed along with the array element.
*/
//*******************************************************






//*******************************************************
var userAges:Dictionary<String,Int> = [
	"John":19,
	"Marcus":19,
	"Darlene":20,
	"Tyler":25
]

for (friend, age) in userAges {
	print("Name: \(friend)")
	print("\tAge: \(age)")
	print(" \n")
}
//*******************************************************
/*
	- Dictionary used. 
*/
//*******************************************************







//*******************************************************
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08


var square = 0
var diceRoll = 0

while square < finalSquare {
	//roll dice 
	diceRoll += 1

	if diceRoll == 7 { diceRoll = 1}

	if square < board.count {
		square += board[square]
	}
}

print("Game Over!")



//*******************************************************
/*

*/
//*******************************************************








//*******************************************************

//*******************************************************
/*

*/
//*******************************************************








//*******************************************************

//*******************************************************
/*

*/
//*******************************************************











//*******************************************************

//*******************************************************
/*

*/
//*******************************************************