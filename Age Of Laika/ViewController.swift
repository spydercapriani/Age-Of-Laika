//
//  ViewController.swift
//  Age Of Laika
//
//  Created by Daniel Gilbert on 9/18/14.
//  Copyright (c) 2014 Daniel Gilbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtHumanYears: UITextField!
    @IBOutlet weak var lblDogYears: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // User presses Convert button after entering numbers in text field
    @IBAction func btnConvertToDogYears(sender: UIButton) {
        ConvertHumanToDogYears()
    }
    // User hits Return after entering numbers in text field
    @IBAction func GoButtonPressed(sender: UITextField) {
        ConvertHumanToDogYears()
    }
    
    func ConvertHumanToDogYears(){
        let HumanYears:Int = txtHumanYears.text.toInt()!
        var dogYears:Double = 0
        
        for index in 1...HumanYears {
            if index <= 2 {
                dogYears += 10.5
            }else{
                dogYears += 4
            }
        }

        
        lblDogYears.text = "\(dogYears)"
        lblDogYears.hidden = false
        txtHumanYears.text = ""
        txtHumanYears.resignFirstResponder()
    }
}

