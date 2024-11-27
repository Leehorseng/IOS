import UIKit


let number = [1, 2, 3, 4]

for i in number {
    for j in 1...i {
        print("*", terminator: "")
    }
    print("")
}

var n = 3
for i in 1...3 {
    for j in 1...n {
        print("*", terminator: "")
    }
    print("")
    n -= 1
}
