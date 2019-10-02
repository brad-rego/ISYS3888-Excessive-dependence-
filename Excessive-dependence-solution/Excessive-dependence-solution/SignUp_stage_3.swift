//
//  SignUp_stage_3.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 2/10/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import Foundation
import UIKit

class SignUp_stage_3_ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
	
	var name = ""
	var Email = ""
	var password = ""
	var country = ""

	//MARK: Actions
	@IBOutlet weak var reigon_picker: UIPickerView!
	
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
        
        reigon_picker.delegate = self
        reigon_picker.dataSource = self
    }

	let Aus = ["Univeristy of Sydney", "University of New South Wales", "University of Western Sydney"]
	let NZ = ["University of Aukland", "University of Canterbury", "University of Otago"]
	let US = ["MIT", "Harvard", "Stanford University"]
	let UK = ["edinburgh University", "University of Cambridge", "University of Aberdeen"]
	

	
	override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func numberOfComponents(in reigon_picker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ reigon_picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		if country == "Australia"{
			return Aus.count
		}
		if country == "New Zealand"{
			return NZ.count
			
		}
		if country == "United Kingdom"{
			return UK.count
		}
		return US.count
    }
    
    func pickerView(_ reigon_picker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        	if country == "Australia"{
				return Aus[row]
			}
			if country == "New Zealand"{
				return NZ[row]
				
			}
			if country == "United Kingdom"{
				return UK[row]
			}
			return US[row]
    }


}
