//
//  GoalsCompletedOverall.swift
//  Vita-Health
//
//  Created by Qayyax on 8/24/25.
//

import SwiftUI

struct GoalsCompletedOverall: View {
  
  let statsOverview: [(Color, String, Int, Int, String?)] = [
    (AppTheme.secondaryGreen, "Steps", 5000, 10000, ""),
    (AppTheme.blue, "Water", 2, 2, "L"),
    (AppTheme.yellow, "Sleep", 7, 7, "h"),
  ]
    var body: some View {
      HStack {
        ProgressWheel(progress: 0.8)
        Spacer()
        VStack (alignment: .leading){
          ForEach(statsOverview, id: \.self.1) { stat in
            StatsOverview(circleColor: stat.0, title: stat.1, currentValue: stat.2, goalValue: stat.3, unit: stat.4)
          }
          
        }
      }
      .padding(20)
      .background(AppTheme.white)
      .clipShape(RoundedRectangle(cornerRadius: 30))
      .padding(.horizontal, 20)
    }
}

#Preview {
    GoalsCompletedOverall()
}
