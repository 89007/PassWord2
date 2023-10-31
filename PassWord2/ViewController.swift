//
//  ViewController.swift
//  PassWord2
//
//  Created by Pierson Sisco on 10/23/23.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var passwordTextField: UITextField!
    
    // Define the correct password
    let correctPassword = "6678"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        if let enteredPassword = passwordTextField.text, enteredPassword == correctPassword {
            // Correct password, perform the segue to NextViewController
            performSegue(withIdentifier: "segueToNextViewController", sender: self)
        } else {
            // Incorrect password, you can show an alert or handle it as needed
            let alert = UIAlertController(title: "Incorrect Password", message: "Please enter the correct password.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
}



