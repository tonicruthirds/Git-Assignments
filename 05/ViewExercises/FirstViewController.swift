//
//  FirstViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
// need to add border to boxes tc

import UIKit

class FirstViewController: ExerciseViewController {
    
    var redBox : UIButton?
    var blackBox : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 1"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        
        redBox = UIButton(frame: CGRect(x: 0, y: 63, width: CGRectGetWidth(self.exerciseView.frame), height: 10))
//        redBox.layer.cornerRadius = 5
//        redBox.layer.borderWidth = 1
//        redBox.layer.borderColor = UIColor.redColor().CGColor
        redBox?.backgroundColor = UIColor.redColor()
        self.exerciseView.addSubview(redBox!)
      
        
        blackBox = UIButton(frame: CGRect(x: 0, y: CGRectGetMaxY(self.exerciseView.frame) - 55, width: CGRectGetWidth(self.exerciseView.frame), height: 10))
        blackBox?.backgroundColor = UIColor.blackColor()
        self.exerciseView.addSubview(blackBox!)

        
        /* TODO:
        Create a red box (10px tall, the width of the screen) with a black border on the very top of the screen below the nav bar,
        and a black box with a red border on the very bottom of the screen (same dimensions), above the toolbar.
        
        Use Springs & Struts.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.rawValue)
    }
    
    func next() {
        self.performSegueWithIdentifier("two", sender: nil)
    }
}
