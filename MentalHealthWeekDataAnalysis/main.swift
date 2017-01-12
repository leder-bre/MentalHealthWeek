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

var activities = [[Activity]]()
var students = [Student]()

for i in 0...4 {
	activities.append([])
	activities[activities.count-1].append(Activity(maxCount: 160, assignedCount: 0, name: "Casual Breakfast"))
	activities[activities.count-1].append(Activity(maxCount: 40, assignedCount: 0, name: "Physical Activity"))
	activities[activities.count-1].append(Activity(maxCount: 160, assignedCount: 0, name: "Relaxation"))
	activities[activities.count-1].append(Activity(maxCount: 30, assignedCount: 0, name: "Academic Management"))
	activities[activities.count-1].append(Activity(maxCount: 20, assignedCount: 0, name: "Yoga"))
	activities[activities.count-1].append(Activity(maxCount: 16, assignedCount: 0, name: "Animal Therapy"))
	activities[activities.count-1].append(Activity(maxCount: 12, assignedCount: 0, name: "Massage"))
}

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
			if (tempData.count > 10) {
				// B:reakfast P:hysical Y:oga L:ibrary A:nimals S:leep R:elax M:assage
				//  9's: BPYLA BPYLA BPYLAR SBPRLA SPRLAM
				// 10's: BPYLA BPYLA SBPYLAR BPRLA SPRLAM
				// 11's: BPYLA SBPYLA BPYLAR BPRLA SPRLAM
				// 12's: SBPYLA BPYLA BPYLAR BPRLA SPRLAM
				if (tempGrade == 9) {
					var lookingForActivity = true
					var currentTopRanking = 1
					while lookingForActivity {
						for i in 3...7 {
							if (Int(tempData[i]) == currentTopRanking) {
								// Check to see if student can be added to activity
								switch i {
								case 3: //Breakfast
									break
								case 4: //Physical Activity
									break
								case 5: //Yoga
									break
								case 6: //Academic
									break
								case 7: //Animals
									break
								default:
									break
								}
							}
						}
					}
				} else if (tempGrade == 10) {
					
				} else if (tempGrade == 11) {
					
				} else if (tempGrade == 12) {
					
				}
				print(tempData)
				print("\n")
			}
		}
	}
}
