import SwiftUI
import SwiftData

struct DrinkView: View {
    @Query(filter: #Predicate<MenuItem> { item in
        item.type == "Drink"
    }, sort: \MenuItem.name) var drinkItems: [MenuItem]
    
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        List {
            ForEach(drinkItems) { item in
                MenuItemView(item: item)
            }
        }
        .onAppear {
            if drinkItems.isEmpty {
                preloadMenuItems()
            }
        }
    }

    private func preloadMenuItems() {
        let sampleDrinks: [(name: String, price: Double, imageName: String)] = [
            ("Cola", 2.5, "cola"),
            ("Sprite", 2.0, "sprite"),
            ("Orange Juice", 3.0, "orange_juice"),
            ("Iced Tea", 2.2, "iced_tea"),
            ("Lemonade", 2.8, "lemonade"),
            ("Coffee", 3.5, "coffee"),
            ("Tea", 2.0, "tea"),
            ("Espresso", 2.0, "espresso"),
            ("Americano", 3.0, "americano"),
            ("Milo", 3.3, "milo")
        ]

        for drink in sampleDrinks {
            let newItem = MenuItem(name: drink.name, type: "Drink", price: drink.price, imageName: drink.imageName)
            modelContext.insert(newItem)
        }

        try? modelContext.save()
    }

}

#Preview {
    DrinkView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
