//
//  InteractiveToastView.swift
//  SwiftUIToasts
//
//  Created by Mohammed Rokon Uddin on 10/24/24.
//

import SwiftUI

struct InteractiveToastView: View {
  var id: String
  @Binding var toasts: [Toast]

  var body: some View {
    HStack(spacing: 12) {
      Text("Tap \"") + Text(Image(systemName: "xmark.circle.fill"))
        + Text("\" to dismiss")
        .font(.callout)
      Spacer(minLength: 0)
      Button {
        $toasts.delete(id)
      } label: {
        Image(systemName: "xmark.circle.fill")
          .font(.title2)
      }
    }
    .foregroundStyle(Color.primary)
    .padding(.vertical, 12)
    .padding(.horizontal, 16)
    .background {
      Background()
    }
    .padding(.horizontal, 16)
  }
}
