//
//  StatusItemView.m
//  MenuBarTest
//
//  Created by Zacharias Pasternack on 6/19/15.
//  Copyright (c) 2015 Fat Apps, LLC. All rights reserved.
//


#import "StatusItemView.h"


@interface StatusItemView ()

@property( weak, nonatomic ) NSImageView* imageView;

@end


@implementation StatusItemView


- (instancetype) initWithFrame:(NSRect)frameRect
{
	self = [super initWithFrame:frameRect];
	if( self ) {
		NSImageView* imageView = [[NSImageView alloc] initWithFrame:frameRect];
		[self addSubview:imageView];
		_imageView = imageView;
	}
	return self;
}


- (void) setImage:(NSImage*)image
{
	self.imageView.image = image;
}


- (void) mouseDown:(NSEvent*)theEvent
{
	if( self.target != nil && self.action != nil ) {
		// Supress warning that performSelector may leak.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
		[self.target performSelector:self.action withObject:self];
#pragma clang diagnostic pop
	}
}

@end
