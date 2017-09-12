//
//  WDEmitterBaseCell.h
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
/**
 *  散落方向
 */

typedef enum : NSUInteger {
    kFallDirectionToLeft,
    kFallDirectionToRight,
    kFallDirectionToTop,
    kFallDirectionToBottom
} kFallDirection;

@interface WDEmitterBaseCell : CAEmitterCell

@end
