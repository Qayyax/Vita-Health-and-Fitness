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
    let r = Int(hex.prefix(2))
    let g = Int(hex.dropFirst(2).prefix(2))
    let b = Int(hex.suffix(2))
    return Color(red: Double(r ?? 0) / 255, green: Double(g ?? 0) / 255, blue: Double(b ?? 0) / 255)
  }
}
