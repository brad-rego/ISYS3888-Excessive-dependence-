//
//  chooseCharacter_ViewController.swift
//  Excessive-dependence-solution
//
//  Created by Bradley Rego on 5/10/19.
//  Copyright © 2019 The Survivors squad. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase


class ChooseCharacterController: UIViewController, UITableViewDelegate  ,UITableViewDataSource{
	
	var ref: DatabaseReference!

	//items passed from last stage
	var name = ""
	var Email = ""
	var country = ""
	var uni = ""
	var faculty = ""
	var degree = ""
	var chosen = ""
	
	//People to choose from based on faculty
	let comsciList = ["Ada Lovelace", "person 2", "person3"]
	let engoList = ["person 1", "person 2", "person 3"]
	let scienceList = ["person 1", "person 2", "person 3"]
	let artsList = ["person 1", "person2"]
	override func viewDidLoad() {
		super.viewDidLoad()
		ref = Database.database().reference()

	}
	public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//		return comsciList.count
		if faculty == "Computer Science"{
				return comsciList.count
			}
			if faculty == "Engineering"{
				return engoList.count
				
			}
		if faculty == "Arts"{
			return artsList.count
		}
			
			return scienceList.count
	}
	public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
		if faculty == "Computer Science"{
			cell.textLabel?.text = comsciList[indexPath.row]
		}
		if faculty == "Engineering"{
			cell.textLabel?.text = engoList[indexPath.row]
			
		}
		
		if faculty == "Science"{
			cell.textLabel?.text = scienceList[indexPath.row]
		}
		if faculty == "Arts"{
			cell.textLabel?.text = artsList[indexPath.row]
		}
		return cell
	}
	//once user chooses person, add to database and then  segue to logged in home page
	public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if faculty == "Computer Science"{
//			print(self.comsciList[indexPath.row])
			chosen = comsciList[indexPath.row]
			addUser()
			self.performSegue(withIdentifier: "sign_in_completed", sender: self)

		}
		if faculty == "Engineering"{
//			print(engoList[indexPath.row])
			chosen = engoList[indexPath.row]
			addUser()
			self.performSegue(withIdentifier: "sign_in_completed", sender: self)


		}
		if faculty == "Arts"{
			chosen = artsList[indexPath.row]
			addUser()
			self.performSegue(withIdentifier: "sign_in_completed", sender: self)
		}
		
		
		if faculty == "Science"{
//			print(scienceList[indexPath.row])
			chosen = scienceList[indexPath.row]
			addUser()
			self.performSegue(withIdentifier: "sign_in_completed", sender: self)


		}
		
	}
	
	
	//todo add user
	func addUser(){

		let userAdd = ["Name": name, "Email": Email, "Country": country, "University": uni, "Faculty": faculty, "Degree" :degree, "chosenCharacter": chosen ]
		ref.child("Users").childByAutoId().setValue(userAdd)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let vc = segue.destination as! HomeViewController
		vc.Email = Email

	}
	

}

