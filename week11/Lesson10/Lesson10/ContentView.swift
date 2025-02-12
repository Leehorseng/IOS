import SwiftUI

struct ContentView: View {
    let asia = ["Seremban", "Kuala Lumpur", "Tokyo"]
    let europe = ["London", "New York", "Paris"]
    @State private var isSheetPresented = false
    @State private var searchText = "" // State variable for search text

    var filteredAsia: [String] {
        asia.filter { searchText.isEmpty || $0.localizedCaseInsensitiveContains(searchText) }
    }

    var filteredEurope: [String] {
        europe.filter { searchText.isEmpty || $0.localizedCaseInsensitiveContains(searchText) }
    }

    var body: some View {
        NavigationStack {
            List {
                // Asia Section
                Section(header: Text("Asia")) {
                    ForEach(filteredAsia, id: \.self) { city in
                        NavigationLink {
                            Text("Item's Detail: \(city)")
                        } label: {
                            Text(city)
                        }
                    }
                }

                // Europe Section
                Section(header: Text("Europe")) {
                    ForEach(filteredEurope, id: \.self) { city in
                        NavigationLink {
                            Text("Item's Detail: \(city)")
                        } label: {
                            Text(city)
                        }
                    }
                }
            }
            .navigationTitle("Cities")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isSheetPresented = true
                    }) {
                        Text("+")
                            .font(.system(size: 30))
                    }
                }
            }
            .sheet(isPresented: $isSheetPresented) {
                VStack {
                    Text("This app was created by LHS")
                        .font(.headline)
                        .padding()
                }
                .presentationDetents([.height(300), .large])
            }
            .searchable(text: $searchText, prompt: "Search cities") // Add searchable modifier
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
