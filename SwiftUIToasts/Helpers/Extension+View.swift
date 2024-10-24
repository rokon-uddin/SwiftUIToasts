//
//  Extension+View.swift
//  SwiftUIToasts
//
//  Created by Mohammed Rokon Uddin on 10/24/24.
//

import SwiftUI

extension View {
  @ViewBuilder
  func interactiveToast(_ toasts: Binding<[Toast]>) -> some View {
    self
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .overlay(alignment: .bottom) {
        ToastsView(toasts: toasts)
      }
  }
}
