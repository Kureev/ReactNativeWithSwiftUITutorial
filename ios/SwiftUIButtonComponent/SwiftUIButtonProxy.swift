//
//  SwiftUIButtonProxy.swift
//  ReactNativeWithSwiftUITutorial
//
//  Created by Alexey Kureev on 01/02/2020.
//

import SwiftUI

@objcMembers class SwiftUIButtonProxy: NSObject {
  private var vc = UIHostingController(rootView: SwiftUIButton())
  
  static let storage = NSMutableDictionary()
  
  var count: Int {
    set { vc.rootView.props.count = newValue }
    get { return vc.rootView.props.count }
  }
  
  var onCountChange: RCTBubblingEventBlock {
    set { vc.rootView.props.onCountChange = newValue }
    get { return vc.rootView.props.onCountChange }
  }
  
  var view: UIView {
    return vc.view
  }
}
