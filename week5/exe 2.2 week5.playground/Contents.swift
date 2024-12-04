import UIKit
func countEvenOdd(start: Int, end: Int) -> (evenCount: Int, oddCount: Int) {
    var evenCount = 0
    var oddCount = 0

    for number in start...end {
        if number % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }

    return (evenCount, oddCount)
}
let result = countEvenOdd(start: 1, end: 10)
print("Even Count: \(result.evenCount), Odd Count: \(result.oddCount)")
