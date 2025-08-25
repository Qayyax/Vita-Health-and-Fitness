//
//  home.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct Home: View {
  var body: some View {
    ZStack {
      AppTheme.offWhite
        .ignoresSafeArea()

        ScrollView {
          VStack {
            HStack {
              Text("Good Morning **Gizem!**")
                .font(.title)
              Spacer()
              ProfileCircular()
            }
            .padding(.horizontal)
            .safeAreaPadding(.top, 50)

            // Vstack for into - would hide
            YouAreDoingGreat()
          }
          .background(AppTheme.secondaryGreen)
          .clipShape(
            UnevenRoundedRectangle(cornerRadii: .init(
              bottomLeading: 50,
              bottomTrailing: 50,
            ))
          )
          .padding(.bottom, 20)
          
          // Progress wheel section
          GoalsCompletedOverall()
          
          HabitChallenge()
          
          VStack (alignment: .leading) {
            Text("Goals")
              .font(.title2)
              .bold()
            GoalsCalendar()
          }
          .padding(.horizontal, 20)
          
          CompleteGoals()
          AddNewGoals()
          
        }
        .safeAreaPadding(.bottom, 50)
        .ignoresSafeArea()
    }
  }
}

#Preview {
  Home()
}

