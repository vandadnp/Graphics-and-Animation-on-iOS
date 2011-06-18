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

//- (void)drawRect:(CGRect)rect{
//  // Drawing code
//  
//  CGContextRef currentContext = 
//    UIGraphicsGetCurrentContext();
//  
//  CGContextSaveGState(currentContext);
//  
//  CGColorSpaceRef colorSpace = 
//    CGColorSpaceCreateDeviceRGB();
//  
//  UIColor *startColor = [UIColor blueColor];
//  CGFloat *startColorComponents = 
//    (CGFloat *)CGColorGetComponents([startColor CGColor]);
//  
//  UIColor *endColor = [UIColor greenColor];
//  CGFloat *endColorComponents = 
//    (CGFloat *)CGColorGetComponents([endColor CGColor]);
//  
//  CGFloat colorComponents[8] = {
//    
//    /* Four components of the blue color (RGBA) */
//    startColorComponents[0], 
//    startColorComponents[1], 
//    startColorComponents[2], 
//    startColorComponents[3], /* First color = blue */
//    
//    
//    /* Four components of the green color (RGBA) */
//    endColorComponents[0],
//    endColorComponents[1],
//    endColorComponents[2],
//    endColorComponents[3], /* Second color = green */
//    
//  };
//  
//  CGFloat colorIndices[2] = {
//    0.0f, /* Color 0 in the colorComponents array */
//    1.0f, /* Color 1 in the colorComponents array */
//  };
//  
//  CGGradientRef gradient = 
//  CGGradientCreateWithColorComponents
//  (colorSpace,
//   (const CGFloat *)&colorComponents, 
//   (const CGFloat *)&colorIndices,
//   2);
//  
//  CGColorSpaceRelease(colorSpace);
//  
//  CGRect screenBounds = [[UIScreen mainScreen] bounds];
//  
//  CGPoint startPoint, endPoint;
//  
//  startPoint = CGPointMake(0.0f, 
//                           screenBounds.size.height / 2.0f);
//  
//  endPoint = CGPointMake(screenBounds.size.width,
//                         startPoint.y);
//  
//  CGContextDrawLinearGradient
//  (currentContext, 
//   gradient,
//   startPoint,
//   endPoint, 
//   0);
//  
//  CGGradientRelease(gradient);
//  
//  CGContextRestoreGState(currentContext);
//  
//}

- (void)drawRect:(CGRect)rect{
  // Drawing code
  
  CGContextRef currentContext = 
    UIGraphicsGetCurrentContext();
  
  CGContextSaveGState(currentContext);
  
  CGColorSpaceRef colorSpace = 
    CGColorSpaceCreateDeviceRGB();
  
  UIColor *startColor = [UIColor orangeColor];
  CGFloat *startColorComponents = 
    (CGFloat *)CGColorGetComponents([startColor CGColor]);
  
  UIColor *endColor = [UIColor blueColor];
  CGFloat *endColorComponents = 
    (CGFloat *)CGColorGetComponents([endColor CGColor]);
  
  CGFloat colorComponents[8] = {
    
    /* Four components of the orange color (RGBA) */
    startColorComponents[0], 
    startColorComponents[1], 
    startColorComponents[2], 
    startColorComponents[3], /* First color = orange */
    
    
    /* Four components of the blue color (RGBA) */
    endColorComponents[0],
    endColorComponents[1],
    endColorComponents[2],
    endColorComponents[3], /* Second color = blue */
    
  };
  
  CGFloat colorIndices[2] = {
    0.0f, /* Color 0 in the colorComponents array */
    1.0f, /* Color 1 in the colorComponents array */
  };
  
  CGGradientRef gradient = 
  CGGradientCreateWithColorComponents
  (colorSpace,
   (const CGFloat *)&colorComponents, 
   (const CGFloat *)&colorIndices,
   2);
  
  CGColorSpaceRelease(colorSpace);
  
  CGPoint startPoint, endPoint;
  
  startPoint = CGPointMake(120, 
                           260);
  
  endPoint = CGPointMake(200.0f,
                         220);
  
  CGContextDrawLinearGradient
  (currentContext, 
   gradient,
   startPoint,
   endPoint, 
   kCGGradientDrawsBeforeStartLocation |
   kCGGradientDrawsAfterEndLocation);
  
  CGGradientRelease(gradient);
  
  CGContextRestoreGState(currentContext);
  
}


- (void)dealloc{
  [super dealloc];
}

@end
