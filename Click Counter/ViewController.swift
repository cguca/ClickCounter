//
//  ViewController.swift
//  Click Counter
//
//  Created by Cary Guca on 1/8/21.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // label
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //second label
        let secondLabel = UILabel()
        secondLabel.frame = CGRect(x: 200, y: 150, width: 60, height: 60)
        secondLabel.text = "0"
        secondLabel.textColor = UIColor.red
        view.addSubview(secondLabel)
        self.secondLabel = secondLabel
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        // decrement button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 200, y: 250, width: 60, height: 60)
        decrementButton.setTitle("Decr", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        self.view.backgroundColor = UIColor.white
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.secondLabel.text = "\(self.count)"
        
        self.view.backgroundColor = UIColor.cyan
    }
}

