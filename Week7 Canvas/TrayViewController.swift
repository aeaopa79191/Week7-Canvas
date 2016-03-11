//
//  TrayViewController.swift
//  Week7 Canvas
//
//  Created by KaKin Chiu on 3/10/16.
//  Copyright © 2016 KaKinChiu. All rights reserved.
//

import UIKit

class TrayViewController: UIViewController {

    @IBOutlet var panGestureRecognizer: UIPanGestureRecognizer!

    @IBOutlet var trayView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @IBAction func onTrayPanGesture(sender: AnyObject) {
        var trayOriginalCenter: CGPoint!
//        let location = sender.locationInView(view)
//        let translation = sender.translationInView(view)
        
        
        // Absolute (x,y) coordinates in parent view's coordinate system
        let point = panGestureRecognizer.locationInView(trayView)
        
        // Total translation (x,y) over time in parent view's coordinate system
        let translation = panGestureRecognizer.translationInView(trayView)
        
        if panGestureRecognizer.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
            trayOriginalCenter = point
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Changed {
            trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + translation.y)
            print("Gesture changed at: \(point)")
            
        trayView.center = CGPoint(x: trayOriginalCenter.x, y: trayOriginalCenter.y + translation.y)
            
        } else if panGestureRecognizer.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
