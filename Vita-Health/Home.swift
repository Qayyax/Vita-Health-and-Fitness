//
//  home.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
      ScrollView {
        HStack {
          Text("Good Morning **Gizem!**")
            .font(.title)
          Spacer()
          ProfileCircular()
        }
      }
    }
}

#Preview {
  Home()
}
