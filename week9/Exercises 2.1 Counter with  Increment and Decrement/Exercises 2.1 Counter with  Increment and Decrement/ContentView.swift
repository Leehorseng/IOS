import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0  
    var body: some View {
        VStack {
            Text("Counter App")
                .font(.largeTitle)
                .bold()
            
            Text(String(counter))
                .font(.largeTitle)
                .bold()
            
            HStack {
                
                Button(action: {
                    if counter != 0 {
                        counter -= 1
                    }
                }) {
                    Image(systemName: "minus.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                }
                
                
                Button(action: {
                    counter += 1
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.green)
                }
            }
            .padding()
            
            
            Button(action: {
                counter = 0
            }) {
                Text("Reset")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
