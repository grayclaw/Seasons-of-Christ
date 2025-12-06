//
//  SettingsView.swift
//  The Season of Christ
//
//  Created by Brian Homer Jr on 11/19/25.
//

import SwiftUI
import UserNotifications

struct SettingsView: View {
    @AppStorage("notificationHour") private var notificationHour: Int = 9
    @AppStorage("notificationsEnabled") private var notificationsEnabled: Bool = false
    @State private var showingPermissionAlert = false
    @State private var showingTimePicker = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Daily Reminders")) {
                    Toggle("Enable Notifications", isOn: $notificationsEnabled)
                        .onChange(of: notificationsEnabled) { oldValue, newValue in
                            if newValue {
                                requestNotificationPermission()
                            } else {
                                cancelAllNotifications()
                            }
                        }
                    
                    if notificationsEnabled {
                        Button(action: {
                            showingTimePicker = true
                        }) {
                            HStack {
                                Text("Remind me at")
                                Spacer()
                                Text(formatHourTo12Hour(notificationHour))
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .alert("Notifications Disabled", isPresented: $showingPermissionAlert) {
                Button("Open Settings", action: openAppSettings)
                Button("Cancel", role: .cancel) {
                    notificationsEnabled = false
                }
            } message: {
                Text("Please enable notifications in Settings to receive daily reminders.")
            }
            .sheet(isPresented: $showingTimePicker) {
                TimePickerView(selectedHour: $notificationHour, onDismiss: {
                    showingTimePicker = false
                    scheduleNotifications()
                })
            }
        }
    }
    
    private func formatHourTo12Hour(_ hour: Int) -> String {
        let period = hour < 12 ? "AM" : "PM"
        let displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour)
        return "\(displayHour):00 \(period)"
    }
    
    private func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    scheduleNotifications()
                } else {
                    notificationsEnabled = false
                    showingPermissionAlert = true
                }
            }
        }
    }
    
    private func scheduleNotifications() {
        // Cancel existing notifications first
        cancelAllNotifications()
        
        guard notificationsEnabled else { return }
        
        let center = UNUserNotificationCenter.current()
        let calendar = Calendar.current
        let currentYear = calendar.component(.year, from: Date())
        
        // Schedule Christmas notifications (30 days before = November 25 to December 24)
        scheduleHolidayNotifications(
            holidayName: "Christmas",
            startMonth: 11,
            startDay: 25,
            endMonth: 12,
            endDay: 24,
            year: currentYear,
            center: center,
            calendar: calendar,
            prefix: "christmas"
        )
        
        // Calculate Easter date for the current year
        let easterDate = getEasterDate(year: currentYear)
        
        // Calculate 30 days before Easter (start of countdown)
        let easterStartDate = calendar.date(byAdding: .day, value: -30, to: easterDate)!
        let easterStartComponents = calendar.dateComponents([.year, .month, .day], from: easterStartDate)
        
        // Calculate day before Easter (end of countdown)
        let easterEndDate = calendar.date(byAdding: .day, value: -1, to: easterDate)!
        let easterEndComponents = calendar.dateComponents([.year, .month, .day], from: easterEndDate)
        
        // Schedule Easter notifications
        scheduleHolidayNotifications(
            holidayName: "Easter",
            startMonth: easterStartComponents.month!,
            startDay: easterStartComponents.day!,
            endMonth: easterEndComponents.month!,
            endDay: easterEndComponents.day!,
            year: currentYear,
            center: center,
            calendar: calendar,
            prefix: "easter"
        )
    }
    
    private func scheduleHolidayNotifications(
        holidayName: String,
        startMonth: Int,
        startDay: Int,
        endMonth: Int,
        endDay: Int,
        year: Int,
        center: UNUserNotificationCenter,
        calendar: Calendar,
        prefix: String
    ) {
        let startDate = DateComponents(calendar: calendar, year: year, month: startMonth, day: startDay).date!
        let endDate = DateComponents(calendar: calendar, year: year, month: endMonth, day: endDay).date!
        
        var currentDate = startDate
        var dayNumber = 1
        
        while currentDate <= endDate {
            let content = UNMutableNotificationContent()
            content.title = "The Seasons of Christ - \(holidayName) Day \(dayNumber)"
            content.body = "Your daily reflection is ready"
            content.sound = .default
            
            // Create date components for the notification
            var dateComponents = calendar.dateComponents([.year, .month, .day], from: currentDate)
            dateComponents.hour = notificationHour
            dateComponents.minute = 0
            
            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
            let request = UNNotificationRequest(
                identifier: "\(prefix)-day-\(dayNumber)",
                content: content,
                trigger: trigger
            )
            
            center.add(request) { error in
                if let error = error {
                    print("Error scheduling notification: \(error.localizedDescription)")
                }
            }
            
            // Move to next day
            currentDate = calendar.date(byAdding: .day, value: 1, to: currentDate)!
            dayNumber += 1
        }
    }
    
    // Easter calculation using Anonymous Gregorian algorithm
    private func getEasterDate(year: Int) -> Date {
        let calendar = Calendar.current
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
    
    private func cancelAllNotifications() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
    }
    
    private func openAppSettings() {
        if let url = URL(string: UIApplication.openSettingsURLString) {
            UIApplication.shared.open(url)
        }
    }
}

struct TimePickerView: View {
    @Binding var selectedHour: Int
    let onDismiss: () -> Void
    
    // Available hours from 6 AM to 10 PM
    private let availableHours = Array(6...22)
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Select Notification Time")
                    .font(.headline)
                    .padding()
                
                Picker("Hour", selection: $selectedHour) {
                    ForEach(availableHours, id: \.self) { hour in
                        Text(formatHourTo12Hour(hour))
                            .tag(hour)
                    }
                }
                .pickerStyle(.wheel)
                .frame(height: 200)
                
                Spacer()
            }
            .navigationBarItems(
                trailing: Button("Done") {
                    onDismiss()
                }
            )
        }
    }
    
    private func formatHourTo12Hour(_ hour: Int) -> String {
        let period = hour < 12 ? "AM" : "PM"
        let displayHour = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour)
        return "\(displayHour):00 \(period)"
    }
}

#Preview {
    SettingsView()
}
