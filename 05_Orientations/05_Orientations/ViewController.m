//
//  ViewController.m
//  05_Orientations
//
//  Created by hello on 16/4/11.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSUInteger)supportedInterfaceOrientations{
    return (UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft);
}

@end
