//
//  ViewController.m
//  MKExtension
//
//  Created by Mekor on 16/9/5.
//  Copyright © 2016年 李小争. All rights reserved.
//

#import "ViewController.h"
#import "UIView+TapViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *cells;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    cells = [@[@"UIView+Tap",@"NSObject+SEL",@"UIButton+TapScope"] mutableCopy];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return cells.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = cells[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *className = [NSString stringWithFormat:@"%@ViewController",cells[indexPath.row]];
    NSString *classTureName = [className stringByReplacingOccurrencesOfString:@"+" withString:@"_"];
    
    id myObj = [[NSClassFromString(classTureName) alloc] init];
    [self.navigationController pushViewController:myObj animated:YES];
}

@end
