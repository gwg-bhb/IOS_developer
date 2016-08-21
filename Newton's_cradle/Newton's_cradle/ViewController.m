//
//  ViewController.m
//  Newton's_cradle
//
//  Created by hello on 16/8/17.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

typedef struct{
    CGFloat x;
    CGFloat y;
} RectPoint;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)baseSharp{
    
    RectPoint start, end;
    CAShapeLayer *layer = [CAShapeLayer layer];
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathMoveToPoint(path, nil, start.x, start.y);
    CGPathAddLineToPoint(path, nil, end.x, end.y);
    
    layer.path = path;
    layer.lineCap = kCALineCapRound;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
