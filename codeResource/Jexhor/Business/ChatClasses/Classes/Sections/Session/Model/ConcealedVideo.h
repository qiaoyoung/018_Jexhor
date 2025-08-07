// __DEBUG__
// __CLOSE_PRINT__
//
//  PushMessageCellMaker.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "PushMessageCell.h"
#import "BroadcastTouchCellView.h"
//: #import "PushSessionTimestampCell.h"
#import "NeedView.h"
//: #import "PushCellConfig.h"
#import "PushCellConfig.h"
//: #import "PushMessageCellProtocol.h"
#import "PushMessageCellProtocol.h"

//: @interface PushMessageCellFactory : NSObject
@interface ConcealedVideo : NSObject

//: - (PushMessageCell *)cellInTable:(UITableView*)tableView
- (BroadcastTouchCellView *)view:(UITableView*)tableView
                 //: forMessageMode:(PushMessageModel *)model;
                 secret:(PurseModel *)model;

//: - (PushSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (NeedView *)hideDown:(UITableView *)tableView
                            //: forTimeModel:(PushTimestampModel *)model;
                            color:(PushSharedNeed *)model;

//: @end
@end
