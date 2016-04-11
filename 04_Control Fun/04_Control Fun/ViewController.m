//
//  ViewController.m
//  04_Control Fun
//
//  Created by hello on 16/4/7.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UILabel *slideLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;
- (IBAction)switchChanged:(UISwitch *)sender;
- (IBAction)toggleControls:(UISegmentedControl *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.slideLabel.text = @"50";
}

- (IBAction)textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender{
    [self.nameField resignFirstResponder];
    [self.numberField resignFirstResponder];
}

- (IBAction)slideChanged:(UISlider *)sender{
    int progress = (int)lroundf(sender.value);
    self.slideLabel.text = [NSString stringWithFormat:@"%d", progress];
}

- (IBAction)leftSwitch:(UISwitch *)sender{
    
}

- (IBAction)rightSwitch:(UISwitch *)sender {
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    [self.view endEditing:YES];
//}
- (IBAction)switchChanged:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleControls:(UISegmentedControl *)sender {
    
    if (sender.selectedSegmentIndex == 0) {
        self.leftSwitch.hidden = NO;
        self.rightSwitch.hidden = NO;
        self.doSomethingButton.hidden = YES;
    }
    else
    {
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}

- (IBAction)buttonPressed:(UIButton *)sender {
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Are you sure?" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"Yes, I am sure!" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action)
                                {
                                    NSString *msg;
                                    if (self.nameField.text.length > 0) {
                                        msg = [NSString stringWithFormat:@"You are breath easy,%@,everything went OK.", self.nameField.text];
                                    }
                                    else
                                    {
                                        msg = @"You can breath easy, everything went ok.";
                                    }
                                    
                                    UIAlertController *controller2 = [UIAlertController alertControllerWithTitle:@"Something was Done" message:msg preferredStyle:UIAlertControllerStyleAlert];
                                    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Phew!" style:UIAlertActionStyleCancel handler:nil];
                                    [controller2 addAction:cancelAction];
                                    [self presentViewController:controller2 animated:YES completion:nil];
                                }];
    
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"No Way!" style:UIAlertActionStyleCancel handler:nil];
    [controller addAction:yesAction];
    [controller addAction:noAction];
    
    UIPopoverPresentationController *ppc = controller.popoverPresentationController;
    if (ppc != nil) {
        ppc.sourceView = sender;
        ppc.sourceRect = sender.bounds;
    }
    [self presentViewController:controller animated:YES completion:nil];
}
@end
