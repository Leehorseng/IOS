import SwiftData

@Model
class MenuItem {
    var name: String
    var type: String
    var price: Double
    var imageName: String
    var isAddedToOrder: Bool

    init(name: String, type: String, price: Double, imageName: String, isAddedToOrder: Bool = false) {
        self.name = name
        self.type = type
        self.price = price
        self.imageName = imageName
        self.isAddedToOrder = isAddedToOrder
    }
}
