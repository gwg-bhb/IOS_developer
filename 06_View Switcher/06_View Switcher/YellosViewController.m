//
//  YellosViewController.m
//  06_View Switcher
//
//  Created by hello on 16/4/17.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "YellosViewController.h"

@interface YellosViewController ()

@end

@implementation YellosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)yellowButtonPress{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Yellow" message:@"You pressed the button on the yellow     view" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Yep, I did" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
