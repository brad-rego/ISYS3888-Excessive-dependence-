//
//  LoginViewController.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 21/9/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import Firebase

class LoginViewController: UIViewController, UITextFieldDelegate{
	
	//MARK: Properties
	
	@IBOutlet weak var email_txt: UITextField!
	@IBOutlet weak var password_txt: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		email_txt.delegate = self
		password_txt.delegate = self
	}
	
	//MARK: Actions
	
	@IBAction func Login_btn(_ sender: Any) {
		
		Auth.auth().signIn(withEmail: email_txt.text!, password: password_txt.text!) { (user, error) in
		   if error == nil{
			 self.performSegue(withIdentifier: "signed_in", sender: self)
						  }
			else{
			 let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
			 let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
							
			  alertController.addAction(defaultAction)
			  self.present(alertController, animated: true, completion: nil)
				 }
			}
		}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
		   textField.resignFirstResponder()
		   return true
	   }
	   
}
