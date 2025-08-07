
#import <Foundation/Foundation.h>

@interface ArrestData : NSObject

@end

@implementation ArrestData

+ (Byte *)ArrestDataToCache:(Byte *)data {
    int buildingMaterial = data[0];
    Byte loyal = data[1];
    int bond = data[2];
    for (int i = bond; i < bond + buildingMaterial; i++) {
        int value = data[i] + loyal;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bond + buildingMaterial] = 0;
    return data + bond;
}

+ (NSString *)StringFromArrestData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ArrestDataToCache:data]];
}

//: time
+ (NSString *)user_militaryValue {
    /* static */ NSString *user_militaryValue = nil;
    if (!user_militaryValue) {
        Byte value[] = {4, 95, 7, 84, 212, 137, 63, 21, 10, 14, 6, 197};
        user_militaryValue = [self StringFromArrestData:value];
    }
    return user_militaryValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.m
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "PhoneMessageSystemCanneryFactory.h"
//: #import "FFFMessageModel.h"
#import "ShowModel.h"
//: #import "FFFTimestampModel.h"
#import "EngraftTing.h"
//: #import "FFFSessionAudioContentView.h"
#import "ThreadView.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "FFFKitAudioCenter.h"
#import "LineVideoMessage.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFMessageCellFactory()
@interface PhoneMessageSystemCanneryFactory()

//: @end
@end

//: @implementation FFFMessageCellFactory
@implementation PhoneMessageSystemCanneryFactory

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{

}

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (CellView *)quantity:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model
                 pastLifeStyle:(ShowModel *)model
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<TingConfig> layoutConfig = [[MessageContent secretResolution] layoutConfig];
    //: NSString *identity = [layoutConfig cellContent:model];
    NSString *identity = [layoutConfig change:model];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    CellView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFAdvancedMessageCell";
        NSString *clz = @"ValueMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (FFFMessageCell *)cell;
    return (CellView *)cell;
}

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (ContentViewCell *)valueModel:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model
                            from:(EngraftTing *)model
{
    //: NSString *identity = @"time";
    NSString *identity = [ArrestData user_militaryValue];
    //: FFFSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    ContentViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFSessionTimestampCell";
        NSString *clz = @"ContentViewCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell content:model];
    //: return (FFFSessionTimestampCell *)cell;
    return (ContentViewCell *)cell;
}

//: @end
@end