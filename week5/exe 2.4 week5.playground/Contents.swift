import UIKit

func factorial(of n: Int) -> Int {
    if n < 0 {
        print("Factorial is not defined for negative numbers.")
        return -1
    }
    var result = 1
    for i in 1...n {
        result *= i
    }
    return result
}

let input1 = 5
print("Factorial of \(input1) is \(factorial(of: input1))")

let input2 = -3
print("Factorial of \(input2) is \(factorial(of: input2))")

