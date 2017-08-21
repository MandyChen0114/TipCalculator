//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Mandy Chen on 8/2/17.
//  Copyright © 2017 Mandy Chen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var settingView: UIView!
    @IBOutlet weak var darkThemeSwitch: UISwitch!
    @IBOutlet weak var defaultTipPercent: UITextField!
    @IBOutlet weak var defaultNumOfPeople: UITextField!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if defaults.object(forKey: "isDarkTheme") == nil || defaults.bool(forKey: "isDarkTheme") == false {
            darkThemeSwitch.setOn(false, animated: false)
            setLightTheme()
        } else {
            darkThemeSwitch.setOn(true, animated: false)
            setDarkTheme()
        }
        
        if defaults.object(forKey: "defaultTipPercent") == nil {
            setDefaultTipPercentSetting(self);
        } else {
            defaultTipPercent.text = "\(defaults.integer(forKey: "defaultTipPercent"))"
        }
        
        if defaults.object(forKey: "defaultNumOfPeople") == nil {
            setDefaultNumOfPeopleSetting(self);
        } else {
            defaultNumOfPeople.text = "\(defaults.integer(forKey: "defaultNumOfPeople"))"
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTab(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func setDefaultTipPercentSetting(_ sender: AnyObject) {
        let defaultTipPercentAmount = Int(defaultTipPercent.text!) ?? 15
        defaultTipPercent.text = String( defaultTipPercentAmount )
        defaults.set(defaultTipPercentAmount, forKey: "defaultTipPercent")
        defaults.synchronize()
    }
    
    @IBAction func setDefaultNumOfPeopleSetting(_ sender: Any) {
        let defaultNumOfPeopleAmount = Int(defaultNumOfPeople.text!) ?? 1
        defaults.set(defaultNumOfPeopleAmount, forKey: "defaultNumOfPeople")
        defaults.synchronize()
    }
    
    @IBAction func changeDefaultTheme(_ sender: Any) {
        if darkThemeSwitch.isOn {
            defaults.set(true, forKey: "isDarkTheme")
            setDarkTheme()
        } else {
            defaults.set(false, forKey: "isDarkTheme")
            setLightTheme()
        }
    }
    
    func setDarkTheme() {
        view.backgroundColor = UIColor(red:0.26, green: 0.26, blue: 0.26, alpha: 1.0)
        for subView in view.subviews  {
            if let labelView = subView as? UILabel {
                labelView.textColor = UIColor.white
            } else if let textView = subView as? UITextField {
                textView.textColor = UIColor.white
            }
        }
    }
    
    func setLightTheme() {
        view.backgroundColor = UIColor.white
        for subView in view.subviews  {
            if let labelView = subView as? UILabel {
                labelView.textColor = UIColor.black
            } else if let textView = subView as? UITextField {
                textView.textColor = UIColor.black
            }
        }
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
