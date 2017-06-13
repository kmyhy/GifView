//
//  ViewController.m
//  GifView
//
//  Created by qq on 2017/5/4.
//  Copyright © 2017年 qq. All rights reserved.
//

#import "ViewController.h"
#import "GifView.h"

@interface ViewController ()
@property (strong, nonatomic) GifView *gifView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建 GifView实例
    self.gifView = [[GifView alloc]initWithFrame:CGRectMake(100, 200, 104, 11)];
    [self.view addSubview:self.gifView];
    
    // 加载动画图片序列
    self.gifView.gifArray = [NSArray arrayWithObjects:
                 [UIImage imageNamed:@"1"],
                 [UIImage imageNamed:@"2"],
                 [UIImage imageNamed:@"3"],
                 [UIImage imageNamed:@"4"],
                 [UIImage imageNamed:@"5"],
                 [UIImage imageNamed:@"6"],
                 [UIImage imageNamed:@"7"],
                 [UIImage imageNamed:@"8"],
                 [UIImage imageNamed:@"9"],
                 [UIImage imageNamed:@"10"],
                 nil];
    // 设置动画时长
    self.gifView.duration=0.85;
    // 开始播动画
    self.gifView.stopped = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    self.gifView.stopped = !_gifView.stopped;
}

@end
