//
//  Checkbox.swift
//  Vita-Health
//
//  Created by Qayyax on 8/25/25.
//

import SwiftUI

struct Checkbox: View {
  @State private var isChecked = false
    var body: some View {
      Toggle("", isOn: $isChecked)
          .toggleStyle(CheckboxToggleStyle())

    }
}

#Preview {
    Checkbox()
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(configuration.isOn ? AppTheme.primaryGreen : AppTheme.offWhite)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
}
