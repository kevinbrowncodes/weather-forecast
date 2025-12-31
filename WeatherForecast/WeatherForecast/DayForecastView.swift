//
//  DayForecastView.swift
//  WeatherForecast
//
//  Created by Kevin Brown on 12/30/25.
//

import SwiftUI

struct DayForecastView: View {
    let day: String
    let weather: Weather
    let high: Int
    let low: Int
    
    var weatherIcon: some View {
        switch weather {
        case .sunny:
            Image(systemName: "sun.max.fill")
                .foregroundStyle(.yellow)
        case .rainy:
            Image(systemName: "cloud.rain.fill")
                .foregroundStyle(.blue)
        case .cloudy:
            Image(systemName: "cloud.fill")
                .foregroundStyle(.gray)
        case .snowy:
            Image(systemName: "snow.fill")
                .foregroundStyle(.cyan)
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Group {weatherIcon}
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

#Preview {
    DayForecastView(day: "Mon", weather: Weather.sunny, high: 70, low: 50)
    //DayForecastView(day: "Tue", weather: Weather.rainy, high: 60, low: 40)
}
