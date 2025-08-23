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
      Color.red
      .ignoresSafeArea()
      VStack {
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
      }
      .border(Color.gray, width: 1)
     
      VStack {
        Spacer()
        HStack(alignment: .center) {
          ForEach(tabs, id: \.title) { tab in
            Button(action: {
              self.activeTab = tab.title;
              let color = Color(red:0.9490196078431372, green: 0.9568627450980393, blue: 0.9686274509803922 );
              print("\(color)")
            }) {
              Image(systemName: tab.icon)
                .font(.system(size: 40))
                .foregroundColor(self.activeTab == tab.title ? .blue : .gray)
            }
          }
        }
        .frame(width: .infinity, height: 50)
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
