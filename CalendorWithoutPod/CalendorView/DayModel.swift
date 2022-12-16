//
//  DayModel.swift
//  CalendorWithoutPod
//
//  Created by Apple on 16/12/22.
//

import Foundation

struct Day: Equatable {
    let date: Date
    let dayNumber: String
    var isNextMonth: Bool = false
    var isPreviousMonth: Bool = false
}
