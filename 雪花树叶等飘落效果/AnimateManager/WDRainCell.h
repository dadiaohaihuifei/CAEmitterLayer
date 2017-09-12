//
//  WDRainCell.h
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import "WDEmitterBaseCell.h"

@interface WDRainCell : WDEmitterBaseCell


/**
 *  图片  粒子半径 移动速度 方向
 */
+ (instancetype)rainCellWithImage:(NSString *)cellImage radious:(CGFloat)radious velocity:(CGFloat)velocity direction:(kFallDirection)direction;

@end
