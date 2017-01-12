//
//  main.swift
//  MentalHealthWeekDataAnalysis
//
//  Created by Brendan Leder on 2017-01-12.
//  Copyright © 2017 Brendan Leder. All rights reserved.
//

import Foundation

struct Student {
	var grade : Int
	var advisor : String
	var email : String
	var monday : String
	var tuesday : String
	var wednesday : String
	var thursday : String
	var friday : String
	
	init(grade : Int, advisor : String, email : String, monday : String, tuesday : String, wednesday : String, thursday : String, friday : String) {
		self.grade = grade
		self.advisor = advisor
		self.email = email
		self.monday = monday
		self.tuesday = tuesday
		self.wednesday = wednesday
		self.thursday = thursday
		self.friday = friday
	}
}

struct Activity {
	var maxCount : Int
	var assignedCount : Int
	var name : String
	
	init(maxCount : Int, assignedCount : Int, name : String) {
		self.maxCount = maxCount
		self.assignedCount = assignedCount
		self.name = name
	}
}

var activities : [[Activity]]
var students : [Student]


// Read the text file
guard let reader = LineReader(path: "/Users/student/survey_response_sample.txt") else {
	print("File not found")
	exit(0); // cannot open file
}

var firstIteration = true
var secondIteration = true
// Iterate over each line in the file and print to the terminal
for line in reader {
	var tempData : [String]
	var tempGrade : Int
	tempData = line.components(separatedBy: "\t")
	if (tempData.count > 4) {
		tempData.removeFirst(5)
		if (firstIteration) {
			firstIteration = false
		} else if (secondIteration) {
			secondIteration = false
		} else {
			tempGrade = Int(tempData[4])!
			let upperBound = tempData.count-1
			for i in 0...upperBound {
				if (tempData[upperBound-i] == "") {
					tempData.remove(at: upperBound-i)
				}
			}
			print(tempData)
			print("\n")
		}
	}
}
