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

