//
//  ViewController.m
//  06_View Switcher
//
//  Created by hello on 16/4/17.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "SwitchingViewController.h"
#import "BlueViewController.h"
#import "YellosViewController.h"

@interface SwitchingViewController ()

@property (nonatomic, strong) YellosViewController *yellowViewController;
@property (nonatomic, strong) BlueViewController *blueviewController;

@end

@implementation SwitchingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.blueviewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Blue"];
    self.blueviewController.view.frame = self.view.frame;
   
    [self switchViewFromViewController:nil toViewController:self.blueviewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    if (!self.blueviewController.view.superview) {
        self.blueviewController = nil;
    }else{
        self.yellowViewController = nil;
    }
}


- (IBAction)switchView:(id)sender{
    
    if (!self.yellowViewController.view.superview) {
        if (!self.yellowViewController) {
            self.yellowViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Yellow"];
        }
    }else{
        if (!self.blueviewController) {
            self.blueviewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Blue"];
        }
    }
    
    [UIView beginAnimations:@"View Flip" context:NULL];
    [UIView setAnimationDuration:0.4];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    if (!self.yellowViewController.view.superview) {
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        self.yellowViewController.view.frame = self.view.frame;
        [self switchViewFromViewController:self.blueviewController toViewController:self.yellowViewController];
    }else{
         [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];
        self.blueviewController.view.frame = self.view.frame;
        [self switchViewFromViewController:self.yellowViewController toViewController:self.blueviewController];
    }
    
    [UIView commitAnimations];
}

- (void)switchViewFromViewController:(UIViewController *)fromVc toViewController:(UIViewController *)toVc{
    
    if (fromVc != nil) {
        [fromVc willMoveToParentViewController:nil];
        [fromVc.view removeFromSuperview];
        [fromVc removeFromParentViewController];
    }
    
    if (toVc != nil) {
        [self addChildViewController:toVc];
        [self.view insertSubview:toVc.view atIndex:0];
        [toVc didMoveToParentViewController:self];
    }
}
@end
