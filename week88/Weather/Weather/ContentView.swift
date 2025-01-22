//
//  ContentView.swift
//  Artists Exercise1.2
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.yellow)
            VStack {
                Text("KLANG")
                    .font(.largeTitle)
                Image(systemName: "cloud.sun.bolt.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .font(.system(size: 100))
                Text("33°")
                    .font(.largeTitle)
                Spacer()
                HStack{
                    Weather(name:("Thu"),image:"cloud.bolt",temperature: "33°")
                        .font(.title3)
                    Weather(name:("Fri"),image:"cloud.bolt",temperature: "32°")
                        .font(.title3)
                    Weather(name:("Sat"),image:"cloud",temperature: "30°")
                        .font(.title3)
                    Weather(name:("Sun"),image:"cloud",temperature: "31°")
                        .font(.title3)
                    Weather(name:("Mon"),image:"cloud.heavyrain",temperature: "33°")
                        .font(.title3)
                    Weather(name:("Tue"),image:"cloud.sun.fill",temperature: "33°")
                        .font(.title3)
                    }
                Spacer()
                VStack{
                    Text("Change Day Time")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                }
        
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
