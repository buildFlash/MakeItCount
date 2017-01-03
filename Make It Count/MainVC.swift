//
//  MainVC.swift
//  Make It Count
//
//  Created by Aryan Sharma on 03/01/17.
//  Copyright © 2017 Aryan Sharma. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var Item1CountLbl: UILabel!
    @IBOutlet weak var Item2CountLbl: UILabel!
    @IBOutlet weak var Item3CountLbl: UILabel!
    
    @IBOutlet weak var item1Stepper: UIStepper!
    @IBOutlet weak var item2Stepper: UIStepper!
    @IBOutlet weak var item3Stepper: UIStepper!
    
    @IBOutlet weak var Item1Lbl: UILabel!
    @IBOutlet weak var Item2Lbl: UILabel!
    @IBOutlet weak var Item3Lbl: UILabel!

    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        item1Stepper.minimumValue = 0
        item2Stepper.minimumValue = 0
        item3Stepper.minimumValue = 0

        
        if let item1Count = defaults.string(forKey: "item1Count") {
            Item1CountLbl.text = item1Count
            item1Stepper.value = Double(item1Count)!
            item1Stepper.minimumValue = Double(item1Count)!
        }
        
        if let item2Count = defaults.string(forKey: "item2Count") {
            Item2CountLbl.text = item2Count
            item2Stepper.value = Double(item2Count)!
            item2Stepper.minimumValue = Double(item2Count)!
        }
        
        if let item3Count = defaults.string(forKey: "item3Count") {
            Item3CountLbl.text = item3Count
            item3Stepper.value = Double(item3Count)!
            item3Stepper.minimumValue = Double(item3Count)!
        }
        
        viewDidAppear(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let text1 = defaults.string(forKey: "item1text") {
            Item1Lbl.text = text1
        }
        
        if let text2 = defaults.string(forKey: "item2text") {
            Item2Lbl.text = text2
        }
        
        if let text3 = defaults.string(forKey: "item3text") {
            Item3Lbl.text = text3
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Item1Stepper(_ sender: UIStepper) {
        Item1CountLbl.text = "\(Int(sender.value))"
    }
    
    @IBAction func Item2Stepper(_ sender: UIStepper) {
        Item2CountLbl.text = "\(Int(sender.value))"
    }
    
    @IBAction func Item3Stepper(_ sender: UIStepper) {
        Item3CountLbl.text = "\(Int(sender.value))"
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        defaults.set(Int(Item1CountLbl.text!)!, forKey: "item1Count")
        defaults.set(Int(Item2CountLbl.text!)!, forKey: "item2Count")
        defaults.set(Int(Item3CountLbl.text!)!, forKey: "item3Count")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "editSegue", sender: nil)
    }
    
    
}
