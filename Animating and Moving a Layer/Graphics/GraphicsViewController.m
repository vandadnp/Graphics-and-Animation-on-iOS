//
//  GraphicsViewController.m
//  Graphics
//
//  Created by Vandad Nahavandipoor on 11-03-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GraphicsViewController.h"

@implementation GraphicsViewController

@synthesize xcodeImageView1;
@synthesize xcodeImageView2;

- (id) initWithNibName:(NSString *)nibNameOrNil 
                bundle:(NSBundle *)nibBundleOrNil{
  
  self = [super initWithNibName:nibNameOrNil
                         bundle:nibBundleOrNil];
  
  if (self != nil){
    
    
    
  }
  return self;
}

- (void) startTopLeftImageViewAnimation{
  
  /* Start from top left corner */
  [self.xcodeImageView1 setFrame:CGRectMake(0.0f,
                                            0.0f,
                                            100.0f,
                                            100.0f)];
  
  self.xcodeImageView1.transform = CGAffineTransformIdentity;
  
  [self.xcodeImageView1 setAlpha:1.0f];
  
  [UIView beginAnimations:@"xcodeImageView1Animation"
                  context:xcodeImageView1];
  
  /* 3 seconds animation */
  [UIView setAnimationDuration:3.0f];
  
  /* Receive animation delegates */
  [UIView setAnimationDelegate:self];
  
  [UIView setAnimationDidStopSelector:
   @selector(imageViewDidStop:finished:context:)];
  
  /* End at the bottom right corner */
  [self.xcodeImageView1 setFrame:CGRectMake(220.0f,
                                            350.0f,
                                            100.0f,
                                            100.0f)];
  
  [self.xcodeImageView1 setAlpha:0.0f];
  
  [UIView commitAnimations];
  
}

- (void) startBottomRightViewAnimationAfterDelay:
  (CGFloat)paramDelay{
  
  /* Start from bottom right corner */
  [self.xcodeImageView2 setFrame:CGRectMake(220.0f,
                                            350.0f,
                                            100.0f,
                                            100.0f)];
  
  [self.xcodeImageView2 setAlpha:1.0f];
  
  [UIView beginAnimations:@"xcodeImageView2Animation"
                  context:xcodeImageView2];
  
  /* 3 seconds animation */
  [UIView setAnimationDuration:3.0f];
  
  [UIView setAnimationDelay:paramDelay];
  
  /* Receive animation delegates */
  [UIView setAnimationDelegate:self];
  
  [UIView setAnimationDidStopSelector:
   @selector(imageViewDidStop:finished:context:)];
  
  /* End at the top left corner */
  [self.xcodeImageView2 setFrame:CGRectMake(0.0f,
                                            0.0f,
                                            100.0f,
                                            100.0f)];
  
  [self.xcodeImageView2 setAlpha:0.0f];
  
  [UIView commitAnimations];
  
}

- (void)imageViewDidStop:(NSString *)paramAnimationID 
                finished:(NSNumber *)paramFinished 
                 context:(void *)paramContext{
  
  UIImageView *contextImageView = (UIImageView *)paramContext;
  [contextImageView removeFromSuperview];
  
}

- (void) viewDidAppear:(BOOL)paramAnimated{
  
  [super viewDidAppear:paramAnimated];
  [self startTopLeftImageViewAnimation];
  [self startBottomRightViewAnimationAfterDelay:2.0f];
  
}

- (void) viewDidLoad{
  [super viewDidLoad];
  
  UIImage *xcodeImage = [UIImage imageNamed:@"Xcode.png"];
  
  xcodeImageView1 = [[UIImageView alloc] 
                     initWithImage:xcodeImage];
  
  xcodeImageView2 = [[UIImageView alloc] 
                     initWithImage:xcodeImage];
  
  /* Just set the size to make the images smaller */
  [xcodeImageView1 setFrame:CGRectMake(0.0f,
                                       0.0f,
                                       100.0f,
                                       100.0f)];
  
  [xcodeImageView2 setFrame:CGRectMake(220.0f,
                                       350.0f,
                                       100.0f,
                                       100.0f)];
  
  
  self.view.backgroundColor = [UIColor whiteColor];
  [self.view addSubview:self.xcodeImageView1];
  [self.view addSubview:self.xcodeImageView2];

}

- (void)dealloc{
  [xcodeImageView1 release];
  [xcodeImageView2 release];
  [super dealloc];
}

- (void)viewDidUnload{
  [super viewDidUnload];
  self.xcodeImageView1 = nil;
  self.xcodeImageView2 = nil;
}

@end
