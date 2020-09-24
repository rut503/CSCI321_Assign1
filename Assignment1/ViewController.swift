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

    @IBAction func ageButton() {
        
        guard let age = ageInYears.text, !age.isEmpty else {
            alert( message: "Please enter Dog's Age.")
            return
        }
        
        var numericAge = Int(age)!
        let temp = numericAge

        if ( numericAge == 1 ) {
            numericAge = 15
        }
        else if ( numericAge == 2) {
            numericAge = 24
        }
        else {
            numericAge = 15 + 9 + 5 * (temp - 2)
        }
        
        outputLabel.text = "Your dog is \(numericAge) in Human Years."
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        ageInYears.resignFirstResponder()
    }
    
    func alert( message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
