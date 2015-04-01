//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
// same as two tc

import UIKit

var blueSquare : UIButton?
var blueSquareTwo : UIButton?
var blueSquareThree : UIButton?
var blueSquareFour : UIButton?



class ThirdViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen.
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */

    
    blueSquare = UIButton(frame: CGRect(x: 0, y: CGRectGetMaxY(self.exerciseView.frame) - 60, width: 20, height: 20))
    blueSquare?.backgroundColor = UIColor.blueColor()
    self.exerciseView.addSubview(blueSquare!)
    
    blueSquareTwo = UIButton(frame: CGRect(x: 300, y: CGRectGetMaxY(self.exerciseView.frame) - 60, width: 20, height: 20))
    blueSquare?.backgroundColor = UIColor.blueColor()
    self.exerciseView.addSubview(blueSquare!)
    
    blueSquareThree = UIButton(frame: CGRect(x: 0, y: CGRectGetMaxY(self.exerciseView.frame) - 60, width: 20, height: 20))
    blueSquare?.backgroundColor = UIColor.blueColor()
    self.exerciseView.addSubview(blueSquare!)
    
    blueSquareFour = UIButton(frame: CGRect(x: 0, y: CGRectGetMaxY(self.exerciseView.frame) - 60, width: 20, height: 20))
    blueSquare?.backgroundColor = UIColor.blueColor()
    self.exerciseView.addSubview(blueSquare!)
    
     func shouldAutorotate() -> Bool {
        return true
        }
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }

}
