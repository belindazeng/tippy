//
//  SettingsViewController.swift
//  tippy
//
//  Created by Eden on 9/30/16.
//  Copyright © 2016 Eden. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var groupControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setDefaultGroupSize(sender: AnyObject) {
        
        let defaultGroupIndex = groupControl.selectedSegmentIndex
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultGroupIndex, forKey: "defaultGroupIndex")
        defaults.synchronize()
        
    }
    
    @IBAction func setDefaultTip(sender: AnyObject) {
        let defaultTipIndex = tipControl.selectedSegmentIndex
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipIndex, forKey: "defaultTipIndex")
        defaults.synchronize()

    }
    
    

    
}
