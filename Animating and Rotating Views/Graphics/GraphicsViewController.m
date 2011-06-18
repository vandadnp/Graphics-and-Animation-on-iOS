//
//  GraphicsViewController.m
//  Graphics
//
//  Created by Vandad Nahavandipoor on 11-03-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GraphicsViewController.h"

@implementation GraphicsViewController

@synthesize xcodeImageView;

- (id) initWithNibName:(NSString *)nibNameOrNil 
                bundle:(NSBundle *)nibBundleOrNil{
  
  self = [super initWithNibName:nibNameOrNil
                         bundle:nibBundleOrNil];
  
  if (self != nil){
    
    
    
  }
  return self;
}

- (void)clockwiseRotationStopped:(NSString *)paramAnimationID
                        finished:(NSNumber *)paramFinished
                         context:(void *)paramContext{
  
  [UIView beginAnimations:@"counterclockwiseAnimation" 
                  context:NULL];
  
  /* 5 seconds long */
  [UIView setAnimationDuration:5.0f];
  
  /* Back to original rotation */
  self.xcodeImageView.transform = 
  CGAffineTransformIdentity;
  
  [UIView commitAnimations];
  
}

- (void) viewDidAppear:(BOOL)paramAnimated{
  [super viewDidAppear:paramAnimated];
  
  self.xcodeImageView.center = self.view.center;
  
  /* Begin the animation */
  [UIView beginAnimations:@"clockwiseAnimation"
                  context:NULL];
  
  /* Make the animation 5 seconds long */
  [UIView setAnimationDuration:5.0f];
  
  [UIView setAnimationDelegate:self];
  
  [UIView setAnimationDidStopSelector:
   @selector(clockwiseRotationStopped:finished:context:)];
  
  /* Rotate the image view 90 degrees */
  self.xcodeImageView.transform = 
  CGAffineTransformMakeRotation((90.0f * M_PI) / 180.0f);
  
  /* Commit the animation */
  [UIView commitAnimations];
  
}


- (void) viewDidLoad{
  [super viewDidLoad];
  
  UIImage *xcodeImage = [UIImage imageNamed:@"Xcode.png"];
  
  xcodeImageView = [[UIImageView alloc] 
                    initWithImage:xcodeImage];
  
  /* Just set the size to make the images smaller */
  [xcodeImageView setFrame:CGRectMake(0.0f,
                                      0.0f,
                                      200.0f,
                                      200.0f)];
  
  self.view.backgroundColor = [UIColor whiteColor];
  [self.view addSubview:self.xcodeImageView];
  
}

- (void)dealloc{
  [xcodeImageView release];
  [super dealloc];
}

- (void)viewDidUnload{
  [super viewDidUnload];
  self.xcodeImageView = nil;
}

@end
