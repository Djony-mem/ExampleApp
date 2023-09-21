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
			//				greetingButton.layer.cornerRadius = 30 // (CGFloat)
		greetingButton.configuration = setupButton(with: "Show Greeting")
	}
	
	@IBAction func greetingButtonPressed() {
		greetingLabel.isHidden.toggle()
		
		greetingButton.configuration = setupButton(
			with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
		)
	}
	
	private func setupButton(with title: String) -> UIButton.Configuration {
			var buttonConfiguration = UIButton.Configuration.filled()
			buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
			buttonConfiguration.title = title
			buttonConfiguration.buttonSize = .large
			buttonConfiguration.cornerStyle = .large
			buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 40)
			return buttonConfiguration
		}
}

