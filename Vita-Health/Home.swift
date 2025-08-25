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
          }
        }
        .ignoresSafeArea()
    }
  }
}

#Preview {
  Home()
}

