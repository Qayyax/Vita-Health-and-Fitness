//
//  GoalsCalendar.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct GoalsCalendar: View {
//  @State private var selectedDate = Date()
  let calendar = Calendar.current
  let weekDays = ["M", "T", "W", "T", "F", "S", "S"]
  
  @State private var selectedDate: Date? = nil
  
  var currentWeekDates: [Date] {
    let weekInterval = calendar.dateInterval(of: .weekOfYear, for: Date())
    return (0..<7).compactMap { calendar.date(byAdding: .day, value: $0, to: weekInterval!.start) }
  }
  
  var body: some View {
    VStack(spacing: 8) {
      
      HStack {
        ForEach(weekDays, id: \.self) { day in
          Text(day)
            .frame(maxWidth: .infinity)
            .font(.headline)
        }
      }
      
      // Dates of current week
      HStack {
        ForEach(currentWeekDates, id: \.self) { date in
          let isToday = calendar.isDateInToday(date)
          let isSelected = selectedDate != nil && calendar.isDate(selectedDate!, inSameDayAs: date)
          
          Text("\(calendar.component(.day, from: date))")
            .frame(maxWidth: .infinity)
            .padding(8)
            .background(
              RoundedRectangle(cornerRadius: 16)
                .fill(isSelected ? Color.green : (isToday ? Color.blue : Color.clear))
            )
            .foregroundColor(isSelected || isToday ? .white : .primary)
            .onTapGesture {
              selectedDate = date
            }
        }
      }
    }
    .padding()
  }
}

#Preview {
    GoalsCalendar()
}
