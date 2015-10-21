//
//  ViewController.swift
//  SampleDDGApp
//
//  Created by Christina McIntyre on 10/19/15.
//  Copyright © 2015 Christina McIntyre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBAction func searchDDGGetRequest(sender: UIButton) {
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		let baseURL = NSURL(string: "http://api.duckduckgo.com/?q="
		let searchTopicURL = NSURL(string: "\(searchTopic)&format=json&t=SampleDDGApp")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

