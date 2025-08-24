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
      AppTheme.offYellow
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
          
          // Vstack for into - would hide
          HStack {
            Image("morning")
              .resizable()
              .frame(width: 125, height: 150)
              
            
            // For the text
            VStack(alignment: .leading, spacing: 10) {
              Text("You're doing great today!")
                .font(.headline)
              
              HStack {
                Text("Chat with VitAi")
                  .fontWeight(.semibold)
                Image(systemName: "sparkles")
                  .foregroundStyle(AppTheme.primaryGreen)
              }
              .padding()
              .background(Color.white)
              .cornerRadius(20)
              
            }
            Spacer()
          }
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
        HStack {
          ProgressWheel(progress: 0.8)
          Spacer()
          VStack (alignment: .leading){
            ForEach(statsOverview, id: \.self.1) { stat in
              StatsOverview(circleColor: stat.0, title: stat.1, currentValue: stat.2, goalValue: stat.3, unit: stat.4)
            }
            
          }
        }
        .padding( 20)
        .background(AppTheme.white)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(.horizontal, 20)

      }
      .border(AppTheme.primaryGreen, width: 2)
    }
  }
}

#Preview {
  Home()
}

let statsOverview: [(Color, String, Int, Int, String?)] = [
  (AppTheme.secondaryGreen, "Steps", 5000, 10000, ""),
  (AppTheme.blue, "Water", 2, 2, "L"),
  (AppTheme.yellow, "Sleep", 7, 7, "h"),
]
