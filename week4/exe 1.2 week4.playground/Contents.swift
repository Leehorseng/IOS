import UIKit

var num = 2345
var number = String(num)
 var sum = 0
for char in number{
    if let n = Int(String(char)){
        sum += n
    }
}
print("the sum is\(sum)")
