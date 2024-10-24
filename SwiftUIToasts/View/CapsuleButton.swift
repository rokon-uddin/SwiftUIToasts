//
//  CapsuleButton.swift
//  SwiftUIToasts
//
//  Created by Mohammed Rokon Uddin on 10/24/24.
//

import SwiftUI

struct CapsuleButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .padding(12)
      .background(.green)
      .foregroundStyle(.white)
      .clipShape(Capsule())
      .scaleEffect(configuration.isPressed ? 1.2 : 1)
      .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
  }
}
