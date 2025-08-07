// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamTitle.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMCommonTableRow;
@class ConstituentRow;

//: @protocol FFFCommonTableViewCell <NSObject>
@protocol TeamTitle <NSObject>

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (instancetype)initWithPossibility:(UITableViewCellStyle)style can:(NSString *)reuseIdentifier;

//: @optional
@optional
//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;
- (void)demonstrate:(ConstituentRow *)rowData gray:(UITableView *)tableView;

//: @end
@end