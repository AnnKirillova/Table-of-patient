//
//  ViewController.swift
//  Patients
//
//  Created by Ann on 21.04.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var loginArea: UITextField!
    @IBOutlet weak var passwordArea: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Log in"
        self.passwordArea.delegate = self
        self.loginArea.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }

    @IBAction func loginAction(_ sender: UIButton) {
        if loginArea.text == "admin" && passwordArea.text == "admin"{
        let story = self.storyboard!
        let vc = story.instantiateViewController(identifier: "NextController")
        self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}

