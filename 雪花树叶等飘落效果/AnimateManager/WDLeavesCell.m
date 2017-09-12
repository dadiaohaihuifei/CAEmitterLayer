//
//  WDLeavesCell.m
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import "WDLeavesCell.h"
#import <UIKit/UIKit.h>
#import "UIImage+EXtension.h"

@implementation WDLeavesCell


+ (instancetype)leavesCellWithImage:(NSString *)cellImage radious:(CGFloat)radious velocity:(CGFloat)velocity direction:(kFallDirection)direction {
    NSString * const leavesPic = @"leaves.png";//雪花图片样式
    
    WDLeavesCell *cell=(WDLeavesCell *)[[self alloc] init];
    cell.birthRate = 0.3;
    cell.name = @"leaves";
    
    //设置雪花图片
    UIImage *img;
    if (cellImage.length==0) {
        
        img=[UIImage imageNamed:leavesPic];
    }else{
        
        img=[UIImage imageNamed:cellImage];
    }
    //设置雪花半径大小
    img=[UIImage image:img scaleToSize:CGSizeMake(radious, radious)];
    cell.contents=(id)[img CGImage];
    
    //速率与半径大小正相关
    cell.velocity = radious * 2;
    
    //设置雪花飘向的方向
    switch (direction) {
        case kFallDirectionToLeft:
            //重力加速方向,y代表竖直,x为横向,数值越大,速度越快
            cell.xAcceleration=-1;
            //向周围发散的角度
            cell.emissionRange = -0.5* M_PI;
            break;
        case kFallDirectionToRight:
            cell.xAcceleration=1;
            cell.emissionRange = 0.25* M_PI;
            break;
        case kFallDirectionToTop:
            cell.yAcceleration=-1;
            cell.emissionRange = 0.5* M_PI;
            break;
        case kFallDirectionToBottom:
            cell.yAcceleration=1;
            cell.emissionRange = 0.5* M_PI;
            break;
            
    }
    
    return cell;

}
@end
