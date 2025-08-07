// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewTitle.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMCommonTableRow;
@class DeviceRow;

//: @protocol PushCommonTableViewCell <NSObject>
@protocol ViewTitle <NSObject>

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (instancetype)initWithBubble:(UITableViewCellStyle)style cropViewIdentifier:(NSString *)reuseIdentifier;

//: @optional
@optional
//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;
- (void)receive:(DeviceRow *)rowData extra:(UITableView *)tableView;

//: @end
@end
