//
//  SpeedViewController.swift
//  it15019646
//
//  Created by Sameera Madushan on 8/14/18.
//  Copyright © 2018 Sameera Madushan. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    //initializing UI components as variables
    @IBOutlet weak var metrePerSec: UITextField!
    @IBOutlet weak var footPerMinute: UITextField!
    @IBOutlet weak var kmPerHour: UITextField!
    @IBOutlet weak var milesPerHour: UITextField!
    
    
    //initializing DistanceController class object
    //initially all the values will be 0 in the DistanceController class
    var speedValue = SpeedController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func meterPerSecValueChanged(_ sender: Any) {
        //input value is passed to speed controller's conversion method
        speedValue.meterPerSecConversion((self.metrePerSec.text! as NSString).doubleValue)
        
        //now speedValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(speedValue, input: "meterPerSec")
    }
    
    @IBAction func footPerMinValueChanged(_ sender: Any) {
        //input value is passed to speed controller's conversion method
        speedValue.feetPerMinConversion((self.footPerMinute.text! as NSString).doubleValue)
        
        //now speedValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(speedValue, input: "feetPerMin")
    }
    
    @IBAction func kmPerHrValueChanged(_ sender: Any) {
        //input value is passed to speed controller's conversion method
        speedValue.kmPerHrConversion((self.kmPerHour.text! as NSString).doubleValue)
        
        //now speedValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(speedValue, input: "kmPerHr")
    }
    
    @IBAction func milesPerHrValueChanged(_ sender: Any) {
        //input value is passed to speed controller's conversion method
        speedValue.milesPerHrConversion((self.milesPerHour.text! as NSString).doubleValue)
        
        //now speedValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(speedValue, input: "milesPerHr")
    }
    
    //this method will be used to assign converted values to text boxes
    func assignValues(_ speed: SpeedController, input: String){
        //assigning new weight values to text boxes
        if (input != "meterPerSec"){
            self.metrePerSec.text = String(speed.meterPerSec)
        }
        if (input != "feetPerMin"){
            self.footPerMinute.text = String(speed.feetPerMin)
        }
        if (input != "kmPerHr"){
            self.kmPerHour.text = String(speed.kmPerHr)
        }
        if (input != "milesPerHr"){
            self.milesPerHour.text = String(speed.milesPerHr)
        }
    }
    
    //clear textfiedl values when click
    func clearTextFields(){
        self.metrePerSec.text=""
        self.footPerMinute.text=""
        self.kmPerHour.text=""
        self.milesPerHour.text=""
    }
    
    //clearing all the text fields when onClick
    //all the text fields(4 text fields) are binded to one method
    @IBAction func clearOnClick(_ sender: Any) {
        clearTextFields()
    }
}
