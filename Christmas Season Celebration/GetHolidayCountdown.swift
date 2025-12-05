//
//  GetHolidayCountdown.swift
//  Christmas Celebration
//
//  Created by Brian Homer Jr on 11/26/25.
//

import Foundation

struct HolidayCountdown {
    let date: Date
    let dayNumber: Int
    let holidayDate: Date
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d"
        return formatter.string(from: date)
    }
    
    var formattedHolidayDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d"
        return formatter.string(from: holidayDate)
    }
}

func getHolidayCountdown(year: Int? = nil) -> (christmas: HolidayCountdown?, easter: HolidayCountdown?) {
    let calendar = Calendar.current
    let today = calendar.startOfDay(for: Date())
    let currentYear = year ?? calendar.component(.year, from: today)
    
    // Christmas is always December 25
    let christmas = calendar.date(from: DateComponents(year: currentYear, month: 12, day: 25))!
    
    // Calculate Easter using the Anonymous Gregorian algorithm
    func getEasterDate(year: Int) -> Date {
        let a = year % 19
        let b = year / 100
        let c = year % 100
        let d = b / 4
        let e = b % 4
        let f = (b + 8) / 25
        let g = (b - f + 1) / 3
        let h = (19 * a + b - d - g + 15) % 30
        let i = c / 4
        let k = c % 4
        let l = (32 + 2 * e + 2 * i - h - k) % 7
        let m = (a + 11 * h + 22 * l) / 451
        let month = (h + l - 7 * m + 114) / 31
        let day = ((h + l - 7 * m + 114) % 31) + 1
        
        return calendar.date(from: DateComponents(year: year, month: month, day: day))!
    }
    
    let easter = getEasterDate(year: currentYear)
    
    // Calculate 30 days before each holiday (day 1 starts 30 days before)
    let christmasStart = calendar.date(byAdding: .day, value: -30, to: christmas)!
    let easterStart = calendar.date(byAdding: .day, value: -30, to: easter)!
    
    // Calculate day number (1-30) from start dates
    // Day 1 = 30 days before, Day 30 = day before holiday
    func getDayNumber(startDate: Date, endDate: Date) -> Int? {
        let days = calendar.dateComponents([.day], from: startDate, to: today).day ?? 0
        let dayNumber = days + 1 // Convert to 1-based counting
        // Return nil if outside the 30-day window (before day 1 or after day 30)
        if dayNumber < 1 || dayNumber > 30 {
            return nil
        }
        return dayNumber
    }
    
    let christmasDay = getDayNumber(startDate: christmasStart, endDate: christmas)
    let easterDay = getDayNumber(startDate: easterStart, endDate: easter)
    
    let christmasCountdown = christmasDay.map { HolidayCountdown(date: today, dayNumber: $0, holidayDate: christmas) }
    let easterCountdown = easterDay.map { HolidayCountdown(date: today, dayNumber: $0, holidayDate: easter) }
    
    return (christmas: christmasCountdown, easter: easterCountdown)
}

// Example usage:
//let countdown = getHolidayCountdown()
//
//if let christmas = countdown.christmas {
//    print("Today: \(christmas.formattedDate), day \(christmas.dayNumber)")
//    print("Christmas: \(christmas.formattedHolidayDate)")
//} else {
//    print("Not in Christmas countdown period")
//}
//
//if let easter = countdown.easter {
//    print("Today: \(easter.formattedDate), day \(easter.dayNumber)")
//    print("Easter: \(easter.formattedHolidayDate)")
//} else {
//    print("Not in Easter countdown period")
//}
