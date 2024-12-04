import UIKit
func printOddNumbers(from start: Int, to end: Int) {
    for number in start...end {
        if number % 2 != 0 {
            print(number)
        }
    }
}
printOddNumbers(from: 1, to: 50)
