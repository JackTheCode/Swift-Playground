import UIKit



func getWeekDays() {
    let calendar = Calendar.current
    let today = calendar.startOfDay(for: Date())
    let dayOfWeek = calendar.component(.weekday, from: today)
    let weekdays = calendar.range(of: .weekday, in: .weekOfYear, for: today)!
    let days = (weekdays.lowerBound ..< weekdays.upperBound)
        .compactMap { calendar.date(byAdding: .day, value: $0 - dayOfWeek, to: today) }
    let formatter = DateFormatter()
    formatter.dateFormat = "eeee' : 'D"
    for date in days {
        print(formatter.string(from: date))
    }
}


getWeekDays()
