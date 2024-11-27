import UIKit


let username = "admin"
let password = "abcd"


let inputUsername = "admin"
let inputPassword = "wrongPasscode" 


if inputUsername == username && inputPassword == password {
    print("Login successful!")
} else if inputUsername != username {
    print("Invalid username")
} else if inputPassword != password {
    print("Invalid password")
}
