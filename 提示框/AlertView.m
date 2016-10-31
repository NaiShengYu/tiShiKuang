//
//  AlertView.m
//  提示框
//
//  Created by 俞乃胜 on 16/5/20.
//  Copyright © 2016年 俞乃胜. All rights reserved.
//

#import "AlertView.h"
#define screenWigth [[UIScreen mainScreen] bounds].size.width
#define screenHeight [[UIScreen mainScreen] bounds].size.height
@implementation AlertView

- (instancetype)init
{
    self =[super init];
    if (self) {
        self.frame =CGRectMake(0, 0, screenWigth, screenHeight);
        self.backgroundColor =[UIColor blackColor];
        self.alpha =0.5;
        
        CGFloat backBounds =screenWigth-80;
        UIView *back =[[UIView alloc]init];
        back.backgroundColor =[UIColor whiteColor];
        back.center =CGPointMake(screenWigth/2, screenHeight/2);
        back.bounds =CGRectMake(0, 0, backBounds, 100);
        back.layer.cornerRadius =10;
        back.layer.masksToBounds =YES;
        [self addSubview:back];
        
        _messageLab =[[UILabel alloc]initWithFrame:CGRectMake(10, 0, backBounds-20, 60)];
        _messageLab.text =@"确认删除收货地址？？";
        _messageLab.textAlignment =NSTextAlignmentCenter;
        _messageLab.textColor =[UIColor blackColor];
        [back addSubview:_messageLab];
        
        _leftBut =[[UIButton alloc]initWithFrame:CGRectMake(0, 60, backBounds/2, 40)];
        [_leftBut setTitle:@"取消" forState:UIControlStateNormal];
        [_leftBut setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_leftBut addTarget:self action:@selector(cancel) forControlEvents:UIControlEventTouchUpInside];
        _leftBut.layer.borderWidth =0.6;

        [back addSubview:_leftBut];
//        //贝塞尔曲线
//        UIBezierPath *leftBezier =[UIBezierPath bezierPathWithRoundedRect:_leftBut.bounds byRoundingCorners:UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
//        CAShapeLayer *leftLayer =[[CAShapeLayer alloc]init];
//        leftLayer.frame =_leftBut.bounds;
//        leftLayer.path =leftBezier.CGPath;
//        _leftBut.layer.mask =leftLayer.mask;
        
        _rightBut =[[UIButton alloc]initWithFrame:CGRectMake(backBounds/2, 60, backBounds/2, 40)];
        [_rightBut setTitle:@"确认" forState:UIControlStateNormal];
        [_rightBut setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _rightBut.backgroundColor =[UIColor orangeColor];
        //贝塞尔曲线画
        UIBezierPath *rightBezier =[UIBezierPath bezierPathWithRoundedRect:_rightBut.bounds byRoundingCorners:UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
        CAShapeLayer *rightLayer =[[CAShapeLayer alloc]init];
        rightLayer.frame =_rightBut.bounds;
        rightLayer.path =rightBezier.CGPath;
        _rightBut.layer.mask =rightLayer.mask;
        
        _rightBut.layer.borderWidth =0.6;
        _rightBut.layer.borderColor =[UIColor orangeColor].CGColor;
        [back addSubview:_rightBut];
        
    }
    return self;


}
- (void)cancel
{
    [self removeFromSuperview];

}


@end
