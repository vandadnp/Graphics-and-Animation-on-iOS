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



//- (void) viewDidAppear:(BOOL)paramAnimated{
//  
//  [super viewDidAppear:paramAnimated];
//  
//  /* Place the image view at the center of the
//   view of this view controller */
//  self.xcodeImageView.center = self.view.center;
//  
//  /* Make sure no translation is applied to this image view */
//  self.xcodeImageView.transform = CGAffineTransformIdentity;
//  
//  /* Begin the animation */
//  [UIView beginAnimations:nil 
//                  context:NULL];
//  
//  /* Make the animation 5 seconds long */
//  [UIView setAnimationDuration:5.0f];
//  
//  /* Make the image view twice as large in
//   width and height */
//  self.xcodeImageView.transform = 
//    CGAffineTransformMakeScale(2.0f,
//                               2.0f);
//  
//  /* Commit the animation */
//  [UIView commitAnimations];
//  
//}

//- (void) viewDidAppear:(BOOL)paramAnimated{
//  
//  [super viewDidAppear:paramAnimated];
//  
//  /* Place the image view at the center of the
//   view of this view controller */
//  self.xcodeImageView.center = self.view.center;
//  
//  /* Begin the animation */
//  [UIView beginAnimations:nil 
//                  context:NULL];
//  
//  /* Make the animation 5 seconds long */
//  [UIView setAnimationDuration:5.0f];
//  
//  /* Make the image view twice as large in
//   width and height */
//  self.xcodeImageView.frame = 
//  CGRectMake(self.xcodeImageView.frame.origin.x,
//             self.xcodeImageView.frame.origin.y, 
//             CGRectGetWidth(self.xcodeImageView.frame) * 2.0f,
//             CGRectGetHeight(self.xcodeImageView.frame) * 2.0f);
//  
//  /* Commit the animation */
//  [UIView commitAnimations];
//  
//}

- (void) viewDidAppear:(BOOL)paramAnimated{
  
  [super viewDidAppear:paramAnimated];
  
  
  self.xcodeImageView.center = self.view.center;
  
  /* Begin the animation */
  [UIView beginAnimations:nil
                  context:NULL];
  
  /* Make the animation 5 seconds long */
  [UIView setAnimationDuration:5.0f];

  /* Make the image view twice as large in
   width and height */
  self.xcodeImageView.layer.contentsScale = 0.4;
  
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
                                      100.0f,
                                      100.0f)];
  
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
