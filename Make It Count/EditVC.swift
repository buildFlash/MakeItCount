//
//  EditVC.swift
//  Make It Count
//
//  Created by Aryan Sharma on 03/01/17.
//  Copyright © 2017 Aryan Sharma. All rights reserved.
//

import UIKit

class EditVC: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var Item1TitleText: UITextField!
    @IBOutlet weak var Item2TitleText: UITextField!
    @IBOutlet weak var Item3TitleText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Item1TitleText.delegate = self
        Item2TitleText.delegate = self
        Item3TitleText.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    
    @IBAction func saveBtnPressed(_ sender: Any) {

        let defaults = UserDefaults.standard
        if let text1 = Item1TitleText.text {
            defaults.set("\(text1)", forKey: "item1text")
        }
        if let text2 = Item2TitleText.text {
            defaults.set("\(text2)", forKey: "item2text")
        }
        if let text3 = Item3TitleText.text {
            defaults.set("\(text3)", forKey: "item3text")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        resignFirstResponder()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
