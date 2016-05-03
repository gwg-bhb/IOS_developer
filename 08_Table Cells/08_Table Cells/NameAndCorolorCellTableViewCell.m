//
//  NameAndCorolorCellTableViewCell.m
//  08_Table Cells
//
//  Created by hello on 16/5/3.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import "NameAndCorolorCellTableViewCell.h"

@interface NameAndCorolorCellTableViewCell()

@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UILabel *colorLabel;

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

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGRect nameLabelRect = CGRectMake(0, 5, 70, 35);
        UILabel *nameMraker = [[UILabel alloc] initWithFrame:nameLabelRect];
        
        nameMraker.textAlignment = NSTextAlignmentRight;
        nameMraker.text = @"Name";
        nameMraker.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:nameMraker];
        
        CGRect colorLabelRect = CGRectMake(0, 26, 70, 15);
        UILabel *colorMarker = [[UILabel alloc] initWithFrame:colorLabelRect];
        colorMarker.textAlignment = NSTextAlignmentRight; // 右对齐
        colorMarker.text = @"Color";
        colorMarker.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:colorMarker];
        
        CGRect nameValueRect = CGRectMake(80, 5, 200, 15);
        self.nameLabel = [[UILabel alloc] initWithFrame:nameValueRect];
        [self.contentView addSubview:_nameLabel];
        
        CGRect colorValueRect = CGRectMake(80, 25, 200, 15);
        self.colorLabel = [[UILabel alloc] initWithFrame:colorValueRect];
        [self.contentView addSubview:_colorLabel];
    }
    return self;
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
