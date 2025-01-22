import SwiftUI

struct ContentView: View {
    
    
    @State private var username = ""
    
    var body: some View {
        VStack {
            
            TextField("Required", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            if username.count >= 5 {
                Text("Valid")
                    .foregroundColor(.green)
                    .padding()
            } else {
                Text("Too short")
                    .foregroundColor(.red)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
