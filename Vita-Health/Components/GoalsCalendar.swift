//
//  GoalsCalendar.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct GoalsCalendar: View {
  @State private var selectedDate = Date()
    var body: some View {
      VStack {
        DatePicker("Goals day", selection: $selectedDate, displayedComponents: .date)
          .datePickerStyle(.graphical)
      }
    }
}

#Preview {
    GoalsCalendar()
}
