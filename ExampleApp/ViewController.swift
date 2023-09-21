//
//  ViewController.swift
//  ExampleApp
//
//  Created by brubru on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var greetingLabel: UILabel!
	
	@IBOutlet weak var greetingButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		greetingLabel.isHidden = true
				greetingButton.layer.cornerRadius = 10 // (CGFloat)
	}

	@IBAction func greetingButtonPressed() {
		greetingLabel.isHidden.toggle()
		
//			 if greetingLabel.isHidden {
//				 greetingButton.setTitle("Show Greeting", for: .normal)
//			 } else {
//				 greetingButton.setTitle("Hide Greeting", for: .normal)
//			 }
		greetingButton.setTitle(
				   greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
				   for: .normal
			   )
	}
}

