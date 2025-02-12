import SwiftUI

struct MenuItemView: View {
    @Bindable var item: MenuItem

    var body: some View {
        HStack {
            
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)

            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)

                Text("RM \(item.price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                
                Button(action: {
                    item.isAddedToOrder.toggle()
                }) {
                    Text(item.isAddedToOrder ? "Remove" : "Add to Order")
                        .font(.caption)
                        .padding(6)
                        .background(item.isAddedToOrder ? Color.red : Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    let newItem = MenuItem(name: "Fun Gummy", type: "Food", price: 2.5, imageName: "Fun Gummy")
    MenuItemView(item: newItem)
}
