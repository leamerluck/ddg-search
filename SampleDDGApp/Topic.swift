//
//  Topic.swift
//  SampleDDGApp
//
//  Created by Christina McIntyre on 10/21/15.
//  Copyright © 2015 Christina McIntyre. All rights reserved.
//

import Foundation
import UIKit

class Topic {
	var result: String?
	var first_url: String?
	var text: String?
	
	init(json: NSDictionary) {
		self.result = json["Result"] as? String
		self.first_url = json["FirstURL"] as? String
		self.text = json["Text"] as? String
	}
}
