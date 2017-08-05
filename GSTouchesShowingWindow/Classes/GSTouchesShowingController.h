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

- (void)touchBegan:(UITouch *)touch;
- (void)touchMoved:(UITouch *)touch;
- (void)touchEnded:(UITouch *)touch;

@end
