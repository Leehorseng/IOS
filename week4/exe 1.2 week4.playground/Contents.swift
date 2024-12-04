import UIKit
func sum(digits: Int)-> Int{
  
    var number = String(digits)
    var sum = 0
    for char in number{
        if let n = Int(String(char)){
            sum += n
        }
    }
    return sum
    
}
print(sum(digits: 2345))
