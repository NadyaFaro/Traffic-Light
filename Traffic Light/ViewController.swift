//
//  ViewController.swift
//  Traffic Light
//
//  Created by Max on 18.09.2019.
//  Copyright © 2019 Nadzeya Artuhanava. All rights reserved.
//

import UIKit

enum LightColour {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    private var lightColour: LightColour = .red
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 1.5
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 1.5
        greenLight.layer.cornerRadius = greenLight.frame.width / 1.5
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }

    @IBAction func pressStartButton() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch lightColour {
        case .red:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            lightColour = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            lightColour = .green
        case .green:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            lightColour = .red
        }
    }
    
}

