//
//  MainViewController.m
//  MenuBarTest
//
//  Created by Zacharias Pasternack on 6/19/15.
//  Copyright (c) 2015 Fat Apps, LLC. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property( strong, nonatomic ) NSPopover* popover;

@end


@implementation MainViewController


- (void) toggleWindow:(id)sender
{
	if( !self.popover.shown ) {
		[self showPopover:sender];
	}
	else {
		[self closePopover];
	}
}


- (void) showPopover:(id)sender
{
	NSRect aRect = [sender bounds];
	[self.popover showRelativeToRect:aRect
							  ofView:sender
					   preferredEdge:NSMaxYEdge];
}


- (void) closePopover
{
	[self.popover performClose:self];
}


- (NSPopover*) popover
{
	if( _popover == nil ) {
		_popover = [[NSPopover alloc] init];
		_popover.contentViewController = self;
		_popover.behavior = NSPopoverBehaviorTransient;
		_popover.animates = NO;
	}
	return _popover;
}


@end
