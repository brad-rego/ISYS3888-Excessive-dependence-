//
//  SignUp_stage_5.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 2/10/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase


class SignUp_stage_5_ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	
	var ref: DatabaseReference!

	
	var name = ""
	var Email = ""
	var country = ""
	var uni = ""
	var faculty = ""

	var selectedDegree = ""
	

	@IBOutlet weak var degree_picker: UIPickerView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		ref = Database.database().reference()

        
        degree_picker.delegate = self
        degree_picker.dataSource = self
		
    }
	let Compsci = ["Degree", "Bachelor of Computer Science", "Bachelor of Advanced computing"]
	let engo = ["Degree", "Bachelor of Civil Engineering", "Bachelor of Electricial Engineering"]
	let science = ["Degree", "Bachelor of Science", "Bachelor of Medical science"]
	
	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func numberOfComponents(in degree_picker: UIPickerView) -> Int {
        return 1
    }
	
	func pickerView(_ degree_picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		if faculty == "Computer Science"{
			return Compsci.count
		}
		if country == "Engineering"{
			return engo.count
			
		}
		
		return science.count
    }
    
    func pickerView(_ degree_picker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        	if faculty == "Computer Science"{
				return Compsci[row]
			}
			if faculty == "Engineering"{
				return engo[row]
				
			}
			
			return science[row]
    }
	
	func pickerView(_ degree_picker: UIPickerView, didSelectRow row: Int, inComponent component: Int ){
		if faculty == "Computer Science"{
			selectedDegree =  Compsci[row]
		}
		if faculty == "Engineering"{
			selectedDegree = engo[row]
			
		}
		
		else{
			selectedDegree = science[row]
		}
		if selectedDegree != "Degree"{
			addUser()
			self.performSegue(withIdentifier: "logged_in", sender: self)

		}


	}
	
	func addUser(){
		
		let userAdd = ["Name": name, "Email": Email, "Country": country, "University": uni, "Faculty": faculty, "Degree" :selectedDegree]
		ref.child("Users").childByAutoId().setValue(userAdd)
	}


//	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//		let vc = segue.destination as! SignUp_stage_5_ViewController
//		vc.name = name
//		vc.Email = Email
//		vc.country = country
//		vc.uni = uni
//		vc.faculty = faculty
//
//	}
	
}
