//
//  UIView+TapViewController.m
//  MKExtension
//
//  Created by Mekor on 16/9/5.
//  Copyright © 2016年 李小争. All rights reserved.
//

#import "UIView+TapViewController.h"
#import "UIView+Tap.h"

@interface UIView_TapViewController ()

@end

@implementation UIView_TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(200, 200, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [redView addTapBlock:^(UIView * view) {
        NSLog(@"%@",view.backgroundColor);
    }];
    [self.view addSubview:redView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
