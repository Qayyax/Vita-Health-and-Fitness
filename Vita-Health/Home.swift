//
//  home.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct Home: View {
  func printMe() {
    print("Added new Goal")
  }
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
          CompleteGoals()
          
          Button(action: printMe) {
            HStack {
              Spacer()
              Image(systemName: "plus")
              Text("Add New Goal")
                .bold()
              Spacer()
            }
            .padding()
            .background(AppTheme.white)
            .foregroundStyle(AppTheme.primaryGreen)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding(20)
            .padding(.bottom, 20)
          }
        }
        .safeAreaPadding(.bottom, 50)
        .ignoresSafeArea()
    }
  }
}

#Preview {
  Home()
}

