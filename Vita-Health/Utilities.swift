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
    return Color(red: Double(r) / 255, green: Double(g) / 255, blue: Double(b) / 255)
  }
}

struct AppTheme {
  static let primaryGreen = Color.custom("74BA74")
  static let secondaryGreen = Color.custom("D8EFD3")
  static let dark = Color.custom("212121")
  static let gray = Color.custom("667085")
  static let offWhite = Color.custom("F7F7F7")
  static let offBlue = Color.custom("F2F4F7")
  static let yellow = Color.custom("FACC15")
  static let offYellow = Color.custom("FFF9E3")
  static let blue = Color.custom("3B82F6")
  static let lightBlue = Color.custom("DEEBFF")
  static let white = Color.white
}
