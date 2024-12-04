import UIKit
func Histogram(numbers: [Int]) {
    for value in numbers {
        for _ in 1...value {
            print("*", terminator: "")
        }
        print()
    }
}

let numbers = [3, 5, 1, 4]

Histogram(numbers: numbers)
