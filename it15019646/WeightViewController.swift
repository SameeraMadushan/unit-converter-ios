//
//  WeightViewController.swift
//  it15019646
//
//  Created by Sameera Madushan on 8/7/18.
//  Copyright © 2018 Sameera Madushan. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    //initializing UI components as variables
    @IBOutlet weak var gram: UITextField!
    @IBOutlet weak var kilogram: UITextField!
    @IBOutlet weak var pound: UITextField!
    @IBOutlet weak var ounce: UITextField!
    
    //initializing WeightController class object
    //initially all the values will be 0 in the WeightController class
    var weightValue = WeightController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func gramValueChanged(_ sender: Any) {
        //input value is passed to weight controller's conversion method
        weightValue.gramConversion((self.gram.text! as NSString).doubleValue)
        
        //now weightValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(weightValue, input: "gram")
    }
    
    @IBAction func kilogramValueChanged(_ sender: Any) {
        //input value is passed to weight controller's conversion method
        weightValue.kilogramConversion((self.kilogram.text! as NSString).doubleValue)
        
        //now weightValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(weightValue, input: "kilogram")
    }
    
    @IBAction func poundValueChanged(_ sender: Any) {
        //input value is passed to weight controller's conversion method
        weightValue.poundConversion((self.pound.text! as NSString).doubleValue)
        
        //now weightValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(weightValue, input: "pound")
    }
    
    @IBAction func ounceValueChanged(_ sender: Any) {
        //input value is passed to weight controller's conversion method
        weightValue.ounceConversion((self.ounce.text! as NSString).doubleValue)
        
        //now weightValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(weightValue, input: "ounce")
    }
    
    //this method will be used to assign converted values to text boxes
    func assignValues(_ weight: WeightController, input: String){
        //assigning new weight values to text boxes
        if (input != "gram"){
            self.gram.text = String(weight.gram)
        }
        if (input != "kilogram"){
            self.kilogram.text = String(weight.kilogram)
        }
        if (input != "pound"){
            self.pound.text = String(weight.pound)
        }
        if (input != "ounce"){
            self.ounce.text = String(weight.ounce)
        }
    }
    
    
    //clear textfiedl values when click
    func clearTextFields(){
        self.gram.text=""
        self.kilogram.text=""
        self.pound.text=""
        self.ounce.text=""
    }
    
    //clearing all the text fields when onClick
    //all the text fields(4 text fields) are binded to one method
    @IBAction func clearOnClick(_ sender: Any) {
        clearTextFields()
    }

}

