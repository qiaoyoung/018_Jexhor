
#import <Foundation/Foundation.h>

@interface HideParentData : NSObject

+ (instancetype)sharedInstance;

//: time_ntes
@property (nonatomic, copy) NSString *dream_keepName;

//: _ntes
@property (nonatomic, copy) NSString *userWithText;

@end

@implementation HideParentData

+ (instancetype)sharedInstance {
    static HideParentData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)HideParentDataToCache:(Byte *)data {
    int addBy = data[0];
    Byte crowdedTag = data[1];
    int appearBalanceTitle = data[2];
    for (int i = appearBalanceTitle; i < appearBalanceTitle + addBy; i++) {
        int value = data[i] - crowdedTag;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[appearBalanceTitle + addBy] = 0;
    return data + appearBalanceTitle;
}

- (NSString *)StringFromHideParentData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HideParentDataToCache:data]];
}

//: time_ntes
- (NSString *)dream_keepName {
    if (!_dream_keepName) {
        Byte value[] = {9, 82, 12, 27, 63, 167, 221, 114, 196, 68, 252, 210, 198, 187, 191, 183, 177, 192, 198, 183, 197, 139};
        _dream_keepName = [self StringFromHideParentData:value];
    }
    return _dream_keepName;
}

//: _ntes
- (NSString *)userWithText {
    if (!_userWithText) {
        Byte value[] = {5, 17, 13, 28, 9, 13, 42, 46, 145, 216, 57, 74, 41, 112, 127, 133, 118, 132, 200};
        _userWithText = [self StringFromHideParentData:value];
    }
    return _userWithText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleCellFactory.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageCellFactory.h"
#import "TitleCellFactory.h"

//: @implementation NTESMessageCellFactory
@implementation TitleCellFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (ConsubstantiateVideoCompartmentViewCell *)startData:(UITableView*)tableView
                         //: forMessageMode:(FFFMessageModel *)model {
                         event:(ShowModel *)model {
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<TingConfig> layoutConfig = [[MessageContent secretResolution] layoutConfig];
    //: NSString *identity = [[layoutConfig cellContent:model] stringByAppendingString:@"_ntes"];
    NSString *identity = [[layoutConfig change:model] stringByAppendingString:[HideParentData sharedInstance].userWithText];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    CellView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESMergeMessageCell";
        NSString *clz = @"ConsubstantiateVideoCompartmentViewCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (NTESMergeMessageCell *)cell;
    return (ConsubstantiateVideoCompartmentViewCell *)cell;
}

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (BottomTimestampCell *)withModel:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model {
                            empty:(EngraftTing *)model {
    //: NSString *identity = @"time_ntes";
    NSString *identity = [HideParentData sharedInstance].dream_keepName;
    //: NTESTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    BottomTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESTimestampCell";
        NSString *clz = @"BottomTimestampCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell content:model];
    //: return (NTESTimestampCell *)cell;
    return (BottomTimestampCell *)cell;
}

//: @end
@end