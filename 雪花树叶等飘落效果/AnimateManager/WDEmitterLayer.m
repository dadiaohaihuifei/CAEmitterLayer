//
//  WDEmitterLayer.m
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import "WDEmitterLayer.h"
#import "WDSnowCell.h"
#import "WDLeavesCell.h"
#import "WDRainCell.h"

@implementation WDEmitterLayer

+ (instancetype)addCustomLayerInView:(UIView *)view atPosition:(CGPoint)position inSize:(CGSize)size
{
    WDEmitterLayer *leavesEmitter = (WDEmitterLayer*)[CAEmitterLayer layer];
    
    //例子发射器位置，可以动态设置
    leavesEmitter.emitterPosition = position;
    leavesEmitter.emitterSize = CGSizeMake(size.width, size.height);
    
    //超出图层的雪花全部裁掉
    view.layer.masksToBounds=YES;
    
    //发射模式
    leavesEmitter.emitterMode = kCAEmitterLayerSurface;
    
    //粒子边缘的颜色,设置白色会有模糊效果
    leavesEmitter.shadowColor = [[UIColor whiteColor] CGColor];
    
    //添加图层到显示雪花的view的layer
    [view.layer addSublayer:leavesEmitter];
    
    return leavesEmitter;
}


#pragma mark - 雪花效果
+ (void)addSnowLayerInView:(UIView *)view {
    [WDEmitterLayer snowLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:kFallDirectionToBottom andRadious:19 andCellImg:nil];
    
    [WDEmitterLayer snowLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:kFallDirectionToBottom andRadious:9 andCellImg:nil];
    
    [WDEmitterLayer snowLayerInView:view atPosition:CGPointMake(-60,view.frame.size.height * 0.33) andDirection:kFallDirectionToBottom andRadious:14 andCellImg:nil];
}

+ (void)snowLayerInView:(UIView *)view atPosition:(CGPoint)position andDirection:(kFallDirection)direction andRadious:(CGFloat)radious andCellImg:(NSString *)cellImg{
    NSLog(@"调用了 - snowLayerInView");
    //创建雪花所在图层layer
    WDEmitterLayer *snowLayer=[self addCustomLayerInView:view atPosition:position inSize:CGSizeMake(view.frame.size.width, view.frame.size.height)];
    
    //粒子
    WDSnowCell *emitterCell = [WDSnowCell snowCellWithImage:cellImg radious:radious velocity:20 direction:direction];
    
    snowLayer.emitterCells=@[emitterCell];
}


#pragma mark - 树叶效果
+ (void)addLeavesLayerInView:(UIView *)view {
    //树叶粒子所在view,发射树叶的位置,树叶飘向的方向,树叶粒子半径,树叶粒子图片
    [WDEmitterLayer leavesLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:kFallDirectionToBottom andRadious:19 andCellImg:nil];
    
    [WDEmitterLayer leavesLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:kFallDirectionToBottom andRadious:9 andCellImg:nil];
    
    [WDEmitterLayer leavesLayerInView:view atPosition:CGPointMake(-60,view.frame.size.height*0.33) andDirection:kFallDirectionToBottom andRadious:14 andCellImg:nil];
    
}

+ (void)leavesLayerInView:(UIView *)view atPosition:(CGPoint)position andDirection:(kFallDirection)direction andRadious:(CGFloat)radious andCellImg:(NSString *)cellImg
{
    //创建树叶所在图层layer
    WDEmitterLayer *leavesLayer = [self addCustomLayerInView:view atPosition:position inSize:CGSizeMake(view.frame.size.width, view.frame.size.height)];
    
    //粒子
    WDLeavesCell *emitterCell = [WDLeavesCell leavesCellWithImage:cellImg radious:radious velocity:20 direction:direction];
    
    leavesLayer.emitterCells = @[emitterCell];
}


#pragma mark - 雨点效果
+ (void)addRainLayerInView:(UIView *)view {
    [WDEmitterLayer rainLayerInView:view atPosition:CGPointMake(160,120) andDirection:kFallDirectionToBottom andRadious:19 andCellImg:nil];
    
    [WDEmitterLayer rainLayerInView:view atPosition:CGPointMake(-60,-20) andDirection:kFallDirectionToBottom andRadious:9 andCellImg:nil];
    
    [WDEmitterLayer rainLayerInView:view atPosition:CGPointMake(-60,view.frame.size.height*0.33) andDirection:kFallDirectionToBottom andRadious:14 andCellImg:nil];
}


+ (void)rainLayerInView:(UIView *)view atPosition:(CGPoint)position andDirection:(kFallDirection)direction andRadious:(CGFloat)radious andCellImg:(NSString *)cellImg
{
    //创建雨点所在图层layer
    WDEmitterLayer *rainLayer = [self addCustomLayerInView:view atPosition:position inSize:CGSizeMake(view.frame.size.width, view.frame.size.height)];
    rainLayer.emitterPosition = CGPointMake(320 / 2.0, -30);
    rainLayer.emitterSize	  = CGSizeMake(320 * 2.0, 0);
    
    rainLayer.emitterMode   = kCAEmitterLayerOutline;
    rainLayer.emitterShape	= kCAEmitterLayerLine;
    
    rainLayer.shadowOpacity = 1.0;
    rainLayer.shadowRadius  = 0.0;
    rainLayer.shadowOffset  = CGSizeMake(0.0, 1.0);
    rainLayer.shadowColor   = [[UIColor whiteColor] CGColor];
    rainLayer.seed = (arc4random()%100)+1;
    
    //粒子
    WDRainCell *emitterCell = [WDRainCell rainCellWithImage:cellImg radious:radious velocity:20 direction:direction];
    
    //    emitterCell.contents		= (id)[image CGImage];
    emitterCell.color			= [[UIColor colorWithRed:0.600 green:0.658 blue:0.743 alpha:1.000] CGColor];
    
    
    rainLayer.emitterCells=@[emitterCell];
}
@end
