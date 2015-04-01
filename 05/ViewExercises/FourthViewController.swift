//
//  FourthViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
// 

import UIKit

class FourthViewController: ExerciseViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    var blueBox : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 4"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
//        let blueWidth = Int((self.exerciseView.frame) - 10)
        
//        blueBox = UIButton(frame: CGRect(x: 0, y: blueWidth, width: CGRectGetWidth(self.exerciseView.frame), height: 20))
//        blueBox?.backgroundColor = UIColor.blueColor()
//        self.exerciseView.addSubview(blueBox!)
        
    
        
        /* TODO:
        Build a scroll view that takes up the entire screen. 
        
        In the scroll view, place a blue box at the top (20px high, 10px horizontal margins with the screen, a very tall (1000+px, width the same as the screen) purple label containing white text in the middle, and a red box at the bottom (20px high, 10px horizontal margins with the screen). The scroll view should scroll the entire height of the content.
        
        Use Autolayout.

        
        Your view should be in self.exerciseView, not self.view.
        
        imageView = UIImageView()
        imageView!.image = UIImage(named: "62.jpg")
        imageView!.sizeToFit()
        
        scrollView.contentSize = imageView!.frame.size
        scrollView.addSubview(imageView!)
        */
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> Int {
        return UIInterfaceOrientation.Portrait.rawValue
    }
    
    func next() {
        self.performSegueWithIdentifier("five", sender: nil)
    }

}
