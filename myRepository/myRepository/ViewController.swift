//
//  ViewController.swift
//  myRepository
//
//  Created by Lofi on 2019/4/15.
//  Copyright © 2019 Lofi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view_cake: UIView!
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    var isOpen:Bool = true
    @IBOutlet weak var bton_cake: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeCake(_ sender: Any) {
        bton_cake.isEnabled = false
        
//        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseInOut, animations: {
//            self.view_cake.layer.cornerRadius = self.isOpen ? 0 : self.view_cake.frame.height/2
//        }) { (complete) in
//            self.isOpen = !self.isOpen
//            self.bton_cake.isEnabled = true
//        }
        
        UIView.animate(withDuration: 0.8, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
            self.view_cake.layer.cornerRadius = self.isOpen ? 0 : self.view_cake.frame.height/2
            
        }) { (complete) in
            self.isOpen = !self.isOpen
            self.bton_cake.isEnabled = true
        }
    }
    
}

extension UIColor{
    func Color(R:Float,G:Float,B:Float,A:Float) -> UIColor {
        return UIColor.init(red: CGFloat(R/255.0), green: CGFloat(G/255.0), blue: CGFloat(B/255.0), alpha: CGFloat(A))
    }
}

