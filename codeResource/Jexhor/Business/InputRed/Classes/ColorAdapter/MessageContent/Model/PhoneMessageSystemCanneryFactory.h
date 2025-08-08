// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkMessageCellMaker.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WorkMessageCell.h"
#import "CellView.h"
//: #import "WorkSessionTimestampCell.h"
#import "ContentViewCell.h"
//: #import "WorkCellConfig.h"
#import "WorkCellConfig.h"
//: #import "WorkMessageCellProtocol.h"
#import "WorkMessageCellProtocol.h"

//: @interface WorkMessageCellFactory : NSObject
@interface PhoneMessageSystemCanneryFactory : NSObject

//: - (WorkMessageCell *)cellInTable:(UITableView*)tableView
- (CellView *)quantity:(UITableView*)tableView
                 //: forMessageMode:(WorkMessageModel *)model;
                 pastLifeStyle:(ShowModel *)model;

//: - (WorkSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (ContentViewCell *)valueModel:(UITableView *)tableView
                            //: forTimeModel:(WorkTimestampModel *)model;
                            from:(EngraftTing *)model;

//: @end
@end
