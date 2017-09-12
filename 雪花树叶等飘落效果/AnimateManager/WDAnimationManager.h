//
//  WDAnimationManager.h
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 *  动画形式
 */
typedef enum : NSUInteger {
    WDAnimationStyleSnow,
    WDAnimationStyleLeaves,
    WDAnimationStyleRain
} WDAnimationStyle;

@interface WDAnimationManager : NSObject

/**
 *  创建Manager
 */
+ (instancetype)shareManager;

/**
 *  superview
    animationStyle
 */
- (void)showManagerInView:(UIView *)view withAnimationStyle:(WDAnimationStyle)YFAnimationStyle;
@end
