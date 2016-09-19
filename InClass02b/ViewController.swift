//
//  ViewController.swift
//  InClass02b
//
//  Created by student on 7/7/16.
//  Copyright (c) 2016 itcs6010mnr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var firstNumber: UITextField!

    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var resultValue: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func clearFields(sender: AnyObject) {
        firstNumber.text = ""
        secondNumber.text = ""
        resultValue.text = "Result: 0.00"
    }
    var selSegment = 5;
    @IBAction func performOp(sender: AnyObject) {
        switch selSegment
        {
        case 0:
            if (self.firstNumber.text != nil && self.firstNumber.text != "" && self.secondNumber.text != nil && self.secondNumber.text != ""){
                print("in add")
                let fNumDouble = (firstNumber.text as NSString).doubleValue
                let sNumDouble = (secondNumber.text as NSString).doubleValue
                let resultVal = fNumDouble + sNumDouble
                resultValue.text = "Result: \(resultVal)"
            }
        case 1:
            if (self.firstNumber.text != nil && self.firstNumber.text != "" && self.secondNumber.text != nil && self.secondNumber.text != ""){
                print("in add")
                let fNumDouble = (firstNumber.text as NSString).doubleValue
                let sNumDouble = (secondNumber.text as NSString).doubleValue
                let resultVal = fNumDouble - sNumDouble
                resultValue.text = "Result: \(resultVal)"
            }
        case 2:
            if (self.firstNumber.text != nil && self.firstNumber.text != "" && self.secondNumber.text != nil && self.secondNumber.text != ""){
                print("in add")
                let fNumDouble = (firstNumber.text as NSString).doubleValue
                let sNumDouble = (secondNumber.text as NSString).doubleValue
                let resultVal = fNumDouble * sNumDouble
                resultValue.text = "Result: \(resultVal)"
            }
        case 3:
            if (self.firstNumber.text != nil && self.firstNumber.text != "" && self.secondNumber.text != nil && self.secondNumber.text != ""){
                print("in add")
                let fNumDouble = (firstNumber.text as NSString).doubleValue
                let sNumDouble = (secondNumber.text as NSString).doubleValue
                let resultVal = fNumDouble / sNumDouble
                resultValue.text = "Result: \(resultVal)"
            }
        default:
            break;
        }

    }
    
    @IBAction func indexChanged(sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            selSegment = 0
        case 1:
            selSegment = 1
        case 2:
            selSegment = 2
        case 3:
            selSegment = 3
        default:
            break
        }
    }
}

