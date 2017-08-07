//
//  GSAppPreviewTouchesWindow.m
//  Routes
//
//  Created by Lukas Petr on 16/08/14.
//  Copyright (c) 2014 Glimsoft. All rights reserved.
//

#import "GSTouchesShowingWindow.h"
#import "GSTouchesShowingController.h"

@interface GSTouchesShowingWindow ()

@property (nonatomic, strong) GSTouchesShowingController *controller;

@end


@implementation GSTouchesShowingWindow

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initialize];
    }
    return self;
}

- (void)initialize {
    self.controller = [[GSTouchesShowingController alloc] init];
}

- (void)sendEvent:(UIEvent *)event {
    
    NSSet *touches = [event allTouches];
    
    for (UITouch *touch in touches) {
        
        switch ([touch phase]) {
                
            case UITouchPhaseBegan:
                [self.controller touchBegan:touch view:self];
                break;
                
            case UITouchPhaseMoved:
                [self.controller touchMoved:touch view:self];
                break;
                
            case UITouchPhaseEnded:
            case UITouchPhaseCancelled:
                [self.controller touchEnded:touch view:self];
                break;
                
            default:
                break;
        }
    }
    [super sendEvent:event];
}

@end
