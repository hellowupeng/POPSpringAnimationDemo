//
//  ViewController.m
//  POPSpringAnimationDemo
//
//  Created by gaiaworks on 16/4/29.
//  Copyright © 2016年 gaiaworks. All rights reserved.
//

#import "ViewController.h"
#import <pop/POP.h>

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.testView];
    self.testView.layer.frame = CGRectMake(50, -200, 168, 168);
    [UIView animateWithDuration:1.5
                          delay:0.0
         usingSpringWithDamping:0.4
          initialSpringVelocity:0
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         
                         self.testView.layer.frame = CGRectMake(50, 200, 168, 168);
                     } completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
