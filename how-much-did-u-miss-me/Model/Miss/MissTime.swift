//
//  MissTime.swift
//  how-much-did-u-miss-me
//
//  Created by Harun Gökçegöz on 15/03/2023.
//

import Foundation

struct MissedTime {
    let startDate: Date
    let endDate: Date

    func hoursElapsed() -> Int {
        let timeInterval = endDate.timeIntervalSince(startDate)
        let hours = Int(timeInterval / 3600)
        return hours
    }
    
    static func date(from dateString: String, format: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: dateString)
    }
}
