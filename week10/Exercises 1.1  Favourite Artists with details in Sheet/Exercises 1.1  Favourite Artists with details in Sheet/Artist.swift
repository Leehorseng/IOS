import SwiftUI
import SafariServices

struct Artist: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var desc: String
    var website: String
}

struct ArtistListView: View {
    
    let artists = [
        Artist(name: "Iron Man", image: "ironman", desc: "Famous superhero", website: "https://www.google.com"),
        Artist(name: "Thor", image: "thor", desc: "God of Thunder", website: "https://www.marvel.com"),
        Artist(name: "Captain America", image: "captainamerica", desc: "Leader of the Avengers", website: "https://www.marvel.com")
    ]
    
    @State private var isSheetPresented = false
    @State private var selectedArtist: Artist?

    var body: some View {
        NavigationView {
            List(artists) { artist in
                HStack {
                    Image(artist.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())

                    VStack(alignment: .leading) {
                        Button(action: {
                            selectedArtist = artist
                            isSheetPresented = true
                        }) {
                            Text(artist.name)
                                .font(.headline)
                                .foregroundColor(.primary)
                        }

                        Button(action: {
                            selectedArtist = artist
                            isSheetPresented = true
                        }) {
                            Text(artist.desc)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }

                    Spacer()

                    Button("Visit") {
                        if let url = URL(string: artist.website) {
                            SafariView(url: url)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    .foregroundColor(.blue)
                }
                .padding()
            }
            .navigationTitle("Artists")
            .sheet(isPresented: $isSheetPresented) {
                if let artist = selectedArtist {
                    VStack {
                        Image(artist.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                        
                        Text(artist.name)
                            .font(.largeTitle)
                            .padding()

                        Text(artist.desc)
                            .font(.body)
                            .foregroundColor(.gray)
                            .padding()
                    }
                    .padding()
                }
            }
        }
    }
}

struct SafariView: View {
    let url: URL
    
    var body: some View {
        SafariViewController(url: url)
            .edgesIgnoringSafeArea(.all)
    }
}

struct SafariViewController: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}

#Preview {
    ArtistListView()
}
