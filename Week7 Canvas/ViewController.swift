//
//  ViewController.swift
//  Week7 Canvas
//
//  Created by KaKin Chiu on 3/10/16.
//  Copyright © 2016 KaKinChiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trayView: UIView!
    @IBOutlet var panGestureRecognizer: UIPanGestureRecognizer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onTrayPanGesture(sender: UIPanGestureRecognizer) {
        var trayOriginalCenter: CGPoint!

        
        // Absolute (x,y) coordinates in parent view's coordinate system
        let point = panGestureRecognizer.locationInView(view)
        
        // Total translation (x,y) over time in parent view's coordinate system
        let translation = panGestureRecognizer.translationInView(view)
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    
    func velocityInView(view: UIView?) -> CGPoint{
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

