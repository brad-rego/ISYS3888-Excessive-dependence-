//
//  SignUp_stage_2.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 30/9/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//


import UIKit
import Foundation

class SignUp_stage_2_ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
	
	var name = ""
	var Email = ""
	var password = ""
	
	
	
	@IBOutlet weak var CountryPicker: UIPickerView!
	let countries = ["Select Country", "Australia", "New Zealand", "United States","United Kingdom"]
	var picked = ""
	override func viewDidLoad() {
        super.viewDidLoad()
        
        CountryPicker.delegate = self
        CountryPicker.dataSource = self
    }
	
	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func numberOfComponents(in CountryPicker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ CountryPicker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(_ CountryPicker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
	func pickerView(_ CountryPicker: UIPickerView, didSelectRow row: Int, inComponent component: Int ){
		picked = countries[row]
		if picked != "Select Country"{
			self.performSegue(withIdentifier: "stage3", sender: self)

		}


	}

	
	
	

	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let vc = segue.destination as! SignUp_stage_3_ViewController
		vc.name = name
		vc.Email = Email
		vc.password = password
		vc.country = picked
		
		
		
	}
	
}

