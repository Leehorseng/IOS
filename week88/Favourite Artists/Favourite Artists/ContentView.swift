import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                Image(systemName: "bell.badge.fill")
                    .padding(.all)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                
                Image(systemName: "person.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
        }
        .padding()
        
        
        
        HStack {
            Text("Favourite Artist")
                .fontWeight(.semibold)
                .font(.largeTitle)
            Spacer()
        }
        
        ScrollView{
            Artists_Card(name: "Leonardo DiCaprio", color: "Color1", image: "Leonardo DiCaprio")
            Artists_Card(name: "Hugh Jackman", color: "Color1", image: "Hugh Jackman")
            Artists_Card(name: "Chris Hemsworth", color: "Color1", image: "Chris Hemsworth")
            Artists_Card(name: "Robert Downey Jr", color: "Color1", image: "Robert Downey Jr")
        }

        
        
                }
            }
#Preview {
    ContentView()
}
