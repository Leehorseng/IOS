//
//  ContentView.swift
//  profile
//
//  Created by labuser on 17/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack {
      
            Image("wallpaper")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
              
            VStack{
                
                Image("leehorseng")
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100.0,height:180)
                    .padding(.all)
            
                    .clipShape(Circle())
                
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                        
                    )
                    .shadow(radius: 10)
                
                
                Text("Leehorseng")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                Text("ios Developer")
                                    .font(.title)
           
                                Text("hi, I have three years of experience developing iOS apps and a passion for building solutions.")
                    
                
                Spacer()
                
                HStack {
                    
                    Image("facebook")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    
                       
                    
                    
                    Image("instagram")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    
                        
                    
                    Image("youtube")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    
                        
                    
                    Image("linkedin")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                    
                    
                        
                    
                }
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
