//
//  Extension+Binding.swift
//  SwiftUIToasts
//
//  Created by Mohammed Rokon Uddin on 10/24/24.
//

import SwiftUI

extension Binding<[Toast]> {
  func delete(_ id: String) {
    if let toast = first(where: { $0.id == id }) {
      toast.wrappedValue.isDeleting = true
    }

    withAnimation(.bouncy) {
      self.wrappedValue.removeAll { $0.id == id }
    }
  }
}
