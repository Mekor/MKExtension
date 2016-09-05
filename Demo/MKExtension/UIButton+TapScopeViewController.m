//
//  UIButton+TapScopeViewController.m
//  MKExtension
//
//  Created by Mekor on 16/9/5.
//  Copyright © 2016年 李小争. All rights reserved.
//

#import "UIButton+TapScopeViewController.h"
#import "UIButton+TapScope.h"

@interface UIButton_TapScopeViewController ()

@end

@implementation UIButton_TapScopeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *superView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 250, 250)];
    superView.backgroundColor = [UIColor redColor];
    [self.view addSubview:superView];
    
    
    UIButton *yellowBtn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 100, 50)];
    yellowBtn.backgroundColor = [UIColor yellowColor];
    yellowBtn.hitEdgeInsets = UIEdgeInsetsMake(-50, -50, -10, -10);
    [yellowBtn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [superView addSubview:yellowBtn];
}

- (void)click {
    NSLog(@"%s",__func__);
}
@end
