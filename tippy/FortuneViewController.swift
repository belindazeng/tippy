//
//  FortuneViewController.swift
//  tippy
//
//  Created by Eden on 9/30/16.
//  Copyright © 2016 Eden. All rights reserved.
//

import UIKit

class FortuneViewController: UIViewController {
    
    @IBOutlet weak var fortuneTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // when the view appears
        
        let possibleFortunes = ["A foolish man listens to his heart, a wise man listens to cookies.", "You will be hungry again in an hour.", "About time I got out of that cookie."]
        let size = UInt32(possibleFortunes.count)
        let randomIndex = Int(arc4random_uniform(size) + 1) - 1
        fortuneTextView.text = possibleFortunes[randomIndex]

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
