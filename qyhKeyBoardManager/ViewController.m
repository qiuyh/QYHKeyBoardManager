//
//  ViewController.m
//  qyhKeyBoardManager
//
//  Created by Qiu on 16/4/3.
//  Copyright © 2016年 YongHuaiQIu. All rights reserved.
//

#import "ViewController.h"
#import "QYHKeyBoardManager.h"
#import "NextViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (IBAction)next:(id)sender {
    
    NextViewController *nextVC = [[NextViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [QYHKeyBoardManager shareInstance].selfView = self.view;
}


-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [QYHKeyBoardManager shareInstance].selfView = nil;
}



@end
