//
//  SpeedController.swift
//  it15019646
//
//  Created by Sameera Madushan on 8/14/18.
//  Copyright © 2018 Sameera Madushan. All rights reserved.
//

import Foundation

class SpeedController {
    
    //initializing unit variables with 0
    var meterPerSec: Double = 0
    var feetPerMin: Double = 0
    var kmPerHr: Double = 0
    var milesPerHr: Double = 0
    
    //convert meterPerSec values to other units(first textbox)
    func meterPerSecConversion(_ meterPerSec: Double){
        self.meterPerSec = meterPerSec
        self.feetPerMin = meterPerSec*196.8504
        self.kmPerHr = meterPerSec*3.6
        self.milesPerHr = meterPerSec*2.23694
    }
    
    //convert feetPerMin values to other units(first textbox)
    func feetPerMinConversion(_ feetPerMin: Double){
        self.meterPerSec = feetPerMin*0.00508
        self.feetPerMin = feetPerMin
        self.kmPerHr = feetPerMin*0.018288
        self.milesPerHr = feetPerMin*0.0113636
    }
    
    //convert kmPerHr values to other units(first textbox)
    func kmPerHrConversion(_ kmPerHr: Double){
        self.meterPerSec = kmPerHr*0.277778
        self.feetPerMin = kmPerHr*54.68064
        self.kmPerHr = kmPerHr
        self.milesPerHr = kmPerHr*0.621371
    }
    
    //convert milesPerHr values to other units(first textbox)
    func milesPerHrConversion(_ milesPerHr: Double){
        self.meterPerSec = milesPerHr*0.44704
        self.feetPerMin = milesPerHr*88
        self.kmPerHr = milesPerHr*1.60934
        self.milesPerHr = milesPerHr
    }
}
