// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.h
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushMessageCellProtocol.h"
#import "PushMessageCellProtocol.h"

//: @class PushTimestampModel;
@class PushSharedNeed;

//: @interface PushSessionTimestampCell : UITableViewCell
@interface NeedView : UITableViewCell

//: @property (strong, nonatomic) UIImageView *timeBGView;
@property (strong, nonatomic) UIImageView *timeBGView;

//: @property (strong, nonatomic) UILabel *timeLabel;
@property (strong, nonatomic) UILabel *timeLabel;

//: - (void)refreshData:(PushTimestampModel *)data;
- (void)transitionData:(PushSharedNeed *)data;

//: @end
@end
