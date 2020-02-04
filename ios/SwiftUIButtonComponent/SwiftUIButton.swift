//
//  SwiftUIButton.swift
//  ReactNativeWithSwiftUITutorial
//
//  Created by Alexey Kureev on 01/02/2020.
//

import SwiftUI

class ButtonProps : ObservableObject {
  @Published var count: Int = 0
  @Published var onCountChange: RCTDirectEventBlock = { _ in }
}

struct SwiftUIButton : View {
  @ObservedObject var props = ButtonProps()
  
  var body: some View {
    VStack {
      Text("Count \(props.count)")
        .padding()
      
      Button(action: {
        self.props.onCountChange(["count": self.props.count + 1])
      }) {
        Image(systemName: "plus.circle.fill")
          .foregroundColor(.white)
          .padding()
          .background(Color.red)
          .clipShape(Circle())
      }
    }
    .padding()
    .clipShape(Circle())
  }
}
