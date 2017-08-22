//
//  SettingsViewController.swift
//  tippy_codepath
//
//  Created by Rajat Bhargava on 8/20/17.
//  Copyright © 2017 Rajat Bhargava. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipPercSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        let defaults = UserDefaults.standard
        let defaultIndex: Int? = defaults.integer(forKey: "PercentageDefault")
        let selectedDefaults = defaultIndex ?? 0
        
        defaultTipPercSegment.selectedSegmentIndex = selectedDefaults
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func setDefault(_ sender: Any) {
        let defaultPercentageIndex = defaultTipPercSegment.selectedSegmentIndex
        
        let defaults = UserDefaults.standard
        defaults.set(defaultPercentageIndex, forKey: "PercentageDefault")
        defaults.synchronize()
    }

 
    

}
