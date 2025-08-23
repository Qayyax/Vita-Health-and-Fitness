//
//  Tabs.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct Tabs: View {
  @State private var activeTab = "home"
  private var tabs: [TabDetails] = [
    TabDetails(title: "Home", icon: "house"),
    TabDetails(title: "Explore", icon: "squareshape.split.2x2"),
    TabDetails(title: "VitAi", icon: "sparkles.2"),
    TabDetails(title: "Profile", icon: "person")
  ]
  var body: some View {
    ZStack {
      VStack {
        TabView (selection: $activeTab) {
          
        }
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
