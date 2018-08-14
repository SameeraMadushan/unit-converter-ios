//
//  TemperatureController.swift
//  it15019646
//
//  Created by Sameera Madushan on 8/14/18.
//  Copyright © 2018 Sameera Madushan. All rights reserved.
//

import Foundation

class TemperatureController {
    
    //initializing unit variables with 0
    var celsius: Double = 0
    var fahrenheit: Double = 0
    var kelvin: Double = 0
    
    //convert celsius values to other units(first textbox)
    func celsiusConversion(_ celsius: Double){
        self.celsius = celsius
        self.fahrenheit = celsius*1.8+32
        self.kelvin = celsius+273.15
    }
    
    //convert fahrenheit values to other units(first textbox)
    func fahrenheitConversion(_ fahrenheit: Double){
        self.celsius = (fahrenheit-32)/1.8
        self.fahrenheit = fahrenheit
        self.kelvin = (fahrenheit+459.67)*5/9
    }
    
    //convert kelvin values to other units(first textbox)
    func kelvinConversion(_ kelvin: Double){
        self.celsius = kelvin-273.15
        self.fahrenheit = kelvin*9/5-459.67
        self.kelvin = kelvin
    }
    
}
