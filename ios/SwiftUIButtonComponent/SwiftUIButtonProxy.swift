//
//  SwiftUIButtonProxy.swift
//  ReactNativeWithSwiftUITutorial
//
//  Created by Alexey Kureev on 01/02/2020.
//

import UIKit
import SwiftUI

final class SwiftUIButtonProxy : UIView {
  
  // We need to create a view controller property as we're going
  // to export it to Objective-C. UIViewController (and UIHostingController
  // that inherits from it) have a view property that represents a view
  // this controller is intended to control. In our case we use SwiftUIButton
  // as a child view for the UIHostingController.
  //
  // So, a few notes about why we use UIViewController instead of UIHostingController.
  // Unfortunately, UIHostingController type can't be exposed to
  // Objective-C as it doesn't have a corresponding Objective-C type.
  // Declaring it as UIViewController tells Objective-C that we expose a regular
  // UIViewController (in fact, we expose UIHostingController), but as we're not
  // using any specific functionality of the UIHostingController, we're good.
  @objc let vc: UIViewController = UIHostingController(rootView: SwiftUIButton())
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    addSubview(vc.view)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
