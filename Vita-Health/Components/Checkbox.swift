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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .accentColor : .gray)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}
