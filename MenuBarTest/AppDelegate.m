//
//  AppDelegate.m
//  MenuBarTest
//
//  Created by Zacharias Pasternack on 6/19/15.
//  Copyright (c) 2015 Fat Apps, LLC. All rights reserved.
//


#import "AppDelegate.h"
#import "MainViewController.h"
#import "StatusItemView.h"


@interface AppDelegate ()

@property( strong, nonatomic ) NSStatusItem* statusItem;
@property( strong, nonatomic ) MainViewController* mainView;

@end


@implementation AppDelegate


- (void) applicationDidFinishLaunching:(NSNotification*)aNotification
{
	// Create the NSStatusItem.
	CGFloat width = 24.0;
	CGFloat height = [NSStatusBar systemStatusBar].thickness;
	NSRect viewFrame = NSMakeRect( 0, 0, width, height );
	self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
	StatusItemView* statusItemView = [[StatusItemView alloc] initWithFrame:viewFrame];
	[self.statusItem setView:statusItemView];
	[statusItemView setImage:[NSImage imageNamed:NSImageNameActionTemplate]];
	
	// Create our main view.
	self.mainView = [[MainViewController alloc] initWithNibName:@"MainView" bundle:nil];
	
	// Hook up status item to main view.
	[statusItemView setTarget:self.mainView];
	[statusItemView setAction:@selector(toggleWindow:)];
}


@end
