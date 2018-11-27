//
//  YHViewController.m
//  YHCountLabel
//
//  Created by zhubch on 11/27/2018.
//  Copyright (c) 2018 zhubch. All rights reserved.
//

#import "YHViewController.h"
#import "YHCountLabel.h"
@interface YHViewController ()

@end

@implementation YHViewController
{
    YHCountLabel *count;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    count = [[YHCountLabel alloc] init];
    count.frame = CGRectMake(100, 200, 200, 40);
    count.text = @"点我开始从0到2000";
    [self.view addSubview:count];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [count yh_countFrom:0 to:2000 duration:2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
