import UIKit

func Max(from array: [Int]) -> (smallest: Int, largest: Int)? {
    guard !array.isEmpty else { return nil }
    
    var smallest = array[0]
    var largest = array[0]
    
    for number in array {
        if number < smallest {
            smallest = number
        }
        if number > largest {
            largest = number
        }
    }
   
    return (smallest, largest)
}

if let result = Max(from: [34, 7, 23, 32, 5, 62]) {
    print("Smallest: \(result.smallest), Largest: \(result.largest)")
} else {
    print("The array is empty.")
}

