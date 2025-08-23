//
//  ProfileCircular.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import SwiftUI

struct ProfileCircular: View {
    var body: some View {
      Image(systemName: "person")
        .font(.system(size: 50))
        .padding()
        .background(in: Circle())
        .backgroundStyle(AppTheme.secondaryGreen)
    }
}

#Preview {
    ProfileCircular()
}
