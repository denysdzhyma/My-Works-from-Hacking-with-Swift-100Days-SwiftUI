import Foundation

// Test of array zone

let arrayInt: [Int]? = []

// End of zone



func selectRandomNumber(from number: [Int]?) -> Int {
	
	return number?.randomElement() ?? Int.random(in: 1...100)
	
}

let test = selectRandomNumber(from: arrayInt)
print(test)