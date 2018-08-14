//
//  DistanceController.swift
//  it15019646
//
//  Created by Sameera Madushan on 8/14/18.
//  Copyright © 2018 Sameera Madushan. All rights reserved.
//

import Foundation

class DistanceController {
    
    //initializing unit variables with 0
    var meter: Double = 0
    var foot: Double = 0
    var yard: Double = 0
    var kilometer: Double = 0
    var mile: Double = 0
    
    
    //convert meter values to other units(first textbox)
    func meterConversion(_ meter: Double){
        self.meter = meter
        self.foot = meter/0.3048
        self.yard = meter*1.0936
        self.kilometer = meter/1000
        self.mile = meter*0.00062137
    }
    
    //convert foot values to other units(first textbox)
    func footConversion(_ foot: Double){
        self.meter = foot*0.3048
        self.foot = foot
        self.yard = foot*0.33333
        self.kilometer = foot/3280.84
        self.mile = foot*0.00018939
    }
    
    //convert yard values to other units(first textbox)
    func yardConversion(_ yard: Double){
        self.meter = yard/1.0936
        self.foot = yard*3
        self.yard = yard
        self.kilometer = yard*0.000914
        self.mile = yard*0.00056818
    }
    
    //convert kilometer values to other units(first textbox)
    func kilometerConversion(_ kilometer: Double){
        self.meter = kilometer/0.0010000
        self.foot = kilometer*3280.8
        self.yard = kilometer*1093.613298
        self.kilometer = kilometer
        self.mile = kilometer/1.609344
    }
    
    //convert mile values to other units(first textbox)
    func mileConversion(_ mile: Double){
        self.meter = mile/0.00062137
        self.foot = mile*5280.0
        self.yard = mile*1760.0
        self.kilometer = mile*1.609344
        self.mile = mile
    }
    
}
