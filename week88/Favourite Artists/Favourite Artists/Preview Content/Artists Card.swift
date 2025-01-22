//
//  Artists Card.swift
//  Favourite Artists
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct Artists_Card: View {
    var name:String
    var color:String
    var image:String
    var body: some View {
        ZStack{
            Color(.blue)
            HStack{
                VStack{
                    Spacer()
                    Text(name)
                        .foregroundStyle(.
                                         white)
                        .padding()
                }
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode:. fit)
            }
        }
        .frame(height:200)
        .padding()
        .cornerRadius(80)
    }
}

#Preview {
    Artists_Card(name: "Training", color: "Color1", image: "Leonardo DiCaprio")
}
