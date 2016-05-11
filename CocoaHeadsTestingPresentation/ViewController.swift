//
//  ViewController.swift
//  CocoaHeadsTestingPresentation
//
//  Created by Andy Obusek on 5/10/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "saveAndContinueSegue") {
            if let welcomeVC = segue.destinationViewController as? WelcomeViewController where nameField.text != "" {
                welcomeVC.name = nameField.text!
            }
        }
    }

}

