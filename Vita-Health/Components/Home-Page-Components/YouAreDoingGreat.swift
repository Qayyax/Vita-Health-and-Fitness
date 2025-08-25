//
//  YouAreDoingGreat.swift
//  Vita-Health
//
//  Created by Qayyax on 8/24/25.
//

import SwiftUI

struct YouAreDoingGreat: View {
    var body: some View {
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
}

#Preview {
    YouAreDoingGreat()
}
