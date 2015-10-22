//
//  SearchMasterViewController.swift
//  SampleDDGApp
//
//  Created by Christina McIntyre on 10/19/15.
//  Copyright © 2015 Christina McIntyre. All rights reserved.
//

import UIKit

class SearchMasterViewController: UIViewController {

	@IBOutlet weak var searchTopic: UITextField!
	
	@IBAction func searchRequestButton(sender: UIButton) {
		self.performSegueWithIdentifier("resultsSegue", sender: sender)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if (segue.identifier == "resultsSegue") {
			let searchResultsController = segue.destinationViewController as! SearchResultsViewController
			searchResultsController.searchTermPassed = searchTopic.text!
		}
	}

}

