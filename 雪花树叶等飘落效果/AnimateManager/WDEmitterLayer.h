//
//  WDEmitterLayer.h
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

/**
 *  例子发射器layer
 */
@interface WDEmitterLayer : CAEmitterLayer
/**
 *  添加雪花效果
 */
+ (void)addSnowLayerInView:(UIView *)view;
/**
 *  添加树叶效果
 */
+ (void)addLeavesLayerInView:(UIView *)view;
/**
 *  添加雨点效果
 */
+ (void)addRainLayerInView:(UIView *)view;
@end
