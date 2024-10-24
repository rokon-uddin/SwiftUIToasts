//
//  ContentView.swift
//  SwiftUIToasts
//
//  Created by Mohammed Rokon Uddin on 10/23/24.
//

import SwiftUI

struct ContentView: View {
  @State private var toasts: [Toast] = []
  var body: some View {
    NavigationStack {
      VStack(spacing: 16) {

        Button("Simple Toast", action: simpleToast)
          .buttonStyle(.borderedProminent)
          .padding(.top, 124)

        Button("Interactive Toast", action: interactiveToast)
          .buttonStyle(CapsuleButton())

        Button("Self Dismissing Toast", action: selfDismissingToast)
          .buttonStyle(.bordered)

        Spacer()
      }
      .navigationTitle("SwiftUI Toasts")
    }
    .interactiveToast($toasts)
  }

  private func simpleToast() {
    withAnimation {
      let toast = Toast { id in
        SimpleToastView()
      }
      toasts.append(toast)
    }
  }

  private func selfDismissingToast() {
    withAnimation {
      let toast = Toast { id in
        SelfDismissingToastView(id: id, toasts: $toasts)
      }
      toasts.append(toast)
    }
  }

  private func interactiveToast() {
    withAnimation {
      let toast = Toast { id in
        InteractiveToastView(id: id, toasts: $toasts)
      }
      toasts.append(toast)
    }
  }
}

#Preview {
  ContentView()
    .preferredColorScheme(.dark)
}
