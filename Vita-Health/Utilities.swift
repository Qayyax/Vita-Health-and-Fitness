//
//  Utilities.swift
//  Vita-Health
//
//  Created by Qayyax on 8/23/25.
//

import Foundation
import SwiftUI

extension Color {
  static func custom (_ hex: String) -> Color {
    let r = Int(hex.prefix(2), radix: 16) ?? 0
    let g = Int(hex.dropFirst(2).prefix(2), radix: 16)  ?? 0
    let b = Int(hex.suffix(2), radix: 16) ?? 0
    print("\(Double(r) / 255) \(Double(g) / 255) \(Double(b) / 255)")
    return Color(red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255)
  }
}
