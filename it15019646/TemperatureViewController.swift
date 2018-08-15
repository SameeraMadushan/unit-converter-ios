//
//  TemperatureViewController.swift
//  it15019646
//
//  Created by Sameera Madushan on 8/14/18.
//  Copyright © 2018 Sameera Madushan. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    //Initializing UI components as variables
    @IBOutlet weak var celsius: UITextField!
    @IBOutlet weak var fahrenheit: UITextField!
    @IBOutlet weak var kelvin: UITextField!
    
    
    //initializing TemperatureController class object
    //initially all the values will be 0 in the TemperatureController class
    var temperatureValue = TemperatureController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func celsiusValueChanged(_ sender: Any) {
        //input value is passed to temperature controller's conversion method
        temperatureValue.celsiusConversion((self.celsius.text! as NSString).doubleValue)
        
        //now temperatureValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(temperatureValue, input: "celsius")
    }
    
    @IBAction func fahrenheitValueChanged(_ sender: Any) {
        //input value is passed to temperature controller's conversion method
        temperatureValue.fahrenheitConversion((self.fahrenheit.text! as NSString).doubleValue)
        
        //now temperatureValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(temperatureValue, input: "fahrenheit")
    }
    
    @IBAction func kelvinValueChanged(_ sender: Any) {
        //input value is passed to temperature controller's conversion method
        temperatureValue.kelvinConversion((self.kelvin.text! as NSString).doubleValue)
        
        //now temperatureValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(temperatureValue, input: "kelvin")
    }
    
    //this method will be used to assign converted values to text boxes
    func assignValues(_ temperature: TemperatureController, input: String){
        //assigning new weight values to text boxes
        if (input != "celsius"){
            self.celsius.text = String(temperature.celsius)
        }
        if (input != "fahrenheit"){
            self.fahrenheit.text = String(temperature.fahrenheit)
        }
        if (input != "kelvin"){
            self.kelvin.text = String(temperature.kelvin)
        }
    }
    
    //clear textfiedl values when click
    func clearTextFields(){
        self.celsius.text=""
        self.fahrenheit.text=""
        self.kelvin.text=""
    }
    
    //clearing all the text fields when onClick
    //all the text fields(4 text fields) are binded to one method
    @IBAction func clearOnClick(_ sender: Any) {
        clearTextFields()
    }
    
    
}
