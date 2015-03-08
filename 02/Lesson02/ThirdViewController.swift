//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var fieldEven: UILabel!
    
    
    @IBAction func calculateTapped(sender: AnyObject) {
        var number = numberField.text.toInt()
        
        if number! % 2 == 0 {
            println("It's even.")
        } else {
            println("It's not even.")
        }
    }
}
