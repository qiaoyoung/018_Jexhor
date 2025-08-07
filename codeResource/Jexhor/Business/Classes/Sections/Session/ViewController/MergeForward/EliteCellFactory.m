
#import <Foundation/Foundation.h>

NSString *StringFromPrData(Byte *data);


//: time_ntes
Byte app_discoveryPath[] = {91, 9, 6, 239, 187, 172, 115, 101, 116, 110, 95, 101, 109, 105, 116, 96};

//: _ntes
Byte appJustifyMessage[] = {93, 5, 5, 143, 225, 115, 101, 116, 110, 95, 153};

// __DEBUG__
// __CLOSE_PRINT__
//
//  EliteCellFactory.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageCellFactory.h"
#import "EliteCellFactory.h"

//: @implementation NTESMessageCellFactory
@implementation EliteCellFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (OfImportMessageCell *)earlier:(UITableView*)tableView
                         //: forMessageMode:(FFFMessageModel *)model {
                         plant:(PurseModel *)model {
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<MessageImageContainer> layoutConfig = [[Secret highlight] layoutConfig];
    //: NSString *identity = [[layoutConfig cellContent:model] stringByAppendingString:@"_ntes"];
    NSString *identity = [[layoutConfig mark:model] stringByAppendingString:StringFromPrData(appJustifyMessage)];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    BroadcastTouchCellView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESMergeMessageCell";
        NSString *clz = @"OfImportMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (NTESMergeMessageCell *)cell;
    return (OfImportMessageCell *)cell;
}

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (HeritageViewCell *)immobiliseModel:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model {
                            cellModel:(PushSharedNeed *)model {
    //: NSString *identity = @"time_ntes";
    NSString *identity = StringFromPrData(app_discoveryPath);
    //: NTESTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    HeritageViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESTimestampCell";
        NSString *clz = @"HeritageViewCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell transitionData:model];
    //: return (NTESTimestampCell *)cell;
    return (HeritageViewCell *)cell;
}

//: @end
@end

Byte * PrDataToCache(Byte *data) {
    int fosterChild = data[0];
    int treatyAspect = data[1];
    int itselfDismiss = data[2];
    if (!fosterChild) return data + itselfDismiss;
    for (int i = 0; i < treatyAspect / 2; i++) {
        int begin = itselfDismiss + i;
        int end = itselfDismiss + treatyAspect - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[itselfDismiss + treatyAspect] = 0;
    return data + itselfDismiss;
}

NSString *StringFromPrData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PrDataToCache(data)];
}  
