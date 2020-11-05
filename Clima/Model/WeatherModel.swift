//
//  WeatherModel.swift
//  Clima
//
//  Created by MAC on 01.11.2020.
//  Copyright © 2020 Litmax. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        getConditionName(conditionID: conditionID)
    }
    
    func getConditionName(conditionID: Int)-> String {
        switch conditionID {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "clear"
        }
    }
    
}
