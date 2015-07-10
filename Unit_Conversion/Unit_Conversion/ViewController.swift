//
//  ViewController.swift
//  Unit_Conversion
//
//  Created by 相澤渉太 on 2015/07/07.
//  Copyright (c) 2015年 Shota Aizawa. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

    var total:Double! = 0
    var valueString:String! = ""
    var mode:Int = 0
    var decimalPressed:Int = 0
    

    
    
    @IBAction func switchTemperature(sender: UISwitch) {
        if(sender.on == true){
            mode = 1
        }else{
            mode = 0
            total = 0
            valueString = ""
            LabelFahrenheit.text = "0"
            labelCelsius.text = "0"
            decimalPressed = 0
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
            labelKg.text = "0"
            decimalPressed = 0
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
            labelMl.text = "0"
            decimalPressed = 0
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
        LabelFahrenheit.layer.borderWidth = 2.5
        LabelFahrenheit.layer.borderColor = UIColor.blueColor().CGColor
        LabelFahrenheit.layer.cornerRadius = 15.0
        
        LabelPond.layer.borderWidth = 2.5
        LabelPond.layer.borderColor = UIColor.blueColor().CGColor
        LabelPond.layer.cornerRadius = 15.0
        
        LabelOz.layer.borderWidth = 2.5
        LabelOz.layer.borderColor = UIColor.blueColor().CGColor
        LabelOz.layer.cornerRadius = 15.0
        
        
        labelCelsius.layer.borderWidth = 2.5
        labelCelsius.layer.borderColor = UIColor.blueColor().CGColor
        labelCelsius.layer.cornerRadius = 15.0
        
        labelKg.layer.borderWidth = 2.5
        labelKg.layer.borderColor = UIColor.blueColor().CGColor
        labelKg.layer.cornerRadius = 15.0
        
        labelMl.layer.borderWidth = 2.5
        labelMl.layer.borderColor = UIColor.blueColor().CGColor
        labelMl.layer.cornerRadius = 15.0
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tappedGo(sender: UIButton) {
        var number:Double! = total
        var decimal:Float = float_t(total)
        
        
        switch mode{
        
        case 1:
            number = (total-32)*5/9
            let a = Int(number)
            labelCelsius.text = a.description
            break
        case 2:
            decimal = round(decimal*4536/10000*100)/100
            labelKg.text = decimal.description
            break
        case 3:
            decimal = round(decimal*295735/10000)
            let z = Int(decimal)
        
            labelMl.text = z.description
            break
        default:
            break
            
        
        }
        
    }
    
//    func concatZero (s1:String...) ->String{
//        var buff:String = "0."
//        for s in s1 {
//            buff += s
//        }
//        return buff
//    }
//    
//    func concatNonZero(s2:String...) -> String{
//        var buff2:String = ""
//        for t in s2 {
//            buff2 += t
//        }
//        return buff2
//        
//    }

    
    
    
    @IBAction func tappedNumber(sender: UIButton) {
        var current:String! = sender.titleLabel!.text
        var num:Double! = NSString (string: current).doubleValue
        
        if (num == 0 && total == 0){
            return
        }else if (decimalPressed == 0){
        
        valueString = valueString.stringByAppendingString(current)
        
            var formatter = NSNumberFormatter()
            formatter.maximumFractionDigits = 5
            formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
            var n:NSNumber = formatter.numberFromString(valueString)!

            
            
            switch mode{
                
            case 1:
                LabelFahrenheit.text = formatter.stringFromNumber(n)
                break
            case 2:
                LabelPond.text = formatter.stringFromNumber(n)
                break
            case 3:
                LabelOz.text = formatter.stringFromNumber(n)
                break
            default:
                break}
                
        total = NSString(string: valueString).doubleValue
            
        }else if (decimalPressed == 1){
            
            
                    
                        valueString = valueString.stringByAppendingString(current)
                        var dec:Double = NSString (string: valueString).doubleValue
                        dec = dec/10
                    
                    valueString = dec.description
                    decimalPressed += 1
                    

        
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
                
        total = NSString(string: valueString).doubleValue
            
        }  else {
            valueString = valueString.stringByAppendingString(current)
            
            var formatter = NSNumberFormatter()
            formatter.maximumFractionDigits = 5
            formatter.numberStyle = NSNumberFormatterStyle.DecimalStyle
            var n:NSNumber = formatter.numberFromString(valueString)!
            
            
            
            switch mode{
                
            case 1:
                LabelFahrenheit.text = formatter.stringFromNumber(n)
                break
            case 2:
                LabelPond.text = formatter.stringFromNumber(n)
                break
            case 3:
                LabelOz.text = formatter.stringFromNumber(n)
                break
            default:
                break}
            
            total = NSString(string: valueString).doubleValue
            
            }
            
        
        
    }
    
    
    
    @IBAction func tappedDecimal(sender: UIButton) {
        
        decimalPressed += 1
        
//        if (LabelFahrenheit.text == "0" && LabelPond.text == "0" && LabelOz.text == "0" ){
//            switch mode{
//            case 1:
//                LabelFahrenheit.text = "0."
//            break
//            case 2:
//                LabelPond.text = "0."
//            break
//            case 3:
//                LabelOz.text = "0."
//            break
//            default:
//            break
//                
//            }
//        }else {
//            switch mode {
//            
//            case 1:
//            LabelFahrenheit.text = LabelFahrenheit.text! + "."
//            break
//            case 2:
//            LabelPond.text = LabelPond.text! + "."
//            break
//            case 3:
//            LabelOz.text = LabelOz.text! + "."
//            break
//            default:
//            break
//    
//            }
//        }
//        
        
    }
    
    
    @IBAction func tappedC(sender: UIButton) {
        total = 0
        valueString = ""
        LabelFahrenheit.text = "0"
        LabelPond.text = "0"
        LabelOz.text = "0"
        labelCelsius.text = "0"
        labelKg.text = "0"
        labelMl.text = "0"
        decimalPressed = 0
        
    }
    
    
    
}

