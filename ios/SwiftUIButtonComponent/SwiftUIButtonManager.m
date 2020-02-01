//
//  SwiftUIButtonManager.m
//  ReactNativeWithSwiftUITutorial
//
//  Created by Alexey Kureev on 01/02/2020.
//

#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"
#import "ReactNativeWithSwiftUITutorial-Swift.h"

@interface SwiftUIButtonManager : RCTViewManager

@end

@implementation SwiftUIButtonManager

// Expose module to React Native
RCT_EXPORT_MODULE()

// Expose count and onCountChange props
RCT_EXPORT_VIEW_PROPERTY(count, NSNumber);
RCT_EXPORT_VIEW_PROPERTY(onCountChange, RCTBubblingEventBlock);

- (UIView *)view {
  // For now, we can just export an empty UIView.
  // In the later chapters of this tutorial this will be changed.
  return [[SwiftUIButtonProxy alloc] init];
}

@end
