import UIKit
func sum(start: Int, end: Int) -> Int {
    
    if start > end {
        print("Invalid range: start is greater than end.")
        return 0
    }
    
    var sum = 0
    for number in start...end {
        sum += number
    }
    return sum
}

let input1Start = 3
let input1End = 6
let result1 = sum(start: input1Start, end: input1End)
print("Sum of numbers from \(input1Start) to \(input1End) is \(result1)")

let input2Start = 6
let input2End = 3
let result2 = sum(start: input2Start, end: input2End)
print("Sum of numbers from \(input2Start) to \(input2End) is \(result2)")
