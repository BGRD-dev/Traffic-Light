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
    
    let lightStatusOn: CGFloat = 1.0
    let lightStatusOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = lightStatusOff
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        
        yellowLightView.alpha = lightStatusOff
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        
        greenLightView.alpha = lightStatusOff
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        actionButton.layer.cornerRadius = actionButton.frame.width / 10
    }
    
    @IBAction func actionButtonPressed() {
        if redLightView.alpha != lightStatusOn && yellowLightView.alpha != lightStatusOn {
            redLightView.alpha = lightStatusOn
            greenLightView.alpha = lightStatusOff
            actionButton.setTitle("NEXT", for: .normal)
        }else if redLightView.alpha == lightStatusOn {
            redLightView.alpha = lightStatusOff
            yellowLightView.alpha = lightStatusOn
        }else{
            yellowLightView.alpha = lightStatusOff
            greenLightView.alpha = lightStatusOn
        }
    }
    
}

