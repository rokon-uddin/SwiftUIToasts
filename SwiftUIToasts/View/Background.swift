//
//  Background.swift
//  SwiftUIToasts
//
//  Created by Mohammed Rokon Uddin on 10/24/24.
//

import SwiftUI

struct Background: View {
  var body: some View {
    Capsule()
      .fill(.ultraThinMaterial)
      .shadow(color: .black.opacity(0.06), radius: 3, x: -1, y: -3)
      .shadow(color: .black.opacity(0.06), radius: 2, x: 1, y: 3)
  }
}
