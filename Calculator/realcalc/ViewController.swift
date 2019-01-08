//
//  ViewController.swift
//  realcalc
//
//  Created by Tsun Lai Lee on 26/10/2018.
//  Copyright © 2018 Tsun Lai Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LaNumberShow: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var newOperation = true
    func AddNumberToInput(number:String){
    var textNumber =
    String(LaNumberShow.text!)
    if newOperation {
    textNumber = ""
    newOperation = false
    }
        textNumber = textNumber + number
        LaNumberShow.text = textNumber
    }
    
    @IBAction func Bu0(_ sender: Any) {
        AddNumberToInput(number: "0")
    }
    @IBAction func Bu1(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    @IBAction func Bu2(_ sender: Any) {
        AddNumberToInput(number: "2")
    }
    @IBAction func Bu3(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    @IBAction func Bu4(_ sender: Any) {
        AddNumberToInput(number: "4")
    }
    @IBAction func Bu5(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    @IBAction func Bu6(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    @IBAction func Bu7(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    @IBAction func Bu8(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    @IBAction func Bu9(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    
    var op = "+"
    var number1:Double?
    @IBAction func BuMul(_ sender: Any) {
        op = "*"
        number1 = Double(LaNumberShow.text!)
        newOperation = true
    }
    @IBAction func BuDiv(_ sender: Any) {
        op = "/"
        number1 = Double(LaNumberShow.text!)
        newOperation = true
    }
    @IBAction func BuPlus(_ sender: Any) {
        op = "+"
        number1 = Double(LaNumberShow.text!)
        newOperation = true
    }
    @IBAction func BuSub(_ sender: Any) {
        op = "-"
        number1 = Double(LaNumberShow.text!)
        newOperation = true
    }
    @IBAction func BuC(_ sender: Any) {
        LaNumberShow.text = "0"
        newOperation = true
    }
    @IBAction func BuPM(_ sender: Any) {
        var textNumber =
        String(LaNumberShow.text!)
        textNumber = "-" + textNumber
        LaNumberShow.text = textNumber
    }
    @IBAction func BuPercent(_ sender: Any) {
        var number1 = Double(LaNumberShow.text!)
        number1 = number1!/100.0
        LaNumberShow.text = String(number1!)
        newOperation = true
    }
    @IBAction func BuEqual(_ sender: Any) {
        let number2 = Double(LaNumberShow.text!)
        var result:Double?
        switch op {
        case "*":
            result = number1! * number2!
        case "/":
            result = number1! / number2!
        case "+":
            result = number1! + number2!
        case "-":
            result = number1! - number2!
        default:
            result = 0.0
        }
        LaNumberShow.text = String(result!)
        newOperation = true
    }
}

