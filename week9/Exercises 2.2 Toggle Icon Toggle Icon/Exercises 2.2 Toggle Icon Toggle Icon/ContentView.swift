import SwiftUI

struct ContentView: View {
    
    @State private var soundOn = true
    
    var body: some View {
        VStack {
            
            Toggle("Sound", isOn: $soundOn)
                .padding()
                .font(.title)
            
            Image(systemName: soundOn ? "speaker.2.fill" : "speaker.slash.fill")
                .font(.largeTitle)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
