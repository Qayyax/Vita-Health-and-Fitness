//
//  home.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct Home: View {
  @State private var scrollPosition: CGPoint = .zero
  var body: some View {
    ZStack {
      AppTheme.offWhite
        .ignoresSafeArea()

      VStack(spacing: 0) {
        VStack {
          HStack {
            Text(scrollPosition.y >= -90 ? "Good Morning **Gizem!**" : "**Home**")
              .font(.title)
            Spacer()
            ProfileCircular()
          }
          .padding(.horizontal)
          .safeAreaPadding(.top, 50)

        }
        .padding(.bottom)
        .background(AppTheme.secondaryGreen)
        .clipShape( scrollPosition.y <= -90 ?
          UnevenRoundedRectangle(cornerRadii: .init(
            bottomLeading: 50,
            bottomTrailing: 50,
          )) : UnevenRoundedRectangle()
        )
        
        ScrollView {
          // Vstack for into - would hide
          VStack {
            if scrollPosition.y >= -90 {
              YouAreDoingGreat()
            }
          }
          .background(AppTheme.secondaryGreen)
          .clipShape(
            UnevenRoundedRectangle(cornerRadii: .init(
              bottomLeading: 50,
              bottomTrailing: 50,
            ))
          )
            .background(GeometryReader { geometry in
              Color.clear
                .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
            })
            .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
              self.scrollPosition = value
            }
          
          
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
        .scrollIndicators(.hidden)
        .scrollBounceBehavior(.basedOnSize, axes: .vertical)
        .coordinateSpace(name: "scroll")
        .safeAreaPadding(.bottom, 50)
        .ignoresSafeArea()
      }
      .ignoresSafeArea()
    }
  }
}

#Preview {
  Home()
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero

    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}
