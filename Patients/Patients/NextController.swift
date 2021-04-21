//
//  NextController.swift
//  Patients
//
//  Created by Ann on 21.04.2021.
//

import UIKit

class NextController: UIViewController {
    var patientsArray = [Patient]()
    
    
    @IBOutlet weak var nameArea: UITextField!
    @IBOutlet weak var ageArea: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cabinet"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addAction(_ sender: UIButton) {
        let patient = Patient(patientName: nameArea.text!, patientAge: Int(ageArea.text!)!)
        patientsArray.append(patient)
        
        nameArea.text = ""
        ageArea.text = ""
    }
    

}
struct Patient{
    let name: String
    let age: Int
    init (patientName: String, patientAge: Int){
        name = patientName
        age = patientAge
    }
}
