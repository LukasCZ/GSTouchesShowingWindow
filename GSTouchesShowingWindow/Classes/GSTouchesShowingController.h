//
//  GSTouchesShowingController.h
//  FlurryPodExperiment
//
//  Created by Lukas Petr on 6/8/17.
//  Copyright © 2017 Glimsoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface GSTouchesShowingController : NSObject

// The view parameter is the upmost view (either UIWindow, or the GSTouchesShowingGestureRecognizer.view).
- (void)touchBegan:(UITouch *)touch view:(UIView *)view;
- (void)touchMoved:(UITouch *)touch view:(UIView *)view;
- (void)touchEnded:(UITouch *)touch view:(UIView *)view;

@end
