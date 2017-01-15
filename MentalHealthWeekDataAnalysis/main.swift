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
	var attending = [String]()
	init(maxCount : Int, assignedCount : Int, name : String) {
		self.maxCount = maxCount
		self.assignedCount = assignedCount
		self.name = name
	}
}

var activities = [[Activity]]()
var students = [Student]()

// MARK : ACTIVITIES

for i in 0...4 {
	activities.append([])
	activities[activities.count-1].append(Activity(maxCount: 160, assignedCount: 0, name: "Casual Breakfast"))
	activities[activities.count-1].append(Activity(maxCount: 40, assignedCount: 0, name: "Physical Activity"))
	activities[activities.count-1].append(Activity(maxCount: 20, assignedCount: 0, name: "Yoga"))
	activities[activities.count-1].append(Activity(maxCount: 30, assignedCount: 0, name: "Academic Management"))
	activities[activities.count-1].append(Activity(maxCount: 16, assignedCount: 0, name: "Animal Therapy"))
	activities[activities.count-1].append(Activity(maxCount: 160, assignedCount: 0, name: "Relaxation"))
	activities[activities.count-1].append(Activity(maxCount: 12, assignedCount: 0, name: "Massage"))
	activities[activities.count-1].append(Activity(maxCount: 500, assignedCount: 0, name: "Sleep In"))
}

func sortNiner(tempData : [String]) {
	var tempMonday = ""
	var tempTuesday = ""
	var tempWednesday = ""
	var tempThursday = ""
	var tempFriday = ""
	var lookingForActivity = true
	var currentTopRanking = 1
	while lookingForActivity { // Monday
		for i in 3...7 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[0][i-3].assignedCount < activities[0][i-3].maxCount {
					activities[0][i-3].assignedCount += 1
					activities[0][i-3].attending.append(tempData[0])
					tempMonday = activities[0][i-3].name
					lookingForActivity = false
				}
				/*
				switch i {
				case 3: //Breakfast
				if activities[0][0].assignedCount < activities[0][0].maxCount {
				activities[0][0].assignedCount += 1
				activities[0][0].attending.append(tempData[0])
				tempMonday = activities[0][0].name
				lookingForActivity = false
				}
				break
				case 4: //Physical Activity
				if activities[0][1].assignedCount < activities[0][1].maxCount {
				activities[0][1].assignedCount += 1
				lookingForActivity = false
				}
				break
				case 5: //Yoga
				if activities[0][2].assignedCount < activities[0][2].maxCount {
				activities[0][2].assignedCount += 1
				lookingForActivity = false
				}
				break
				case 6: //Academic
				if activities[0][3].assignedCount < activities[0][3].maxCount {
				activities[0][3].assignedCount += 1
				lookingForActivity = false
				}
				break
				case 7: //Animals
				if activities[0][4].assignedCount < activities[0][5].maxCount {
				activities[0][4].assignedCount += 1
				lookingForActivity = false
				}
				break
				default:
				break
				}
				*/
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Tuesday
		for i in 8...12 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[1][i-8].assignedCount < activities[1][i-8].maxCount {
					activities[1][i-8].assignedCount += 1
					activities[1][i-8].attending.append(tempData[0])
					tempTuesday = activities[1][i-8].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Wednesday BPYLAR
		for i in 13...18 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[2][i-13].assignedCount < activities[2][i-13].maxCount {
					activities[2][i-13].assignedCount += 1
					activities[2][i-13].attending.append(tempData[0])
					tempWednesday = activities[2][i-13].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Thursday
		if (Int(tempData[19]) == currentTopRanking) {
			if activities[3][7].assignedCount < activities[3][7].maxCount {
				activities[3][7].assignedCount += 1
				activities[3][7].attending.append(tempData[0])
				tempThursday = activities[3][7].name
				lookingForActivity = false
			}
		} else if (Int(tempData[22]) == currentTopRanking) {
			if activities[3][5].assignedCount < activities[3][5].maxCount {
				activities[3][5].assignedCount += 1
				activities[3][5].attending.append(tempData[0])
				tempThursday = activities[3][5].name
				lookingForActivity = false
			}
		} else {
			for i in 20...24 { // S BPRLA
				if (Int(tempData[i]) == currentTopRanking) {
					// Check to see if student can be added to activity
					if activities[3][i-20].assignedCount < activities[3][i-20].maxCount {
						activities[3][i-20].assignedCount += 1
						activities[3][i-20].attending.append(tempData[0])
						tempThursday = activities[3][i-20].name
						lookingForActivity = false
					}
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Friday SPRLAM
		if Int(tempData[25]) == currentTopRanking && activities[4][7].assignedCount < activities[4][7].maxCount {
			activities[4][7].assignedCount += 1
			activities[4][7].attending.append(tempData[0])
			tempFriday = activities[4][7].name
			lookingForActivity = false
		} else if (Int(tempData[27]) == currentTopRanking && activities[4][5].assignedCount < activities[4][5].maxCount) {
			activities[4][5].assignedCount += 1
			activities[4][5].attending.append(tempData[0])
			tempFriday = activities[4][5].name
			lookingForActivity = false
		} else if (Int(tempData[30]) == currentTopRanking && activities[4][6].assignedCount < activities[4][6].maxCount) {
			activities[4][6].assignedCount += 1
			activities[4][6].attending.append(tempData[0])
			tempFriday = activities[4][6].name
			lookingForActivity = false
		} else {
			for i in 26...29 {
				if activities[4][i-25].assignedCount < activities[4][i-25].maxCount && Int(tempData[i]) == currentTopRanking {
					activities[4][i-25].assignedCount += 1
					activities[4][i-25].attending.append(tempData[0])
					tempFriday = activities[4][i-25].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	students.append(Student(grade: 9, advisor: tempData[2], email: tempData[0], monday: tempMonday, tuesday: tempTuesday, wednesday: tempWednesday, thursday: tempThursday, friday: tempFriday))
}

func sortTen(tempData : [String]) {
	var tempMonday = ""
	var tempTuesday = ""
	var tempWednesday = ""
	var tempThursday = ""
	var tempFriday = ""
	var lookingForActivity = true
	var currentTopRanking = 1
	while lookingForActivity { // Monday
		for i in 3...7 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[0][i-3].assignedCount < activities[0][i-3].maxCount {
					activities[0][i-3].assignedCount += 1
					activities[0][i-3].attending.append(tempData[0])
					tempMonday = activities[0][i-3].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Tuesday
		for i in 8...12 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[1][i-8].assignedCount < activities[1][i-8].maxCount {
					activities[1][i-8].assignedCount += 1
					activities[1][i-8].attending.append(tempData[0])
					tempTuesday = activities[1][i-8].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Wednesday SBPYLAR
		if (Int(tempData[13]) == currentTopRanking) {
			if activities[2][7].assignedCount < activities[2][7].maxCount {
				activities[2][7].assignedCount += 1
				activities[2][7].attending.append(tempData[0])
				tempWednesday = activities[2][7].name
				lookingForActivity = false
			}
		} else {
			for i in 14...19 {
				if (Int(tempData[i]) == currentTopRanking) {
					// Check to see if student can be added to activity
					if activities[2][i-14].assignedCount < activities[2][i-14].maxCount {
						activities[2][i-14].assignedCount += 1
						activities[2][i-14].attending.append(tempData[0])
						tempWednesday = activities[2][i-14].name
						lookingForActivity = false
					}
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Thursday
		if (Int(tempData[22]) == currentTopRanking) {
			if activities[3][5].assignedCount < activities[3][5].maxCount {
				activities[3][5].assignedCount += 1
				activities[3][5].attending.append(tempData[0])
				tempThursday = activities[3][5].name
				lookingForActivity = false
			}
		} else {
			for i in 20...24 { // S BPRLA
				if (Int(tempData[i]) == currentTopRanking) {
					// Check to see if student can be added to activity
					if activities[3][i-20].assignedCount < activities[3][i-20].maxCount {
						activities[3][i-20].assignedCount += 1
						activities[3][i-20].attending.append(tempData[0])
						tempThursday = activities[3][i-20].name
						lookingForActivity = false
					}
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Friday SPRLAM
		if Int(tempData[25]) == currentTopRanking && activities[4][7].assignedCount < activities[4][7].maxCount {
			activities[4][7].assignedCount += 1
			activities[4][7].attending.append(tempData[0])
			tempFriday = activities[4][7].name
			lookingForActivity = false
		} else if (Int(tempData[27]) == currentTopRanking && activities[4][5].assignedCount < activities[4][5].maxCount) {
			activities[4][5].assignedCount += 1
			activities[4][5].attending.append(tempData[0])
			tempFriday = activities[4][5].name
			lookingForActivity = false
		} else if (Int(tempData[30]) == currentTopRanking && activities[4][6].assignedCount < activities[4][6].maxCount) {
			activities[4][6].assignedCount += 1
			activities[4][6].attending.append(tempData[0])
			tempFriday = activities[4][6].name
			lookingForActivity = false
		} else {
			for i in 26...29 {
				if activities[4][i-25].assignedCount < activities[4][i-25].maxCount && Int(tempData[i]) == currentTopRanking {
					activities[4][i-25].assignedCount += 1
					activities[4][i-25].attending.append(tempData[0])
					tempFriday = activities[4][i-25].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	students.append(Student(grade: 10, advisor: tempData[2], email: tempData[0], monday: tempMonday, tuesday: tempTuesday, wednesday: tempWednesday, thursday: tempThursday, friday: tempFriday))
}

func sortEleven(tempData : [String]) {
	var tempMonday = ""
	var tempTuesday = ""
	var tempWednesday = ""
	var tempThursday = ""
	var tempFriday = ""
	var lookingForActivity = true
	var currentTopRanking = 1
	while lookingForActivity { // Monday
		for i in 3...7 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[0][i-3].assignedCount < activities[0][i-3].maxCount {
					activities[0][i-3].assignedCount += 1
					activities[0][i-3].attending.append(tempData[0])
					tempMonday = activities[0][i-3].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Tuesday
		if (Int(tempData[8]) == currentTopRanking) {
			if activities[1][7].assignedCount < activities[1][7].maxCount {
				activities[1][7].assignedCount += 1
				activities[1][7].attending.append(tempData[0])
				tempTuesday = activities[1][7].name
				lookingForActivity = false
			}
		} else {
			for i in 9...13 {
				if (Int(tempData[i]) == currentTopRanking) {
					// Check to see if student can be added to activity
					if activities[1][i-9].assignedCount < activities[1][i-9].maxCount {
						activities[1][i-9].assignedCount += 1
						activities[1][i-9].attending.append(tempData[0])
						tempTuesday = activities[1][i-9].name
						lookingForActivity = false
					}
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Wednesday SBPYLAR
		for i in 14...19 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[2][i-14].assignedCount < activities[2][i-14].maxCount {
					activities[2][i-14].assignedCount += 1
					activities[2][i-14].attending.append(tempData[0])
					tempWednesday = activities[2][i-14].name
					lookingForActivity = false
				}
			}
		}
		
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Thursday
		if (Int(tempData[22]) == currentTopRanking) {
			if activities[3][5].assignedCount < activities[3][5].maxCount {
				activities[3][5].assignedCount += 1
				activities[3][5].attending.append(tempData[0])
				tempThursday = activities[3][5].name
				lookingForActivity = false
			}
		} else {
			for i in 20...24 { // S BPRLA
				if (Int(tempData[i]) == currentTopRanking) {
					// Check to see if student can be added to activity
					if activities[3][i-20].assignedCount < activities[3][i-20].maxCount {
						activities[3][i-20].assignedCount += 1
						activities[3][i-20].attending.append(tempData[0])
						tempThursday = activities[3][i-20].name
						lookingForActivity = false
					}
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Friday SPRLAM
		if Int(tempData[25]) == currentTopRanking && activities[4][7].assignedCount < activities[4][7].maxCount {
			activities[4][7].assignedCount += 1
			activities[4][7].attending.append(tempData[0])
			tempFriday = activities[4][7].name
			lookingForActivity = false
		} else if (Int(tempData[27]) == currentTopRanking && activities[4][5].assignedCount < activities[4][5].maxCount) {
			activities[4][5].assignedCount += 1
			activities[4][5].attending.append(tempData[0])
			tempFriday = activities[4][5].name
			lookingForActivity = false
		} else if (Int(tempData[30]) == currentTopRanking && activities[4][6].assignedCount < activities[4][6].maxCount) {
			activities[4][6].assignedCount += 1
			activities[4][6].attending.append(tempData[0])
			tempFriday = activities[4][6].name
			lookingForActivity = false
		} else {
			for i in 26...29 {
				if activities[4][i-25].assignedCount < activities[4][i-25].maxCount && Int(tempData[i]) == currentTopRanking {
					activities[4][i-25].assignedCount += 1
					activities[4][i-25].attending.append(tempData[0])
					tempFriday = activities[4][i-25].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	students.append(Student(grade: 11, advisor: tempData[2], email: tempData[0], monday: tempMonday, tuesday: tempTuesday, wednesday: tempWednesday, thursday: tempThursday, friday: tempFriday))
}

func sortTwelve(tempData : [String]) {
	var tempMonday = ""
	var tempTuesday = ""
	var tempWednesday = ""
	var tempThursday = ""
	var tempFriday = ""
	var lookingForActivity = true
	var currentTopRanking = 1
	while lookingForActivity { // Monday
		if (Int(tempData[3]) == currentTopRanking) {
			if activities[0][7].assignedCount < activities[0][7].maxCount {
				activities[0][7].assignedCount += 1
				activities[0][7].attending.append(tempData[0])
				tempMonday = activities[0][7].name
				lookingForActivity = false
			}
		} else {
			for i in 4...8 {
				if (Int(tempData[i]) == currentTopRanking) {
					// Check to see if student can be added to activity
					if activities[0][i-4].assignedCount < activities[0][i-4].maxCount {
						activities[0][i-4].assignedCount += 1
						activities[0][i-4].attending.append(tempData[0])
						tempMonday = activities[0][i-4].name
						lookingForActivity = false
					}
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Tuesday
		for i in 9...13 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[1][i-9].assignedCount < activities[1][i-9].maxCount {
					activities[1][i-9].assignedCount += 1
					activities[1][i-9].attending.append(tempData[0])
					tempTuesday = activities[1][i-9].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Wednesday SBPYLAR
		for i in 14...19 {
			if (Int(tempData[i]) == currentTopRanking) {
				// Check to see if student can be added to activity
				if activities[2][i-14].assignedCount < activities[2][i-14].maxCount {
					activities[2][i-14].assignedCount += 1
					activities[2][i-14].attending.append(tempData[0])
					tempWednesday = activities[2][i-14].name
					lookingForActivity = false
				}
			}
		}
		
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Thursday
		if (Int(tempData[22]) == currentTopRanking) {
			if activities[3][5].assignedCount < activities[3][5].maxCount {
				activities[3][5].assignedCount += 1
				activities[3][5].attending.append(tempData[0])
				tempThursday = activities[3][5].name
				lookingForActivity = false
			}
		} else {
			for i in 20...24 { // S BPRLA
				if (Int(tempData[i]) == currentTopRanking) {
					// Check to see if student can be added to activity
					if activities[3][i-20].assignedCount < activities[3][i-20].maxCount {
						activities[3][i-20].assignedCount += 1
						activities[3][i-20].attending.append(tempData[0])
						tempThursday = activities[3][i-20].name
						lookingForActivity = false
					}
				}
			}
		}
		currentTopRanking += 1
	}
	lookingForActivity = true
	currentTopRanking = 1
	while lookingForActivity { // Friday SPRLAM
		if Int(tempData[25]) == currentTopRanking && activities[4][7].assignedCount < activities[4][7].maxCount {
			activities[4][7].assignedCount += 1
			activities[4][7].attending.append(tempData[0])
			tempFriday = activities[4][7].name
			lookingForActivity = false
		} else if (Int(tempData[27]) == currentTopRanking && activities[4][5].assignedCount < activities[4][5].maxCount) {
			activities[4][5].assignedCount += 1
			activities[4][5].attending.append(tempData[0])
			tempFriday = activities[4][5].name
			lookingForActivity = false
		} else if (Int(tempData[30]) == currentTopRanking && activities[4][6].assignedCount < activities[4][6].maxCount) {
			activities[4][6].assignedCount += 1
			activities[4][6].attending.append(tempData[0])
			tempFriday = activities[4][6].name
			lookingForActivity = false
		} else {
			for i in 26...29 {
				if activities[4][i-25].assignedCount < activities[4][i-25].maxCount && Int(tempData[i]) == currentTopRanking {
					activities[4][i-25].assignedCount += 1
					activities[4][i-25].attending.append(tempData[0])
					tempFriday = activities[4][i-25].name
					lookingForActivity = false
				}
			}
		}
		currentTopRanking += 1
	}
	students.append(Student(grade: 12, advisor: tempData[2], email: tempData[0], monday: tempMonday, tuesday: tempTuesday, wednesday: tempWednesday, thursday: tempThursday, friday: tempFriday))
}

// MARK : Begin

// Read the text file
guard let reader = LineReader(path: "/Users/student/survey_response_sample.txt") else {
	print("File not found")
	exit(0); // cannot open file
}

var firstIteration = true
// Iterate over each line in the file and print to the terminal
for line in reader {
	var tempData : [String]
	var tempGrade : Int
	tempData = line.components(separatedBy: ",")
	if (tempData.count > 4) {
		tempData.removeFirst(5)
		if (firstIteration) {
			firstIteration = false
		} else {
			tempGrade = Int(tempData[4])!
			let upperBound = tempData.count-1
			for i in 0...upperBound {
				if (tempData[upperBound-i] == "") {
					tempData.remove(at: upperBound-i)
				}
			}
			if (tempData.count > 10) {
				// MARK: Schedule
				// B:reakfast P:hysical Y:oga L:ibrary A:nimals S:leep R:elax M:assage
				//  9's: BPYLA BPYLA BPYLAR SBPRLA SPRLAM
				// 10's: BPYLA BPYLA SBPYLAR BPRLA SPRLAM
				// 11's: BPYLA SBPYLA BPYLAR BPRLA SPRLAM
				// 12's: SBPYLA BPYLA BPYLAR BPRLA SPRLAM
				// Activity [DAY][ACT], Activities in order, 0: Breakfast, 1: Physical Activity, 2: Yoga, 3: Academics, 4: Animals, 5: Relaxation, 6: Massage
				/*var tempMonday = ""
				var tempTuesday = ""
				var tempWednesday = ""
				var tempThursday = ""
				var tempFriday = ""*/
				for _ in 0...10 {
					tempData[0] = tempData[0].substring(to: tempData[0].index(before: tempData[0].endIndex))
				}
				var tempNameMod = Array(tempData[0].characters)
				tempNameMod.insert(" ", at: 1)
				tempNameMod.insert(".", at: 1)
				tempData[0].removeAll()
				for character in tempNameMod {
					tempData[0] += String(character)
				}
				if tempData[0] == "B. Leder" {
					print(tempData)
					tempData[25] = "2"
					tempData[26] = "3"
					tempData[30] = "1"
				}
				if (tempGrade == 9) {
					sortNiner(tempData: tempData)
				} else if (tempGrade == 10) {
					sortTen(tempData: tempData)
				} else if (tempGrade == 11) {
					sortEleven(tempData: tempData)
				} else if (tempGrade == 12) {
					sortTwelve(tempData: tempData)
				}
			}
		}
	}
}
print("Done")
let advisorList = ["Bader Shaw", "Ghoreshy", "Seale", "Spacie", "DeBlois", "Donnelly", "Lambersky", "Enfield", "Hutton", "Farrar", "Bibby", "Doerkson", "Beatty", "Totten", "Evans", "Rankin", "Vivares", "Van Herk", "Gledhill", "Hart", "Jessani", "Stevens", "Chow", "Newton", "Ruscitti", "Kotecha", "Stevens", "Uhre", "Girvan", "Fitz", "O\'Leary"]
for student in students {
	if student.advisor == advisorList[8] { // Modify advisorList index for each advisor
	print(student.email+"\nMonday: "+student.monday+"\nTuesday: "+student.tuesday+"\nWednesday: "+student.wednesday+"\nThursday: "+student.thursday+"\nFriday: "+student.friday+"\n")
	}
}
print(activities[4][6].name)
print(activities[4][6].attending) // Modify first index from 0-4 for monday-friday, second index 0-7 for activities (reference activities mark for order)
