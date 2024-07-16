//
//  ViewController.swift
//  Calculator
//
//  Created by Aydın Kutlu on 15.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numLabel: UILabel!
    
    var currentNum: Double = 0
    var preNum: Double = 0
    var performMath = false
    var operation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func numbers(_ sender: UIButton){
        if performMath == true {
            numLabel.text = String(sender.tag-1)
        }
    }

    
}

