//
//  SecondViewController.m
//  提示框
//
//  Created by 俞乃胜 on 16/5/30.
//  Copyright © 2016年 俞乃胜. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor redColor];


}
- (IBAction)click:(id)sender {
    NSLog(@"Xib创建的");
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
