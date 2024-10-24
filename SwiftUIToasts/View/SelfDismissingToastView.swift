//
//  SelfDismissingToastView.swift
//  SwiftUIToasts
//
//  Created by Mohammed Rokon Uddin on 10/24/24.
//

import SwiftUI

struct SelfDismissingToastView: View {
  var id: String
  @Binding var toasts: [Toast]
  @State var timeRemaining = 3
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

  var body: some View {
    Text("I will be dismissed in \(timeRemaining) seconds")
      .font(.callout)
      .foregroundStyle(Color.primary)
      .padding(.vertical, 12)
      .padding(.horizontal, 16)
      .background {
        Background()
      }
      .onReceive(timer) { time in
        if timeRemaining > 0 {
          timeRemaining -= 1
        }
      }
      .onAppear {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
          $toasts.delete(id)
        }
      }
  }
}
