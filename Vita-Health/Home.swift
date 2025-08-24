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
        
        //
      }
      .border(AppTheme.primaryGreen, width: 2)
    }
  }
}

#Preview {
  Home()
}
