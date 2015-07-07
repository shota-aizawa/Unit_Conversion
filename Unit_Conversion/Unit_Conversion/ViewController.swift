//
//  ViewController.swift
//  Unit_Conversion
//
//  Created by 相澤渉太 on 2015/07/07.
//  Copyright (c) 2015年 Shota Aizawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var total:Int = 0
    var valueString:String! = ""
    var mode:Int = 0
    
    
    @IBAction func switchTemperature(sender: UISwitch) {
        if(sender.on == true){
            mode = 1
        }else{
            mode = 0
            total = 0
            valueString = ""
            LabelFahrenheit.text = "0"
        }
        
    }
    
    
    @IBAction func switchHeavy(sender: UISwitch) {
        if (sender.on == true){
            mode = 2
        }else{
            mode = 0
            total = 0
            valueString = ""
            LabelPond.text = "0"
        }
    }
    
    
    @IBAction func switchLight(sender: UISwitch) {
        if (sender.on == true){
            mode = 3
        }else{
            mode = 0
            total = 0
            valueString = ""
            LabelOz.text = "0"
        }
    }
    
    
    
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
        var str:String! = sender.titleLabel!.text
        var num:Int! = str.toInt()
        if (num == 0 && total == 0){
            return
        }
        
        valueString = valueString.stringByAppendingString(str)
        switch mode{
        
        case 1:
            LabelFahrenheit.text = valueString
            break
        case 2:
            LabelPond.text = valueString
            break
        case 3:
            LabelOz.text = valueString
            break
        default:
            break
            
        }
        total = valueString.toInt()!
        
        
    }
    
    @IBAction func tappedC(sender: UIButton) {
        total = 0
        valueString = ""
        LabelFahrenheit.text = "0"
        LabelPond.text = "0"
        LabelOz.text = "0"
        
        
    }
    
    
}

