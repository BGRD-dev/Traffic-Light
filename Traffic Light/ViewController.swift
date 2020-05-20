//
//  ViewController.swift
//  Traffic Light
//
//  Created by Boris Bogorad on 5/20/20.
//  Copyright © 2020 Boris Bogorad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var actionButton: UIButton!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        
        yellowLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        
        greenLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        actionButton.layer.cornerRadius = 20
    }
    
    @IBAction func actionButtonPressed() {
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            actionButton.setTitle("NEXT", for: .normal)
        }else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        }else{
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
    
}

