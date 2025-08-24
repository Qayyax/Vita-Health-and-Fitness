//
//  StatsProgress.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct StatsProgress: View {
  var icon: String = "person"
  var goalTitle: String = "Goal"
  var goalComment: String = "Comment"
  var primaryColor: Color = .blue
  var secondaryColor: Color = .blue
  var completed: Double = 0.5
  
    var body: some View {
      HStack {
        Image(systemName: icon)
          .background(in: Circle())
          .backgroundStyle(AppTheme.blue)
        
        VStack(alignment: .leading) {
          Text(goalTitle)
            .font(.caption)
            .foregroundColor(.secondary)
          Text(goalComment)
            .font(.caption2)
        }
        
        VStack(alignment: .trailing) {
          ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
              .frame(width: 80, height: 10)
              .foregroundStyle(AppTheme.offBlue)
            
            RoundedRectangle(cornerRadius: 8)
              .frame(width: completed * 80, height: 10)
              .foregroundStyle(primaryColor)
          }
          Text("\(Int(completed * 100))%")
        }
      }
      .padding()
      .background(AppTheme.yellow)
      .cornerRadius(20)
    }
}

#Preview {
    StatsProgress()
}
