//
//  Weather.swift
//  Artists Exercise1.2
//
//  Created by labuser on 08/01/2025.
//

import SwiftUI


struct Weather: View {
    var name:String
    var image:String
    var temperature:String
    var body: some View {
        VStack{
            Text(name)
                .font(.title)
            Image(systemName: image)
                .foregroundStyle(.tint)
            Text(temperature)
                .font(.title)
        }
    }
}

#Preview {
    Weather(name:("THU"),image:"cloud.bolt",temperature: "33°")
    Weather(name:("FRI"),image:"cloud.bolt",temperature: "32°")
    Weather(name:("SAT"),image:"cloud",temperature: "30°")
    Weather(name:("SUN"),image:"cloud",temperature: "31°")
    Weather(name:("MON"),image:"loud.heavyrain",temperature: "33°")
    Weather(name:("TUE"),image:"cloud.sun.fill",temperature: "33°")
}
