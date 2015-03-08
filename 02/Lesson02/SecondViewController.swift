//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
     var sum = 0
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBAction func addButtonTapped(sender: AnyObject) {
        let number = numberTextField.text.toInt()
        if number != nil {
        sum += number!
        sumLabel.text = String(sum)
        numberTextField.text = ""
        }
    }
}
