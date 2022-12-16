//
//  Date+Exts.swift
//  CalendorWithoutPod
//
//  Created by Apple on 16/12/22.
//

import Foundation

extension Date {
    
    var getTheDayIndex: String {
        return String(Calendar.current.component(.day, from: self))
    }
    
    var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    
    var monthSymbols: String {
        let monthIndex = Calendar.current.component(.month, from: self)
        return Calendar.current.monthSymbols[monthIndex - 1]
    }
    
    var shortDateFormat: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
   
    static func addingDateIntervalByMonth(month: Int, date: Date) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        return calendar.date(byAdding: .month, value: month, to: date) ?? Date()
    }

    static func addingDateIntervalByDay(day: Int, date: Date) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        return calendar.date(byAdding: .day, value: day, to: date) ?? Date()
    }
    
}
