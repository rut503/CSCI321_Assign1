//
//  ViewController.swift
//  Assignment1
//
//  Created by
//      Rutvik Patel on 9/20/20.
//      Aviraj Parmar on 9/20/20.
//  Copyright © 2020 Rut Codes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageInYears: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /**
    Executes a button action that calculates the human equivilant age for a dog
     based on average medium-sized dog's life.
    */
    @IBAction func ageButton() {
        
        // when the button is pressed, the keyboard will go away
        self.view.endEditing(true)
        
        guard let age = ageInYears.text, !age.isEmpty else {
            alert( message: "Please enter an age for your dog.")
            return
        }
        
        guard let dogAge = Int(age) else {
            alert(message: "Please enter proper age.")
            return
        }
        
        var equivilantHumanAge = 0
        
        // using ternary operators to add up human equivialt age for a dog.
        // Dog's Year 1 = 15 Human Years
        equivilantHumanAge += (dogAge >= 1 ? 15 : 0)
        // Dog's Year 2 =  9 Human Years
        equivilantHumanAge += (dogAge >= 2 ? 9 : 0)
        // Dog's Year 3+ = 5 Human years for rest of the dog years.
        equivilantHumanAge += (dogAge >= 3 ? 5 * (dogAge - 2) : 0)
        
        outputLabel.text = "Your dog is \(equivilantHumanAge) in Human Years."
    }
    
    /**
     Closes the keyboard when user touches on other parts of the screen
    */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /**
    Displays alert in the app with a custome message and a close button to close alert.
     
     - Parameter message: The custom alert message.
    */
    func alert( message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
