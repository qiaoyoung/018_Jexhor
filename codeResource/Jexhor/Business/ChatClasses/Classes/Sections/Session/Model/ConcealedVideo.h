// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFMessageCell.h"
#import "BroadcastTouchCellView.h"
//: #import "FFFSessionTimestampCell.h"
#import "NeedView.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"

//: @interface FFFMessageCellFactory : NSObject
@interface ConcealedVideo : NSObject

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (BroadcastTouchCellView *)view:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model;
                 secret:(PurseModel *)model;

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (NeedView *)hideDown:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model;
                            color:(PushSharedNeed *)model;

//: @end
@end