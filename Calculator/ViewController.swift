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
    
    
    
    
    @IBAction func numbers(_ sender: UIButton){
        if performMath == true {
            numLabel.text = String(sender.tag-1)
            currentNum = Double(numLabel.text!)!
            performMath = false
        } else {
            numLabel.text = numLabel.text! + String(sender.tag-1)
            currentNum = Double(numLabel.text!)!
            
        }
        
        
    }
    
    @IBAction func buttons(_ sender: UIButton){
        
        if numLabel.text != "" && sender.tag != 11 && sender.tag != 16{
            
            preNum = Double(numLabel.text!)!
            
            if sender.tag == 12 {
                numLabel.text = "/"
            } else if sender.tag == 13{
                numLabel.text = "*"
            } else if sender.tag == 14{
                numLabel.text = "-"
            } else if sender.tag == 15{
                numLabel.text = "+"
            }
            
            operation = sender.tag
            performMath = true
            
        } else if sender.tag == 16{
            if operation == 12{
                numLabel.text = String(preNum / currentNum)
            }else if operation == 13{
                numLabel.text = String(preNum * currentNum)
            }else if operation == 14{
                numLabel.text = String(preNum - currentNum)
            }else if operation == 15{
                numLabel.text = String(preNum + currentNum)
            }
            
        }else if sender.tag == 11{
            currentNum = 0
            preNum = 0
            numLabel.text = ""
            operation = 0
            }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
}

