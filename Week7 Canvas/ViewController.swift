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
    var trayOriginalCenter: CGPoint!
    var trayCenterWhenOpen: CGFloat = 0.0
    var trayCenterWhenClosed: CGFloat = 0.0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }
    @IBAction func onTrayPanGesture(sender: UIPanGestureRecognizer) {
        
        // Absolute (x,y) coordinates in parent view's coordinate system
        let point = panGestureRecognizer.locationInView(view)
        // Total translation (x,y) over time in parent view's coordinate system
        let translation = panGestureRecognizer.translationInView(view)
        

        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            trayOriginalCenter = trayView.center
            trayCenterWhenOpen = 460.5
            trayCenterWhenClosed = 640
            
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            let velocity = sender.velocityInView(trayView)
            
            print("Gesture changed at: \(point)")
            trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + translation.y)
            
            if velocity.y < 0 {
                trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayCenterWhenOpen)
            }
             else  {
                trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayCenterWhenClosed)
            }
            
            
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

