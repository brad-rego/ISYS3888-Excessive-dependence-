//
//  ViewController.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 12/9/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		if Auth.auth().currentUser != nil {
			self.performSegue(withIdentifier: "alreadyLoggedin", sender: nil)
		}
	}


	//MARK: Actions

	@IBAction func login_btn(_ sender: Any) {
	}
	
	@IBAction func signup_btn(_ sender: Any) {
	}
}

