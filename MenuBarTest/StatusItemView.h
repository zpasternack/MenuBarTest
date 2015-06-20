//
//  StatusItemView.h
//  MenuBarTest
//
//  Created by Zacharias Pasternack on 6/19/15.
//  Copyright (c) 2015 Fat Apps, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface StatusItemView : NSView

@property( strong, nonatomic ) NSImage* image;
@property( weak, nonatomic ) id target;
@property( assign, nonatomic ) SEL action;

@end
