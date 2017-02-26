//
//  StepperView.swift
//  StepperView - Swift
//
//  Created by Hayden Goldman on 2/25/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

import UIKit

protocol StepperViewValueDelegate {
    func stepperViewValue (value: Int)
}

@IBDesignable

class StepperView: UIView {
    
    var stepperView: UIView = UIView()
    var stepperLabel: UILabel = UILabel()
    var minusButton: UIButton = UIButton()
    var plusButton: UIButton = UIButton()
    var i: Int = 0
    
    var delegate: StepperViewValueDelegate!
    
//    @IBInspectable var minusText: String!
//    @IBInspectable var plusText: String!
//    @IBInspectable var cornerRadius: Float!

    
    override init(frame: CGRect){
        super.init(frame: frame)
            
        self.stepperView.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        self.stepperView.backgroundColor = UIColor.init(colorLiteralRed: 0.5765, green: 0.8000, blue: 0.8667, alpha: 1.0)
        self.stepperView.center = self.center
        self.addSubview(stepperView)
        
        self.stepperLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        self.stepperLabel.text = String(i)
        self.stepperLabel.textAlignment = NSTextAlignment.center
        self.stepperLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.stepperLabel.textColor = UIColor.white
        self.stepperLabel.center = CGPoint(x: self.stepperView.frame.width / 2 , y: self.stepperView.frame.height / 2)
        
        self.stepperView.addSubview(stepperLabel)
        
        self.minusButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        self.minusButton.backgroundColor = UIColor.init(colorLiteralRed: 0.9961, green: 0.8000, blue: 0.7961, alpha: 1.0)
        self.minusButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        self.minusButton.center = CGPoint(x: 50, y: self.stepperView.frame.height / 2)
        self.minusButton.setTitle("-", for: UIControlState.normal)
        self.minusButton.setTitle(" ", for: UIControlState.highlighted)
        self.minusButton.addTarget(self, action: #selector(minusButtonPressed), for: .touchUpInside)
        
        self.stepperView.addSubview(minusButton)
        
        self.plusButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        self.plusButton.backgroundColor = UIColor.init(colorLiteralRed: 0.9961, green: 0.8000, blue: 0.7961, alpha: 1.0)
        self.plusButton.titleLabel!.font = UIFont.systemFont(ofSize: 30)
        self.plusButton.center = CGPoint(x: 250, y: self.stepperView.frame.height / 2)
        self.plusButton.setTitle("+", for: UIControlState.normal)
        self.plusButton.setTitle(" ", for: UIControlState.highlighted)
        self.plusButton.addTarget(self, action: #selector(plusButtonPressed), for: .touchUpInside)
        
        self.stepperView.addSubview(plusButton)
    }
    
    func minusButtonPressed() {
        self.i -= 1
        self.stepperLabel.text = String(self.i)
        self.delegate.stepperViewValue(value: self.i)
    }
    
    func plusButtonPressed() {
        self.i += 1
        self.stepperLabel.text = String(self.i)
        self.delegate.stepperViewValue(value: self.i)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func draw(_ rect: CGRect) {
//        
//        if self.minusText == nil {
//            self.minusText = "-"
//        } else {
//            self.minusButton.titleLabel?.text = self.minusText
//        }
//        
//        if self.plusText == nil {
//            self.plusText = "+"
//        } else {
//            self.plusButton.titleLabel?.text = self.plusText
//        }
//        
//        self.layer.cornerRadius = CGFloat(self.cornerRadius)
//        self.layer.masksToBounds = true
//    }
    
}
