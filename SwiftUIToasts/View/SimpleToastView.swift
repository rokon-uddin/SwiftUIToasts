//
//  SimpleToastView.swift
//  SwiftUIToasts
//
//  Created by Mohammed Rokon Uddin on 10/24/24.
//

import SwiftUI

struct SimpleToastView: View {
  var body: some View {
    HStack(spacing: 12) {
      Image(systemName: "airpods.pro")
      Text("Johny Appleseed's AirPods Pro")
        .font(.callout)
    }
    .foregroundStyle(Color.primary)
    .padding(.vertical, 12)
    .padding(.horizontal, 16)
    .background {
      Background()
    }
  }
}
