//
//  HomeViewController.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 2/10/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import Firebase

class HomeViewController: UIViewController, UITextFieldDelegate{
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	//MARK: Properties

	@IBAction func profile_btn(_ sender: Any) {
		
		self.performSegue(withIdentifier: "profile", sender: self)
	}
	
}
