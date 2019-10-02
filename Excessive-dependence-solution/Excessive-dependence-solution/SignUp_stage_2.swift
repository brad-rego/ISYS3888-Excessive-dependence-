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
	
	var username = ""
	
	@IBOutlet weak var nameLabel: UILabel!
	
	
	@IBOutlet weak var CountryPicker: UIPickerView!
	let countries = ["Australia", "New Zealand", "United States","United Kingdom"]
	override func viewDidLoad() {
        super.viewDidLoad()
        
		nameLabel.text = username
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
}

