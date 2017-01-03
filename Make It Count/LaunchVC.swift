//
//  LaunchVC.swift
//  Make It Count
//
//  Created by Aryan Sharma on 03/01/17.
//  Copyright © 2017 Aryan Sharma. All rights reserved.
//

import UIKit

class LaunchVC: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapsPressed))
        gestureRecognizer.delegate = self
        gestureRecognizer.numberOfTapsRequired = 3
        gestureRecognizer.numberOfTouchesRequired = 3
        view.addGestureRecognizer(gestureRecognizer)
    }
    
    func tapsPressed(gestureReconizer: UILongPressGestureRecognizer) {
        print("Taps Detected")
        performSegue(withIdentifier: "launchToMainSegue", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

