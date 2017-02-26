//
//  ViewController.swift
//  StepperView - Swift
//
//  Created by Hayden Goldman on 2/24/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, StepperViewValueDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let stepperView = StepperView(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        stepperView.center = self.view.center
        
        self.view.addSubview(stepperView)
        
        stepperView.delegate = self
    }
    
    func stepperViewValue (value: Int) {
        print(String(value))
    }

}

