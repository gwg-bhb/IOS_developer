//
//  NameAndCorolorCellTableViewCell.h
//  08_Table Cells
//
//  Created by hello on 16/5/3.
//  Copyright © 2016年 who am I. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NameAndCorolorCellTableViewCell : UITableViewCell <UITableViewDataSource>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *color;

@end
