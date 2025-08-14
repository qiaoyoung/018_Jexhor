// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkMessageCellFactory.h"
#import "PhoneMessageSystemCanneryFactory.h"
//: #import "NTESTimestampCell.h"
#import "BottomTimestampCell.h"
//: #import "NTESMergeMessageCell.h"
#import "ConsubstantiateVideoCompartmentViewCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageCellFactory : WorkMessageCellFactory
@interface TitleCellFactory : PhoneMessageSystemCanneryFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (ConsubstantiateVideoCompartmentViewCell *)startData:(UITableView*)tableView
                           //: forMessageMode:(WorkMessageModel *)model;
                           event:(ShowModel *)model;

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (BottomTimestampCell *)withModel:(UITableView *)tableView
                          //: forTimeModel:(WorkTimestampModel *)model;
                          empty:(EngraftTing *)model;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
