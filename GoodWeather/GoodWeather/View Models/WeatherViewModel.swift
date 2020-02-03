//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Pushpank Kumar on 4/1/2020.
//  Copyright © 2019 Pushpank Kumar. All rights reserved.
//

import Foundation
import Combine

class WeatherViewModel: ObservableObject {
    
    private var weatherService: WeatherService!
    
    @Published var weather = Weather()
    
    init() {
        self.weatherService = WeatherService()
    }
    
    var temperature: String {
        if let temp = self.weather.temp {
            return String(format: "%.0f",temp)
        } else {
            return ""
        }
    }
    
    var humidity: String {
          
          if let humidity = self.weather.humidity {
              return String(format: "%.0f",humidity)
          } else {
              return ""
          }
      }
    
    var cityName: String = ""
    
    func search() {
        if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchWeather(by: city)
        }
    }
    
    private func fetchWeather(by city: String) {
        
        self.weatherService.getWeather(city: city) { weather in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
                
            }
        }
        
    }
    
}
