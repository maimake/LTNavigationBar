//
//  LTNavigationBar.m
//  LTNavigationBar
//
//  Created by mai on 16/4/1.
//  Copyright © 2016年 ltebean. All rights reserved.
//

#import "LTNavigationBar.h"

@implementation LTNavigationBar

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    for (UIView* sub in self.subviewsNeedTestHit) {
        CGPoint translatedPoint = [sub convertPoint:point fromView:self];
       
        if ([sub pointInside:translatedPoint withEvent:event]) {
            return YES;
        }
    }
    
    return [super pointInside:point withEvent:event];
}

@end
