//
//  ViewController.swift
//  CarouselEffect
//
//  Created by  Mr.Ki on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    var counter = 0
    
    
    @IBOutlet weak var redLight: UIView!
    
    @IBOutlet weak var yellowLight: UIView!
    
    @IBOutlet weak var greenLight: UIView!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.backgroundColor = .red
        yellowLight.backgroundColor = .yellow
        greenLight.backgroundColor = .green
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        startButton.layer.cornerRadius = 18
        redLight.layer.cornerRadius = 60
        yellowLight.layer.cornerRadius = 60
        greenLight.layer.cornerRadius = 60
        
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        
        
        
        
        
        
    }
    
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        startButton.setTitle("Next", for: .normal)
        
        // counter = 0
        
        if counter != 3 {
            counter += 1
        } else {
            counter = 0
            startButton.setTitle("Start", for: .normal)
        }
        
        print(counter)
        
        if counter == 1 {
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        } else if  counter == 2 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
        }  else if  counter == 3 {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }  else {
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        }
        
        
    }
    
    
    
    
}


