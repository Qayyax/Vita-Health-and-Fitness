//
//  Tabs.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct Tabs: View {
  @State private var activeTab = "Home"
  private var tabs: [TabDetails] = [
    TabDetails(title: "Home", icon: "house"),
    TabDetails(title: "Explore", icon: "squareshape.split.2x2"),
    TabDetails(title: "VitAi", icon: "sparkles"),
    TabDetails(title: "Profile", icon: "person")
  ]
  var body: some View {
    ZStack {
      AppTheme.gray.ignoresSafeArea(edges: .all)
        TabView (selection: $activeTab) {
          Home()
            .tag("Home")
            .toolbar(.hidden, for: .tabBar)
          
          Explore()
            .tag("Explore")
            .toolbar(.hidden, for: .tabBar)
          
          VitAi()
            .tag("VitAi")
            .toolbar(.hidden, for: .tabBar)
          
          Profile()
            .tag("Profile")
            .toolbar(.hidden, for: .tabBar)
        }
     
      VStack {
        Spacer()
        HStack(alignment: .center, spacing: 40) {
          ForEach(tabs, id: \.title) { tab in
            Button(action: {
              self.activeTab = tab.title;
            }) {
              VStack {
                Image(systemName: tab.icon)
                  .font(.system(size: 20))
                Text(tab.title)
                  .font(.caption)
              }
              .foregroundColor(self.activeTab == tab.title ? AppTheme.primaryGreen : AppTheme.dark)
            }
          }
        }
        .padding(20)
        .frame(width: .infinity, height: 50)
        .cornerRadius(25)
      }
    }
  }
}

#Preview {
  Tabs()
}

struct TabDetails {
  var title: String
  var icon: String
}
