//
//  goalsViewController.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 21/10/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import Firebase


class GoalViewController: UIViewController, UITextFieldDelegate{

	@IBOutlet weak var input_txt: UITextField!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		input_txt.delegate = self
	}
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
		textField.resignFirstResponder()
		return true
	}
	
	
	
	
	
}
