//
//  SearchResultsViewController.swift
//  SampleDDGApp
//
//  Created by Christina McIntyre on 10/21/15.
//  Copyright © 2015 Christina McIntyre. All rights reserved.
//

import UIKit

class SearchResultsViewController: UIViewController, UITableViewDataSource {

	let results = [String]()
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return results.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
	
		let resultsCell = tableView.dequeueReusableCellWithIdentifier("resultsCell", forIndexPath: indexPath) 
	
		resultsCell.textLabel?.text = results[indexPath.row]
		
		return resultsCell
	}
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}
