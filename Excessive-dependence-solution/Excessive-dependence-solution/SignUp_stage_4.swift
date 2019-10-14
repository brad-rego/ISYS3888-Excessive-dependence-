//
//  SignUp_stage_4.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 2/10/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import Foundation
import UIKit

class SignUp_stage_4_ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

	


	var name = ""
	var Email = ""
	var country = ""
	var uni = ""
	var selectedFaculty = ""

	@IBOutlet weak var Faculty_picker: UIPickerView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
        
        Faculty_picker.delegate = self
        Faculty_picker.dataSource = self
    }
	
	let faculty = ["Faculty","Arts", "Computer Science", "Engineering", "Science"]
	
	
	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func numberOfComponents(in Faculty_picker: UIPickerView) -> Int {
        return 1
    }
	 func pickerView(_ Faculty_picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		
		return faculty.count
	}
	
	func pickerView(_ Faculty_picker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return faculty[row]
		
	}
	func pickerView(_ Faculty_picker: UIPickerView, didSelectRow row: Int, inComponent component: Int ){
		selectedFaculty = faculty[row]
		
		if selectedFaculty != "Faculty"{
			self.performSegue(withIdentifier: "finalStage", sender: self)
		}
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let vc = segue.destination as! SignUp_stage_5_ViewController
		vc.name = name
		vc.Email = Email
		vc.country = country
		vc.uni = uni
		vc.faculty = selectedFaculty
		
	}
	
	
}
