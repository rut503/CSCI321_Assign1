//
//  ViewController.swift
//  Assignment1
//
//  Created by Rutvik Patel on 9/20/20.
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

    @IBAction func ageButton() {
        
        ageInYears.resignFirstResponder()
        guard let age = ageInYears.text, !age.isEmpty else {
            alert( message: "Please enter Dog's Age.")
            return
        }
        
        var numericAge = Int(age)!
        numericAge = numericAge + 15
        
        outputLabel.text = "Your dog is \(numericAge) in Human Years."
    }
    
    func alert( message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

