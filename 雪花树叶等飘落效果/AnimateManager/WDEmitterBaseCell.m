//
//  WDEmitterBaseCell.m
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import "WDEmitterBaseCell.h"

@implementation WDEmitterBaseCell

- (instancetype)init {
    self = [super init];
    if (self) {
        //创建雪花形状的粒子
        self = (WDEmitterBaseCell *)[CAEmitterCell emitterCell];
        //粒子的名字
//        self.name = @"snow";
        //粒子参数的速度乘数因子
        
        //产生粒子的速率,应该采用外部设置
        self.birthRate = 1.5;
        //粒子的生命周期
        self.lifetime = 60.0;
        //粒子速度,采用外部设置
        //粒子的速度变化范围
        self.velocityRange = self.velocity;
        //自旋转角度范围
        self.spinRange = 0.5 * M_PI;

    }
    return self;
}
@end
