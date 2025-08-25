//
//  AddNewGoals.swift
//  Vita-Health
//
//  Created by Qayyax on 8/25/25.
//

import SwiftUI

struct AddNewGoals: View {
  func printMe() {
    print("Added new Goal")
  }
    var body: some View {
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
}

#Preview {
    AddNewGoals()
}
