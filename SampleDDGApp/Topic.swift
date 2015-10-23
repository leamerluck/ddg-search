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
	var first_url: String?
	var textShown: String?
	
	init(json: NSDictionary) {
		self.first_url = json["FirstURL"] as? String
		self.textShown = json["Text"] as? String
		
	}
}
