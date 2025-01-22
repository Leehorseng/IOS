import SwiftUI
import MapKit

struct ContentView: View {
    @State private var isSheetPresented = false

    var body: some View {
        VStack {
            
            Map()
                .frame(height: 300)
            
            
            Button("Show Sheet") {
                isSheetPresented = true
            }
            .sheet(isPresented: $isSheetPresented) {
                
                Text("Content")
                    .presentationDetents([.height(300), .medium, .large])
                    .presentationBackgroundInteraction(.enabled(upThrough: .height(300)))
            }
        }
        
    }
}

#Preview {
    ContentView()
}
