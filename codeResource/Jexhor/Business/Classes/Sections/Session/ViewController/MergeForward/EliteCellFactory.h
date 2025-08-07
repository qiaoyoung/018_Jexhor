// __DEBUG__
// __CLOSE_PRINT__
//
//  EliteCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushMessageCellFactory.h"
#import "ConcealedVideo.h"
//: #import "NTESTimestampCell.h"
#import "HeritageViewCell.h"
//: #import "NTESMergeMessageCell.h"
#import "OfImportMessageCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageCellFactory : PushMessageCellFactory
@interface EliteCellFactory : ConcealedVideo

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (OfImportMessageCell *)earlier:(UITableView*)tableView
                           //: forMessageMode:(PushMessageModel *)model;
                           plant:(PurseModel *)model;

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (HeritageViewCell *)immobiliseModel:(UITableView *)tableView
                          //: forTimeModel:(PushTimestampModel *)model;
                          cellModel:(PushSharedNeed *)model;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
