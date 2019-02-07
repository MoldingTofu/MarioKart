//
//  ViewController.swift
//  MarioKart
//
//  Created by jeremy on 2/6/19.
//  Copyright © 2019 Jeremy Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let kartView = sender.view!
        kartView.center = location
        
    }
    
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
        
    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
}

