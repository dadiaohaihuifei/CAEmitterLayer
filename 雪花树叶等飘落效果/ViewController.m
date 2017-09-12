//
//  ViewController.m
//  雪花树叶等飘落效果
//
//  Created by MrWu on 2017/9/12.
//  Copyright © 2017年 IYOO. All rights reserved.
//

#import "ViewController.h"
#import "WDAnimationManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.view.backgroundColor = [UIColor grayColor];
    
    [[WDAnimationManager shareManager] showManagerInView:self.view withAnimationStyle:WDAnimationStyleLeaves];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
