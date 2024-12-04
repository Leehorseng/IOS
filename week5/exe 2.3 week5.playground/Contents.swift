import UIKit

func multiplication(for number: Int) {
    if number < 0 {
        print("Please enter a positive number.")
    } else {
        for i in 1...10 {
            print("\(number) * \(i) = \(number * i)")
        }
    }
}


multiplication(for: 5)


multiplication(for: -3)
