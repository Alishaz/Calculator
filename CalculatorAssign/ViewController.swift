//
//  ViewController.swift
//  CalculatorAssign
//
//  Created by Alisha Zaveri on 22/01/17.
//  Copyright © 2017 CentennialCollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var NumberOnScreen:Double = 0;
    var PreviousNumber:Double = 0;
    var PerformingMath = false;
    var Operation = 0;
    var decimalIsPressed = false;
    
    @IBOutlet weak var Label: UILabel!
    
    // All the numbers function
    @IBAction func btnNumbers(_ sender: UIButton)
    {
        if PerformingMath == true
        {
            Label.text = String(sender.tag-1) //having the previous number + new number
            NumberOnScreen = Double(Label.text!)!
            if decimalIsPressed == false {
                Label.text = Label.text! + "."
                decimalIsPressed = true
            }
            PerformingMath = false
        }
        else
        {
        
        Label.text = Label.text! + String(sender.tag-1)  // Each button is assigned a tag number
        NumberOnScreen = Double(Label.text!)!  //convert the number to real
        }
        
    }
    
    //All the opertaors function
    @IBAction func btnOperators(_ sender: UIButton)
    {
        if Label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            PreviousNumber = Double(Label.text!)!
            
            if sender.tag == 12  //Divide
            {
                Label.text = "/";
            }
            else if sender.tag == 13  //Multiply
            {
                Label.text = "x";
            }
            else if sender.tag == 14  //Minus
            {
                Label.text = "-";
            }
            else if sender.tag == 15  //Plus
            {
               Label.text = "+";
            }
            else if sender.tag == 17  //Sqrt
            {
                Label.text = "%";
            }
            
            Operation = sender.tag
            PerformingMath = true;
        }
        
        else if sender.tag == 16
        {
            if Operation == 12
            {
                Label.text = String(PreviousNumber / NumberOnScreen)
            }
            else if Operation == 13
            {
                Label.text = String(PreviousNumber * NumberOnScreen)
            }
            else if Operation == 14
            {
                Label.text = String(PreviousNumber - NumberOnScreen)
            }
            else if Operation == 15
            {
                Label.text = String(PreviousNumber + NumberOnScreen)
            }
            else if Operation == 17
            {
                Label.text = String(PreviousNumber + NumberOnScreen)
            }

        }
        else if sender.tag == 11
        {
            Label.text = ""
            PreviousNumber = 0;
            NumberOnScreen = 0;
            Operation = 0;
        }
    }
    

}

