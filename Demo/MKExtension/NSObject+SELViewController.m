//
//  NSObject+SELViewController.m
//  MKExtension
//
//  Created by Mekor on 16/9/5.
//  Copyright © 2016年 李小争. All rights reserved.
//

#import "NSObject+SELViewController.h"
#import "NSObject+SEL.h"

@interface NSObject_SELViewController ()

@end

@implementation NSObject_SELViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self performSelector:@selector(printMyName:age:gender:) withObjects:@[@"李小争",@(18),@"男"]];
    
}

-(void)printMyName:(NSString *)name age:(NSNumber *)age gender:(NSString *)gender{
    NSLog(@"我叫%@,我今年%@岁了,我是%@生",name,age,gender);
}


@end
