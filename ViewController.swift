//
//  ViewController.swift
//  TipCalculator
//
//  Created by Mandy Chen on 7/31/17.
//  Copyright © 2017 Mandy Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var percentSlider: UISlider!
    @IBOutlet weak var personField: UITextField!
    @IBOutlet weak var averageBillLabel: UILabel!
    @IBOutlet var tipView: UIView!
    
    let defaults = UserDefaults.standard
    
    @IBAction func percentSlider(_ sender: UISlider) {
        let  tipPercentage = Int(sender.value)
        percentLabel.text = String(format: "%d%%", tipPercentage)
        calculateTip( self )
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if defaults.object(forKey: "defaultTipPercent") != nil {
            percentSlider.value = Float(defaults.integer(forKey: "defaultTipPercent"))
            percentLabel.text = String(format: "%d%%", Int(percentSlider.value))
            calculateTip( percentSlider )
        }
        
        if defaults.object(forKey: "defaultNumOfPeople") != nil {
            personField.text = String(format: "%d", defaults.integer(forKey: "defaultNumOfPeople"))
            calculateAvgTip(self)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear( animated )
        self.tipView.alpha = 1
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.1765, green: 0.8627, blue: 0.8627, alpha: 1.0)
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName : (UIFont(name: "Avenir Next Medium", size: 25))!]
        
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
        UIView.animate(withDuration: 0.3, animations: {
            self.tipView.alpha = 1
        })
    }

    @IBAction func darkerScreen(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3, animations: {
            self.tipView.alpha = 0.9
        })
    }
    
    @IBAction func lighterScreen(_ sender: AnyObject) {
        UIView.animate(withDuration: 0.3, animations: {
            self.tipView.alpha = 1
        })
        print("finish editing")
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
       
        let bill = Double(billField.text!) ?? 0
        
        var percentageStr: String = percentLabel.text!
        percentageStr.remove(at: percentageStr.index(before: percentageStr.endIndex))
        
        let tipPercentage = Double(percentageStr) ?? 0
        
        let tip = bill * tipPercentage / 100
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        calculateAvgTip(self)
    }
    
    @IBAction func calculateAvgTip(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            self.tipView.alpha = 0.9
        })

        let numOfPeople = Double(personField.text!) ?? 1
        
        var totalStr: String = totalLabel.text!
        totalStr.remove(at: totalStr.startIndex)
        
        let total = Double(totalStr) ?? 0
        let averageBill = total / numOfPeople
        averageBillLabel.text = String(format: "$%.2f", averageBill)
    
    }
    
    
}

