//
//  ViewController.m
//  LZH_PersonalCenter
//
//  Created by admin  on 2018/7/21.
//  Copyright © 2018年 刘中华. All rights reserved.
//

#import "ViewController.h"
#import "LZHPersonalCenterView.h"

@interface ViewController ()<LZHPersonalCenterViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor] ;
    
    NSArray * centerArr = @[@[@"保障",@"卡包"],@[@"美容",@"商城",@"天气"],@[@"问诊"]] ;
    LZHPersonalCenterView * pcv = [[LZHPersonalCenterView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) CenterArr:centerArr isShowHeader:YES];
    pcv.delegate = self ;
    //按需求定是否需要
    pcv.extendCenterRightArr = @[@[@"",@"余额不足"],@[@"看你美的",@"",@"玛丽亚台风"],@[@""]] ;
    [self.view addSubview:pcv];
}

-(void)didSelectRowTitle:(NSString *)title{
        NSLog(@"点击：---  %@",title) ;
}

-(void)tapHeader{
    NSLog(@"点你个头") ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
