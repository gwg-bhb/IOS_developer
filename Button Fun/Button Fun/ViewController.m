//
//  ViewController.m
//  Button Fun
//
//  Created by hello on 16/4/6.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel *label;

@end

@implementation ViewController


- (IBAction)button:(id)sender
{
    NSString *buttonText = [sender titleForState:UIControlStateNormal];
//    self.label.text = buttonText;
//    _label.text = buttonText;
    NSMutableAttributedString *styleText = [[NSMutableAttributedString alloc] initWithString:buttonText];
    
    NSDictionary *attributes = @{ NSFontAttributeName:[UIFont boldSystemFontOfSize:_label.font.pointSize]};
    NSRange nameRange = [buttonText rangeOfString:buttonText];
    [styleText setAttributes:attributes range:nameRange];
    _label.attributedText = styleText;
    
    NSLog(@"button touched:%@", buttonText);
}
@end
