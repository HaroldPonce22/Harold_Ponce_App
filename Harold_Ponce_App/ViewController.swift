//
//  ViewController.swift
//  Harold_Ponce_App
//
//  Created by Harold Ponce on 11/16/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ChangeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        updateLabelColors()
    }
    
    func changeColor()->UIColor{
        let red = CGFloat.random(in:0...1)
        let green = CGFloat.random(in:0...1)
        let blue = CGFloat.random(in:0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha:0.5 )
    }
    
    func updateLabelColors(){
        let randomLabelColor = changeColor()
        label1.textColor = randomLabelColor
        label2.textColor = randomLabelColor
        label3.textColor = randomLabelColor
        
        label1.backgroundColor = randomLabelColor
        label2.backgroundColor = randomLabelColor
        label3.backgroundColor = randomLabelColor
        
        
    }
    
   
}

