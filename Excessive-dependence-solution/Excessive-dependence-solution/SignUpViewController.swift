//
//  SignUpViewController.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 21/9/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController{
	
	//MARK: Properties
	
	@IBOutlet weak var F_name_txt: UITextField!
	@IBOutlet weak var email_txt: UITextField!
	@IBOutlet weak var password_txt: UITextField!
	@IBOutlet weak var retype_password_txt: UITextField!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	//MARK: Actions
	
	@IBAction func signUp_btn(_ sender: Any) {
		if let text = F_name_txt.text, text.isEmpty{
			let alertController = UIAlertController(title: "Empty Fields", message: "Please firstname", preferredStyle: .alert)
			let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
			alertController.addAction(defaultAction)
		self.present(alertController, animated: true, completion: nil)
		}
		
		if let email = email_txt.text, email.isEmpty{
			let alertController = UIAlertController(title: "Empty Fields", message: "Please enter email", preferredStyle: .alert)
				let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
				alertController.addAction(defaultAction)
			self.present(alertController, animated: true, completion: nil)
		}
		if let password = password_txt.text, password.isEmpty{
			let alertController = UIAlertController(title: "Empty Fields", message: "Please enter password", preferredStyle: .alert)
				let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
				alertController.addAction(defaultAction)
			self.present(alertController, animated: true, completion: nil)
		}
		if let retype = retype_password_txt.text, retype.isEmpty{
			let alertController = UIAlertController(title: "Empty Fields", message: "Please enter password again", preferredStyle: .alert)
				let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
				alertController.addAction(defaultAction)
			self.present(alertController, animated: true, completion: nil)
		}
		let password = password_txt.text
		let retype = retype_password_txt.text
		let isequal = (password == retype)
		if !isequal{
			let alertController = UIAlertController(title: "Passwords do not match", message: "Please enter password again", preferredStyle: .alert)
				let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
				alertController.addAction(defaultAction)
			self.present(alertController, animated: true, completion: nil)
			password_txt.text = ""
			retype_password_txt.text = ""
		}
		// register user to  firebase
		Auth.auth().createUser(withEmail: email_txt.text!, password: password_txt.text!){ (user, error) in
		 if error == nil {
		   self.performSegue(withIdentifier: "signupaccepted", sender: self)
						}
		 else{
		   let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
		   let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
							
			alertController.addAction(defaultAction)
			self.present(alertController, animated: true, completion: nil)
			   }
					}
		
		
	}
	
	
	
}
