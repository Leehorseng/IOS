import UIKit


let numbers = [34, 7, 23, 32, 5, 62, 12]

if numbers.isEmpty {
    print("The array is empty.")
} else {
    
    var smallest = numbers[0]
    var largest = numbers[0]
    
    
    for number in numbers {
        if number < smallest {
            smallest = number
        }
        if number > largest {
            largest = number
        }
    }
    
    
    print("Smallest number: \(smallest)")
    print("Largest number: \(largest)")
}
