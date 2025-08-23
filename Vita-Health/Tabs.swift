//
//  Tabs.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct Tabs: View {
  @State private var activeTab = "home"
  var body: some View {
    ZStack {
      VStack {
        TabView (selection: $activeTab) {
          // continue
        }
      }
    }
  }
}

#Preview {
  Tabs()
}
