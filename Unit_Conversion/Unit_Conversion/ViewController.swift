//
//  ViewController.swift
//  Unit_Conversion
//
//  Created by 相澤渉太 on 2015/07/07.
//  Copyright (c) 2015年 Shota Aizawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var LabelFahrenheit: UILabel!
    
    
    @IBOutlet weak var LabelPond: UILabel!
    
    
    @IBOutlet weak var LabelOz: UILabel!
    
    
    @IBOutlet weak var labelCelsius: UILabel!
    
    
    @IBOutlet weak var labelKg: UILabel!
    
    
    @IBOutlet weak var labelMl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tappedGo(sender: UIButton) {
    }
    
    
    @IBAction func tappedNumber(sender: UIButton) {
    }
    
    @IBAction func tappedC(sender: UIButton) {
    }
    
    
}

