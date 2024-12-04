import UIKit
func calculate(width: Int, height: Int) -> (area: Int, perimeter: Int) {
    let area = width * height
    let perimeter = 2 * (width + height)
    
    return (area, perimeter)
}

let width = 4
let height = 7
let result = calculate(width: width, height: height)

print("Area: \(result.area), Perimeter: \(result.perimeter)")
