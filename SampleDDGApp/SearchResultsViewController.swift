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
		
		resultCell.textLabel?.numberOfLines = 0
	
		resultCell.textLabel?.text = "Text: \(topics[indexPath.row].textShown!)\nFirst URL: \(topics[indexPath.row].first_url!)"
		
		return resultCell
	}
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
			
			queryTopic.text = "You searched for: \(searchTermPassed)"
			
			
			if let searchURL = NSURL(string: "http://api.duckduckgo.com/?q=\(searchTermPassed)&format=json&pretty=1&tSampleDDGApp") {
				do {
				
					let jsonData: NSData? = NSData(contentsOfURL: searchURL)
						if let jsonResult: NSDictionary = try NSJSONSerialization.JSONObjectWithData(jsonData!,		options: NSJSONReadingOptions.MutableContainers) as? NSDictionary {
							let relatedTopicsArray = jsonResult["RelatedTopics"] as! NSArray
							for relatedTopic in relatedTopicsArray {
						//let textShown = relatedTopic["Text"]
						//let firstURL = relatedTopic["FirstURL"]
						//if textShown != nil || firstURL != nil {
							//print("First URL result: \(firstURL!)\n Text: \(textShown!)")
						//}
								topics.append(Topic(json: relatedTopic as! NSDictionary))
							}
					}
				} catch let error as NSError{
					print("json error: \(error.localizedDescription)")
				}
			} else { queryTopic.text = "NO SEARCH RESULTS FOR: \(searchTermPassed)" }
	}
	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




