//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Kevin Brown on 12/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                DayForecastView(day: "Mon", weather: Weather.sunny, high: 70, low: 50)
                DayForecastView(day: "Tue", weather: Weather.rainy, high: 60, low: 40)
                DayForecastView(day: "Wed", weather: Weather.cloudy, high: 65, low: 45)
                DayForecastView(day: "Thu", weather: Weather.sunny, high: 75, low: 55)
                DayForecastView(day: "Fri", weather: Weather.rainy, high: 62, low: 42)
                DayForecastView(day: "Sat", weather: Weather.cloudy, high: 68, low: 48)
                DayForecastView(day: "Sun", weather: Weather.sunny, high: 72, low: 52)
            }
        }
    }
}

#Preview {
    ContentView()
}
