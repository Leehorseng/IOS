import UIKit

let myString = "123.45"

if let convertedDouble = Double(myString) {
    // Conversion was successful
    print("Conversion successful! The double value is \(convertedDouble).")
} else {
    // Conversion failed
    print("Conversion failed. The string is not a valid number.")
}
