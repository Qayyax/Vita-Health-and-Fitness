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
  var primaryColor: Color = AppTheme.primaryGreen
  var secondaryColor: Color = AppTheme.secondaryGreen
  var completed: Double = 0.5
  
    var body: some View {
      HStack {
        Image(systemName: icon)
          .padding(10)
          .background(in: Circle())
          .foregroundStyle(primaryColor)
          .backgroundStyle(secondaryColor)
        
        VStack(alignment: .leading, spacing: 5) {
          Text(goalTitle)
            .fontWeight(.semibold)
            .foregroundColor(AppTheme.dark)
          Text(goalComment)
            .font(.system(size: 16))
            .foregroundStyle(AppTheme.gray)
        }
        
        Spacer()
        
        VStack(alignment: .trailing) {
          ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8)
              .frame(width: 70, height: 10)
              .foregroundStyle(AppTheme.offBlue)
            
            RoundedRectangle(cornerRadius: 8)
              .frame(width: completed * 70, height: 10)
              .foregroundStyle(primaryColor)
          }
          Text("\(Int(completed * 100))%")
            .font(.system(size: 13))
            .foregroundStyle(AppTheme.gray)
        }
      }
      .padding()
      .background(AppTheme.white)
      .cornerRadius(20)
    }
}

#Preview {
    StatsProgress()
}
