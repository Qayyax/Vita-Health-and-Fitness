//
//  StatsOverview.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct StatsOverview: View {
  var circleColor: Color = AppTheme.blue
  var title: String = "Title"
  var currentValue: Int = 0
  var goalValue: Int = 100
  var unit: String? = "%"
    var body: some View {
      HStack(alignment: .top) {
        Circle()
          .fill(circleColor)
          .frame(width: 16, height: 16)
        VStack(alignment: .leading){
          Text(title)
          HStack(spacing: 0){
            Text("\(currentValue)\(unit ?? "")")
              .foregroundStyle(AppTheme.dark)
            Text("/\(goalValue)")
              .foregroundStyle(AppTheme.gray)
          }
        }
      }
    }
}

#Preview {
    StatsOverview()
}
