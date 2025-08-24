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
      AppTheme.secondaryGreen
        .ignoresSafeArea()
      ScrollView {
        // put this in a green bg
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
              Text("You are doing great today!")
              
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
        
        //
      }
    }
  }
}

#Preview {
  Home()
}
