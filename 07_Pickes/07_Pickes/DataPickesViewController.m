//
//  DataPickesViewController.m
//  07_Pickes
//
//  Created by hello on 16/4/20.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "DataPickesViewController.h"

@interface DataPickesViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation DataPickesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDate * now = [NSDate date];
    [self.datePicker setDate:now animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    
    NSDate *date = self.datePicker.date;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:MM"];
    NSString *message = [[NSString alloc] initWithFormat:@"The date and time you selected is %@", [formatter stringFromDate:date]];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Date and time Selected" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"That's so true!" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}

@end
