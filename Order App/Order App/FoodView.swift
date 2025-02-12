import SwiftUI
import SwiftData

struct FoodView: View {
    @Query(filter: #Predicate<MenuItem> { item in
        item.type == "Food"
    }, sort: \MenuItem.name) var foodItems: [MenuItem]
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        VStack {
            ForEach(foodItems) { item in
                MenuItemView(item: item)
            }
        }
        .onAppear {
            if foodItems.isEmpty {
                preloadMenuItems()
            }
        }
    }

    private func preloadMenuItems() {
        let sampleFoods: [(name: String, price: Double, image: String)] = [
            ("Fun Gummy", 2.5, "Fun Gummy"),
            ("Color Candy", 2.0, "Color Candy"),
            ("Rocky Road", 3.0, "Rocky Road"),
            ("Vanilla Almond Choc", 2.2, "Vanilla Almond Choc"),
            ("Bavarian Filled", 2.8, "Bavarian Filled"),
            ("Boston Kreme", 3.5, "Boston Kreme"),
            ("Choc Pudding", 2.0, "Choc Pudding"),
            ("Peanut Butter Jelly", 4.0, "Peanut Butter Jelly"),
            ("Strawberry Filled", 4.0, "Strawberry Filled"),
            ("Mr Happy", 2.0, "Mr Happy"),
            ("Blueberry Filled", 3.0, "Blueberry Filled"),
            ("Triple Choc", 2.5, "Triple Choc"),
            ("Bendera", 2.0, "Bendera"),
            ("Black Forest", 5.0, "Black Forest"),
            ("Nutty Choc", 2.0, "Nutty Choc"),
            ("Strawberry Frosted", 4.0, "Strawberry Frosted"),
            ("Cheezy Cheese", 5.0, "Cheezy Cheese"),
            ("Oreo Moment", 4.5, "Oreo Moment"),
            ("Glazed", 2.0, "Glazed"),
            ("Sugar Raised", 2.0, "Sugar Raised")
        ]

        for food in sampleFoods {
            let newItem = MenuItem(name: food.name, type: "Food", price: food.price, imageName: food.image)
            modelContext.insert(newItem)
        }
        
        try? modelContext.save()
    }
}

#Preview {
    FoodView()
        .modelContainer(for: MenuItem.self, inMemory: true)
}
