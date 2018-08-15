//
//  SecondViewController.swift
//  it15019646
//
//  Created by Sameera Madushan on 8/7/18.
//  Copyright © 2018 Sameera Madushan. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    //initializing UI components as variables
    @IBOutlet weak var metre: UITextField!
    @IBOutlet weak var foot: UITextField!
    @IBOutlet weak var yard: UITextField!
    @IBOutlet weak var kilometre: UITextField!
    @IBOutlet weak var mile: UITextField!
    
    
    //initializing DistanceController class object
    //initially all the values will be 0 in the DistanceController class
    var distanceValue = DistanceController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func metreValueChanged(_ sender: Any) {
        //input value is passed to Distance controller's conversion method
        distanceValue.meterConversion((self.metre.text! as NSString).doubleValue)
        
        //now distanceValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(distanceValue, input: "metre")
    }
    
    @IBAction func footValueChanged(_ sender: Any) {
        //input value is passed to Distance controller's conversion method
        distanceValue.footConversion((self.foot.text! as NSString).doubleValue)
        
        //now distanceValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(distanceValue, input: "foot")
    }
    
    @IBAction func yardValueChanged(_ sender: Any) {
        //input value is passed to Distance controller's conversion method
        distanceValue.yardConversion((self.yard.text! as NSString).doubleValue)
        
        //now distanceValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(distanceValue, input: "yard")
    }
    
    @IBAction func kilometreValueChanged(_ sender: Any) {
        //input value is passed to Distance controller's conversion method
        distanceValue.kilometerConversion((self.kilometre.text! as NSString).doubleValue)
        
        //now distanceValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(distanceValue, input: "kilometre")
    }
    
    @IBAction func mileValueChanged(_ sender: Any) {
        //input value is passed to Distance controller's conversion method
        distanceValue.mileConversion((self.mile.text! as NSString).doubleValue)
        
        //now distanceValue object contains converted values
        //assignValues method will be used to assign values to text boxes
        assignValues(distanceValue, input: "mile")
    }
    
    //this method will be used to assign converted values to text boxes
    func assignValues(_ distance: DistanceController, input: String){
        //assigning new weight values to text boxes
        if (input != "metre"){
            self.metre.text = String(distance.metre)
        }
        if (input != "foot"){
            self.foot.text = String(distance.foot)
        }
        if (input != "yard"){
            self.yard.text = String(distance.yard)
        }
        if (input != "kilometre"){
            self.kilometre.text = String(distance.kilometre)
        }
        if (input != "mile"){
            self.mile.text = String(distance.mile)
        }
    }
    
    
    //clear textfiedl values when click
    func clearTextFields(){
        self.metre.text=""
        self.foot.text=""
        self.yard.text=""
        self.kilometre.text=""
        self.mile.text=""
    }
    
    //clearing all the text fields when onClick
    //all the text fields(4 text fields) are binded to one method
    
    @IBAction func clearOnClick(_ sender: Any) {
        clearTextFields()
    }
    
}

