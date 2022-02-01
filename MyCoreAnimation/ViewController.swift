//
//  ViewController.swift
//  MyCoreAnimation
//
//  Created by Alexandr on 01.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let layer = CALayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        layer.backgroundColor = UIColor.systemGray.cgColor
        layer.frame = CGRect(x: 100, y: 100, width: 120, height: 120)
        layer.cornerRadius = 20
        view.layer.addSublayer(layer)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.animateMovement()
            self.animateOpacity()
            self.animateRotation()
            self.animateScale()
        }
        
    }
    
    func animateMovement() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = CGPoint(x: layer.frame.origin.x + (layer.frame.size.width / 2),
                                      y: layer.frame.origin.y + (layer.frame.size.height / 2))
        
        animation.toValue = CGPoint(x: 300, y: 800)
        animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        animation.duration = 2
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        layer.add(animation, forKey: nil)
    }
    
    func animateOpacity() {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = 1
        
        animation.toValue = 0
        animation.duration = 2
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        layer.add(animation, forKey: nil)
    }
    
    func animateRotation() {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.fromValue = 0
        animation.toValue = 180
        animation.duration = 50
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        layer.add(animation, forKey: nil)
    }
    
    func animateScale() {
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.fromValue = 1
        animation.toValue = 10
        animation.duration = 2
        animation.timingFunction = CAMediaTimingFunction(name: .easeIn)
        animation.fillMode = .forwards
        animation.isRemovedOnCompletion = false
        animation.beginTime = CACurrentMediaTime()
        layer.add(animation, forKey: nil)
    }


}

