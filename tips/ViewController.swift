//
//  ViewController.swift
//  tips
//
//  Created by Rachael's Laptop on 3/21/15.
//  Copyright (c) 2015 Rachael Ridao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet var swipeAction: UISwipeGestureRecognizer!
    
    var numOfPeople = 1.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        numOfPeople = 1.0
        //self.view.backgroundColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.15, 0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = (billAmount + tip) / numOfPeople
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
    }

    @IBAction func onSwipe(sender: AnyObject) {
        /*if swipeAction.direction == UISwipeGestureRecognizerDirection.Left && numOfPeople != 1.0 {
            numOfPeople--
        }
        if swipeAction.direction == UISwipeGestureRecognizerDirection.Right && numOfPeople != 3.0 {
            numOfPeople++
        }
        switch numOfPeople {
        case 2.0:
            self.view.backgroundColor = UIColor.redColor()
        case 3.0:
            self.view.backgroundColor = UIColor.cyanColor()
        default:
            self.view.backgroundColor = UIColor.whiteColor()
        }*/
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

