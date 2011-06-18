//
//  GraphicsAppDelegate.h
//  Graphics
//
//  Created by Vandad Nahavandipoor on 11-03-30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GraphicsViewController;

@interface GraphicsAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet GraphicsViewController *viewController;

@end
