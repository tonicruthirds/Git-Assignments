//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var textInputField: UITextField!
    @IBOutlet weak var fibNumber: UILabel!


        
        /*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
    
    
    @IBAction func calculateTapped(sender: AnyObject) {
        if textInputField != nil {
            let indexOfFibonacciNumber = textInputField.text.toInt()
            let fibonacciNumberAtIndex = FibonacciAdder().fibonacciNumberAtIndex(indexOfFibonacciNumber!)
            fibNumber.text = String(fibonacciNumberAtIndex)
 
        }
    }
    
}

class FibonacciAdder {
    func fibonacciNumberAtIndex(indexOfFibonacciNumber: Int) -> Int{
        if(indexOfFibonacciNumber == 1){
            return 0;
        }
        if(indexOfFibonacciNumber == 2){
            return 1;
        }
        return fibonacciNumberAtIndex(indexOfFibonacciNumber - 1) + fibonacciNumberAtIndex(indexOfFibonacciNumber - 2);
    }
    
}





    