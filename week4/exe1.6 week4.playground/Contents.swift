import UIKit

func Diamond(maxStars: Int) {
    for i in 1...maxStars {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
    
    for i in stride(from: maxStars - 1, through: 1, by: -1) {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}

Diamond(maxStars: 4)
