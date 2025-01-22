//
//  ContentView.swift
//  Favourite artists
//
//  Created by labuser on 18/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            HStack{
                Spacer()
                Image(systemName: "bell.badge")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Image(systemName: "person.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            
        }
        .padding()
        
        
        
        HStack{
            Text("Store")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Spacer()
        }
        
        
            
        HStack{
            Text("LeBron James")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image("LeBron James")
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
            
                .cornerRadius(20)
            
            Spacer()
            
        }  .background(.blue)
        
        
        HStack{
            Text("Elon Musk")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image("Elon Musk")
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .cornerRadius(20)
            Spacer()
        } .background(.pink)
        
        HStack{
            Text("Kim Kardashian")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image("Kim Kardashian")
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .cornerRadius(20)
                
            Spacer()
        } .background(.purple)
        
        HStack{
            Text("Tiger Woods")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
        Image("Tiger Woods")
            .resizable()
            .scaledToFill()
            .aspectRatio(contentMode: .fit)
            .padding(.all)
            .cornerRadius(20)
            
            Spacer()
    }.background(.green)
            
    }
}


#Preview {
    ContentView()
}
