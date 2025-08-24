//
//  ProgressWheel.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct ProgressWheel: View {
  var progress: CGFloat = 0.8
  var body: some View {
    ZStack {
      Circle()
        .stroke(lineWidth: 20)
        .foregroundColor(AppTheme.offBlue)
        .frame(width: 150)
      
      Circle()
        .trim(from: 0.0, to: progress)
        .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round))
        .foregroundColor(AppTheme.primaryGreen)
        .rotationEffect(Angle(degrees: -90))
        .animation(.linear, value: progress)
        .frame(width: 150)

      VStack(spacing: 4) {
        Text("Complete")
          .fontWeight(.semibold)
          .foregroundStyle(AppTheme.gray)
        Text("\(Int(progress * 100))%")
          .font(.system(size: 46, weight: .bold))
          .foregroundStyle(AppTheme.dark)
      }
    }
  }
}

#Preview {
    ProgressWheel()
}
