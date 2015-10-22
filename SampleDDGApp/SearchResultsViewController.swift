//
//  SearchResultsViewController.swift
//  SampleDDGApp
//
//  Created by Christina McIntyre on 10/21/15.
//  Copyright © 2015 Christina McIntyre. All rights reserved.
//

import UIKit

class SearchResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet weak var queryTopic: UILabel!
	
	var searchTermPassed:String!
	
	
	var topics = [Topic]()
	
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return topics.count
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
	
		let resultCell = tableView.dequeueReusableCellWithIdentifier("resultCell", forIndexPath: indexPath) 
	
		resultCell.textLabel?.text = topics[indexPath.row].text
		
		return resultCell
	}
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
			queryTopic.text = "You searched for: \(searchTermPassed)"
			
			let jsonError: NSError? = nil
			
			let searchURL = NSURL(string: "http://api.duckduckgo.com/?q=\(searchTermPassed)&format=json&pretty=1&tSampleDDGApp")
			
			let task = NSURLSession.sharedSession().dataTaskWithURL(searchURL!) {(data, response, error) in
				let text = (NSString(data: data!, encoding: NSUTF8StringEncoding))
			}
	}
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




