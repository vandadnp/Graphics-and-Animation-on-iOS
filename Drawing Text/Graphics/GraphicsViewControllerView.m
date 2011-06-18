//
//  GraphicsViewControllerView.m
//  Main Project
//
//  Created by Vandad Nahavandipoor on 11-03-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GraphicsViewControllerView.h"

@implementation GraphicsViewControllerView

- (id)initWithFrame:(CGRect)frame{
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
  }
  return self;
}

- (void)drawRect:(CGRect)rect{
  // Drawing code
  
  UIFont *helveticaBold = 
  [UIFont fontWithName:@"HelveticaNeue-Bold"
                  size:40.0f];
  
  NSString *myString = @"Some String";
  
  [myString drawAtPoint:CGPointMake(40, 180)
               withFont:helveticaBold];
  
}

- (void)dealloc{
  [super dealloc];
}

@end
