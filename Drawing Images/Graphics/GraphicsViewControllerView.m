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
  
  /* Assuming the image is in your app bundle
   and we can load it */
  UIImage *xcodeIcon = 
    [UIImage imageNamed:@"Xcode.png"];
  
  [xcodeIcon drawAtPoint:CGPointMake(0.0f,
                                     20.0f)];
  
  [xcodeIcon drawInRect:CGRectMake(50.0f, 
                                   10.0f,
                                   40.0f,
                                   35.0f)];
  
}

- (void)dealloc{
  [super dealloc];
}

@end
