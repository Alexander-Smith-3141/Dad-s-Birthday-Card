//
//  ConstraintsViewController.swift
//  Dad's Birthday Card
//
//  Created by Alex Smith on 2017-11-22.
//  Copyright © 2017 Alex Smith. All rights reserved.
//

import UIKit

class ConstraintsViewController: UIViewController {
    
    var isCentred = true
    @IBOutlet var mySquare: UIView!
    
    @IBOutlet var centerYViewConstraint: NSLayoutConstraint!
    
    @IBAction func toggleAnimation(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.7, options: .curveEaseInOut, animations: {
            
            (self.isCentred) ? self.constraintOff() : self.constraintOn()
            
            self.view.layoutIfNeeded()
        }, completion: nil)
    }

    private func constraintOn() {
        
//                mySquare.transform = .identity
        self.centerYViewConstraint.isActive = true
        
        
        self.isCentred = !self.isCentred
    }
    
    private func constraintOff() {
        
        self.centerYViewConstraint.isActive = false
        
//                mySquare.transform = CGAffineTransform(translationX: 0, y: 400).concatenating(CGAffineTransform(rotationAngle: 90))
        self.isCentred = !self.isCentred
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mySquare.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        mySquare.layer.position = CGPoint(x: mySquare.bounds.width / 2, y: mySquare.bounds.height / 2)
        // Do any additional setup after loading the view.
    }
}
