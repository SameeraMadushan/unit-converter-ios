//
//  WeightController.swift
//  it15019646
//
//  Created by Sameera Madushan on 8/14/18.
//  Copyright © 2018 Sameera Madushan. All rights reserved.
//

import Foundation

class WeightController {
    
    //initializing unit variables with 0
    var gram: Double = 0.0
    var kilogram: Double = 0.0
    var pound: Double = 0.0
    var ounce: Double = 0.0
    
    //convert gram values to other units(first textbox)
    func gramConversion(_ gram: Double){
        self.kilogram = gram/1000
        self.pound = gram/453.59237
        self.ounce = gram/28.34952
    }
    
    //convert kilogram values to other units(second textbox)
    func kilogramConversion(_ kilogram: Double){
        self.gram = kilogram*1000
        self.pound = kilogram/0.45359237
        self.ounce = kilogram/0.02834952
    }
    
    //convert pound values to other units(third textbox)
    func poundConversion(_ pound: Double){
        self.gram = pound*453.59237
        self.kilogram = pound*0.45359237
        self.ounce = pound*16
    }
    
    //convert ounce values to other units(fourth textbox)
    func ounceConversion(_ ounce: Double){
        self.gram = ounce*28.34952
        self.kilogram = ounce*0.02834952
        self.pound = ounce/16
    }
    
}
