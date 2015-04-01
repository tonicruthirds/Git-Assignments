//
//  FifthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
// add red border; center button; movement. return to green.

import UIKit

class FifthViewController: ExerciseViewController {

    var greenButton : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 5"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")

        
        greenButton = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
        greenButton?.setTitle("Tap me!", forState: UIControlState.Normal)
        greenButton?.backgroundColor = UIColor.greenColor()
        self.exerciseView.addSubview(greenButton!)
        
        greenButton?.addTarget(self, action: "buttonTapped", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
        
        func buttonTapped() {
            NSLog("Custom Button Clicked")
            greenButton?.backgroundColor = UIColor.redColor()
   
        
        
        /* TODO:
        Create a green button with a red border that says ‘Tap me!’ (50px by 50px), center it in the middle of the screen.
        Once tapped, the button should animate up 20 pixels and turn red, then immediately back down 20 pixels and turn back to green. It should not be clickable while animating.
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("six", sender: nil)
    }

}
