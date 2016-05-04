//
//  NameAndCorolorCellTableViewCell.m
//  08_Table Cells
//
//  Created by hello on 16/5/3.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "NameAndCorolorCellTableViewCell.h"

@interface NameAndCorolorCellTableViewCell()

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *colorLabel;

@end

@implementation NameAndCorolorCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (void)setName:(NSString *)name{
    
    if (![name isEqualToString:_name]) {
        _name = [name copy];
        self.nameLabel.text = _name;
    }
}

- (void)setColor:(NSString *)color{
    
    if(![color isEqualToString:_color]){
        _color = [color copy];
        self.colorLabel.text = _color;
    }
}

@end
