import SwiftUI

struct Login_And_Reg: View {
    @State private var isRegistering = false 
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack {
            Image("dunkin_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()

            Text(isRegistering ? "Register" : "Login")
                .font(.largeTitle)
                .bold()
                .padding()

            VStack(spacing: 15) {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .padding(.horizontal)

                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                if isRegistering {
                    SecureField("Confirm Password", text: $confirmPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                }

                Button(action: validate) {
                    Text(isRegistering ? "Register" : "Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }

                Button(action: { isRegistering.toggle() }) {
                    Text(isRegistering ? "Already have an account? Login" : "Don't have an account? Register")
                        .foregroundColor(.blue)
                }
                .padding()
            }
            .padding()

            Spacer()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
    }

    func validate() {
        if email.isEmpty || password.isEmpty || (isRegistering && confirmPassword.isEmpty) {
            alertMessage = "All fields are required!"
            showAlert = true
            return
        }
        if isRegistering && password != confirmPassword {
            alertMessage = "Passwords do not match!"
            showAlert = true
            return
        }
        // Proceed with authentication logic
    }
}

#Preview {
    Login_And_Reg()
}
