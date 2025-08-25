//
//  CompleteGoals.swift
//  Vita-Health
//
//  Created by Qayyax on 8/24/25.
//

import SwiftUI

struct CompleteGoals: View {
  //  var icon: String = "person"
  //  var goalTitle: String = "Goal"
  //  var goalComment: String = "Comment"
  //  var primaryColor: Color = AppTheme.primaryGreen
  //  var secondaryColor: Color = AppTheme.secondaryGreen
  //  var completed: Double = 0.5
  let completedGoals: [CompletedGoalsType] = [
    CompletedGoalsType(icon: "shoe.2", goalTitle: "Steps", goalComment: "Daily 10,000 steps", primaryColor: AppTheme.primaryGreen, secondaryColor: AppTheme.secondaryGreen, completed: 0.5),
    CompletedGoalsType(icon: "waterbottle", goalTitle: "Water", goalComment: "Drink 2L", primaryColor: AppTheme.blue, secondaryColor: AppTheme.offBlue, completed: 1),
    CompletedGoalsType(icon: "bed.double", goalTitle: "Sleep", goalComment: "7 hours of sleep", primaryColor: AppTheme.yellow, secondaryColor: AppTheme.offYellow, completed: 1),
  ]
  var body: some View {
    VStack {
      ForEach(completedGoals, id: \.self.goalTitle) { goal in
        HStack {
          Checkbox()
          StatsProgress(icon: goal.icon,
                        goalTitle: goal.goalTitle,
                        goalComment: goal.goalComment,
                        primaryColor: goal.primaryColor,
                        secondaryColor: goal.secondaryColor,
                        completed: goal.completed)
        }
        
      }
    }
  }
}

#Preview {
  CompleteGoals()
}

struct CompletedGoalsType {
  var icon: String
  var goalTitle: String
  var goalComment: String
  var primaryColor: Color
  var secondaryColor: Color
  var completed: Double
}
