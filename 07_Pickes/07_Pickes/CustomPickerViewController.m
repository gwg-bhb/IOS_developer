//
//  CustomPickerViewController.m
//  07_Pickes
//
//  Created by hello on 16/4/20.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "CustomPickerViewController.h"

@interface CustomPickerViewController ()
@property (nonatomic, strong) NSArray *images;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *winLabel;

@end

@implementation CustomPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)spin:(UIButton *)sender {
}


@end
