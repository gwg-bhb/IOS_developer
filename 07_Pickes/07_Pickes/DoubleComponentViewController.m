//
//  DoubleComponentViewController.m
//  07_Pickes
//
//  Created by hello on 16/4/20.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "DoubleComponentViewController.h"

@interface DoubleComponentViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewOne;
@property (strong, nonatomic) NSArray *characterNameOne;
@property (strong, nonatomic) NSArray *characterNameTwo;

@end

@implementation DoubleComponentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.characterNameOne = @[@"Ham", @"Turkey", @"Peanut Butter", @"Chicken Salad", @"Roast Beaf", @"Vegemite"];
    self.characterNameTwo = @[@"White", @"Whole Wheat", @"Rye", @"Sourdough", @"Seven Grain"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(UIButton *)sender {
    
    NSInteger rowOne = [self.pickerViewOne selectedRowInComponent:0];
    NSString *selectedOne = self.characterNameOne[rowOne];
    NSInteger rowTwo = [self.pickerViewOne selectedRowInComponent:1];
    NSString *selectedTwo = self.characterNameTwo[rowTwo];
    NSString *string = [NSString stringWithFormat:@"You selected %@ and %@!", selectedOne, selectedTwo];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"You pressed!" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:string style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark -
#pragma mark PickerView DataSource Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return [self.characterNameOne count];
    }
    else
        return [self.characterNameTwo count];
}

#pragma mark PickerView Delegate Methods
- (NSString *)pickerview:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return self.characterNameOne[row];
    }
    else
        return self.characterNameTwo[row];
}
@end
