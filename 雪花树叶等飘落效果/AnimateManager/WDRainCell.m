//
//  WDRainCell.m
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import "WDRainCell.h"
#import <UIKit/UIKit.h>
#import "UIImage+EXtension.h"

@implementation WDRainCell


+ (instancetype)rainCellWithImage:(NSString *)cellImage radious:(CGFloat)radious velocity:(CGFloat)velocity direction:(kFallDirection)direction {
    NSString * const rainPic = @"rain.png";// 这里没有雨水的默认图片
    
    WDRainCell *cell=(WDRainCell *)[[self alloc] init];
    cell.name = @"rain";
    cell.birthRate		= 40.0;
    cell.lifetime		= 60;
    
    cell.velocity		= 70;				// falling down slowly
    cell.velocityRange  = 3;
    cell.yAcceleration  = 2;
    cell.emissionRange  = 0.5 * M_PI;		// some variation in angle
    cell.spinRange		= 0.25 * M_PI;		// slow spin
    
    //设置雪花图片
    UIImage *img;
    if (cellImage.length==0) {
        img = [UIImage imageNamed:rainPic];
        //        UIColor *color = [UIColor colorWithRed:0.600 green:0.658 blue:0.743 alpha:1.000];
        //        img = [self imageWithColor:color];
    }else{
        img=[UIImage imageNamed:cellImage];
    }
    // 设置雪花半径大小
    //    img=[UIImage image:img scaleToSize:CGSizeMake(radious, radious)];
    img=[UIImage image:img scaleToSize:CGSizeMake(7, 15)];
    cell.contents = (id)[img CGImage];
    
    //速率与半径大小正相关
    cell.velocity = radious*2;
    
    //重力加速方向,y代表竖直,x为横向,数值越大,速度越快
    cell.yAcceleration = 4;
    //向周围发散的角度
    cell.emissionRange = 0.5* M_PI;
    
    
    return cell;

}
@end
