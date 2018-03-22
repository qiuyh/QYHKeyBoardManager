//
//  NextViewController.m
//  qyhKeyBoardManager
//
//  Created by Qiu on 2016/4/3.
//  Copyright © 2016年 YongHuaiQIu. All rights reserved.
//

#import "NextViewController.h"
#import "QYHKeyBoardManager.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [QYHKeyBoardManager shareInstance].selfView = self.view;
}


-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [QYHKeyBoardManager shareInstance].selfView = nil;
}

-(void)dealloc{
//    NSLog(@"dealloc");
}

@end
