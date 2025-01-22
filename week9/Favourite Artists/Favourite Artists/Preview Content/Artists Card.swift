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
    var website:String
    var body: some View {
        
        VStack{
            ZStack{
            Color(.blue)
                .cornerRadius(20)
            HStack{
                Text(name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.all)
                
                Spacer()
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode:. fit)
                Spacer()
                VStack{
                    Button("view"){
                        print("Button was clicked")
                        
                    }
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    
                }
            }
        }
    }.frame(height:200)
        .padding()
}
}

#Preview {
    Artists_Card(name: "Training", color: "Color1", image: "Leonardo DiCaprio", website: "https://www.google.com")
}
