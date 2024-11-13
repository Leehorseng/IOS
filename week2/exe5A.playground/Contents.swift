import UIKit

let currentYear = Calendar.current.component(.year, from: Date()) // Get the current year
let birthYear = 1994  // Replace with your birth year

var age = currentYear - birthYear

print("You are \(age) years old.")
