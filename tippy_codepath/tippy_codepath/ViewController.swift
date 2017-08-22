//
//  ViewController.swift
//  tippy_codepath
//
//  Created by Rajat Bhargava on 8/13/17.
//  Copyright © 2017 Rajat Bhargava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billTxt: UITextField!
    @IBOutlet weak var tipPercentageSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.15, 0.18, 0.20]
        let bill = Double(billTxt.text!) ?? 0
        let selectedTip = tipPercentages[tipPercentageSegment.selectedSegmentIndex]
        let tip = selectedTip*bill
        let total = bill + tip
        tipLabel.text = String.init(format: "$%0.2f", tip)
        totalLabel.text = String.init(format: "$%0.2f", total)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = UserDefaults.standard
        let defaultIndex: Int? = defaults.integer(forKey: "PercentageDefault")
        let selectedDefaults = defaultIndex ?? 0
        
        tipPercentageSegment.selectedSegmentIndex = selectedDefaults
    }
    
}

