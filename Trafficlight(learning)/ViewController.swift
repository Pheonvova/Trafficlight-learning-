//
//  ViewController.swift
//  Trafficlight(learning)
//
//  Created by Pheon on 13.05.2020.
//  Copyright © 2020 Pheon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var switchLightButton: UIButton!
    
    var light: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        light = redLight
        
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = 49
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 49
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = 49
    }
    
    
    
    
    @IBAction func switchLight(_ sender: Any) {
        
        
        
        switch light {
        case  redLight:
            light = yellowLight
            switchLightButton.setTitle("Red", for: .normal)
 
            greenLight.alpha = 0.3
            redLight.alpha = 1
        case yellowLight:
            light = greenLight
            switchLightButton.setTitle("Yellow", for: .normal)
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        case greenLight:
            light = redLight
            switchLightButton.setTitle("Green", for: .normal)
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        default:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            switchLightButton.setTitle("Off", for: .normal)
            
        }
    }
    
}

