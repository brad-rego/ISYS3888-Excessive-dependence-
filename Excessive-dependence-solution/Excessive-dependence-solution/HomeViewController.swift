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
	
<<<<<<< HEAD
	var ref: DatabaseReference!
	var Email = ""
	override func viewDidLoad() {
        super.viewDidLoad()
		ref = Database.database().reference(withPath: "User")

		
    }

//	let capitalCities = db.collection("cities").whereField("capital", isEqualTo: true)


	
	
	


=======
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
>>>>>>> 7e45659beb55943efedc020fcc1d26764f7997a8
	//MARK: Properties

	@IBAction func profile_btn(_ sender: Any) {
		
		self.performSegue(withIdentifier: "profile", sender: self)
	}
	
}
