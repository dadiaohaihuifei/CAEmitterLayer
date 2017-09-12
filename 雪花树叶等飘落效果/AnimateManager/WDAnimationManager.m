//
//  WDAnimationManager.m
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import "WDAnimationManager.h"
#import "WDEmitterLayer.h"

@implementation WDAnimationManager

static id manager;


+ (instancetype)shareManager {
    WDAnimationManager *manager = [[WDAnimationManager alloc] init];
    return manager;
}

- (void)showManagerInView:(UIView *)view withAnimationStyle:(WDAnimationStyle)WDAnimationStyle {
    switch (WDAnimationStyle) {
        case WDAnimationStyleSnow:
             [WDEmitterLayer addSnowLayerInView:view];
            break;
        case WDAnimationStyleLeaves:
            [WDEmitterLayer addLeavesLayerInView:view];
            break;
        case WDAnimationStyleRain:
            [WDEmitterLayer addRainLayerInView:view];
            break;
        default:
            break;
    }
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (manager == nil) {
            manager = [super allocWithZone:zone];
        }
    });
    return manager;
}

@end
