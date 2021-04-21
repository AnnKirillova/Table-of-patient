//
//  ViewController.swift
//  Patients
//
//  Created by Ann on 21.04.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Log in"
    }

    @IBAction func loginAction(_ sender: UIButton) {
        let story = self.storyboard!
        let vc = story.instantiateViewController(identifier: "NextController")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

