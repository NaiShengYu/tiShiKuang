//
//  ViewController.m
//  提示框
//
//  Created by 俞乃胜 on 16/5/20.
//  Copyright © 2016年 俞乃胜. All rights reserved.
//

#import "ViewController.h"
#import "AlertView.h"
#import "提示框-Swift.h"
@interface ViewController ()
{
    AlertView *alert;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *but =[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    but.backgroundColor =[UIColor redColor];
    [but addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but];






}
- (void)click
{
    
    [self presentViewController:[FirstViewController new] animated:YES completion:nil];
    
    
    
//    customSwift *custom =[[customSwift alloc]init];
//    [custom logMe];
//    NSLog(@"搞笑事");
//    alert =[[AlertView alloc]init];
//    [alert.rightBut addTarget:self action:@selector(remove) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:alert];
}
- (void)remove
{
    [alert removeFromSuperview];
    NSLog(@"删除");

}
- (void)dlog{
    NSLog(@"这个可以的");
}
@end
