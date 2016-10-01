//
//  ViewController.swift
//  tippy
//
//  Created by Eden on 9/30/16.
//  Copyright © 2016 Eden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var groupControl: UISegmentedControl!
    @IBOutlet weak var personalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // everytime the view loads
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTipIndex = defaults.integerForKey("defaultTipIndex")
        
        let defaultGroupIndex = defaults.integerForKey("defaultGroupIndex")
        tipControl.selectedSegmentIndex = defaultTipIndex
        groupControl.selectedSegmentIndex = defaultGroupIndex
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let groupSizes = [1.0, 2.0, 3.0 ,4.0 ,5.0 ]
        let personal = total / groupSizes[groupControl.selectedSegmentIndex]
        
        personalLabel.text = String(format: "$%.2f", personal)
    }
}

