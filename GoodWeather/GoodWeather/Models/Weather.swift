//
//  Weather.swift
//  GoodWeather
//
//  Created by Pushpank Kumar on 4/1/2020.
//  Copyright © 2019 Pushpank Kumar. All rights reserved.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}
