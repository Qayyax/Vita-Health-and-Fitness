//
//  HabitChallenge.swift
//  Vita-Health
//
//  Created by Qayyax on 8/24/25.
//

import SwiftUI

struct HabitChallenge: View {
    var body: some View {
      HStack {
        VStack (alignment: .leading){
          HStack {
            Text("21-Day Habit Challenge")
            HStack(spacing: 0) {
              Text("6")
                .foregroundStyle(AppTheme.primaryGreen)
              Text("/21")
                .foregroundStyle(AppTheme.gray)
            }
          }
          .fontWeight(.bold)
          .padding(.bottom, 10)
          Text("Drink 2L water")
          HStack {
            Text("Reveal Today's Surprise 🎁")
              .fontWeight(.semibold)
          }
          .padding()
          .background(AppTheme.secondaryGreen)
          .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        Spacer()
      }
      .padding()
      .background(AppTheme.white)
      .clipShape(RoundedRectangle(cornerRadius: 20))
      .padding()
      .overlay(alignment: .trailing) {
        Image(systemName: "gift")
          .resizable()
          .fontWeight(.regular)
          .foregroundStyle(AppTheme.secondaryGreen)
          .rotationEffect(.degrees(-30))
          .frame(width: 100, height: 100)
          .opacity(0.3)
          .padding(.trailing, -20)
      }
    }
}

#Preview {
    HabitChallenge()
}
