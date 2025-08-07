// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFMessageCell.h"
#import "CellView.h"
//: #import "FFFSessionTimestampCell.h"
#import "ContentViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"

//: @interface FFFMessageCellFactory : NSObject
@interface PhoneMessageSystemCanneryFactory : NSObject

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (CellView *)quantity:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model;
                 pastLifeStyle:(ShowModel *)model;

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (ContentViewCell *)valueModel:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model;
                            from:(EngraftTing *)model;

//: @end
@end