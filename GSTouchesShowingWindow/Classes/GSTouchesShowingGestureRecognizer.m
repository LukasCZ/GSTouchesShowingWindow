//
//  GSTouchesGestureRecognizer.m
//  FlurryPodExperiment
//
//  Created by Lukas Petr on 6/8/17.
//  Copyright © 2017 Glimsoft. All rights reserved.
//

#import "GSTouchesShowingGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>
#import "GSTouchesShowingController.h"

@interface GSTouchesShowingGestureRecognizer () <UIGestureRecognizerDelegate>

@property (nonatomic, strong) GSTouchesShowingController *touchesShowingController;

@end


@implementation GSTouchesShowingGestureRecognizer

- (instancetype)init {
    if (self = [super init]) {
        self.touchesShowingController = [[GSTouchesShowingController alloc] init];
        self.cancelsTouchesInView = NO;
        self.delaysTouchesBegan = NO;
        self.delaysTouchesEnded = NO;
        self.delegate = self;
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        [self.touchesShowingController touchBegan:touch view:self.view];
    }
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        [self.touchesShowingController touchMoved:touch view:self.view];
    }
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        [self.touchesShowingController touchEnded:touch view:self.view];
    }
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        [self.touchesShowingController touchEnded:touch view:self.view];
    }
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(nonnull UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
