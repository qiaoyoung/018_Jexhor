
#import <Foundation/Foundation.h>

@interface DismissData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DismissData

+ (instancetype)sharedInstance {
    static DismissData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DismissDataToCache:(Byte *)data {
    int empireTextEthnic = data[0];
    Byte recommendSky = data[1];
    int maxiIsle = data[2];
    for (int i = maxiIsle; i < maxiIsle + empireTextEthnic; i++) {
        int value = data[i] - recommendSky;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[maxiIsle + empireTextEthnic] = 0;
    return data + maxiIsle;
}

- (NSString *)StringFromDismissData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DismissDataToCache:data]];
}

//: time
- (NSString *)notiTossPath {
    /* static */ NSString *notiTossPath = nil;
    if (!notiTossPath) {
        Byte value[] = {4, 15, 4, 56, 131, 120, 124, 116, 200};
        notiTossPath = [self StringFromDismissData:value];
    }
    return notiTossPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.m
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "ConcealedVideo.h"
//: #import "FFFMessageModel.h"
#import "PurseModel.h"
//: #import "FFFTimestampModel.h"
#import "PushSharedNeed.h"
//: #import "FFFSessionAudioContentView.h"
#import "ReadControl.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "FFFKitAudioCenter.h"
#import "PushOutCenter.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFMessageCellFactory()
@interface ConcealedVideo()

//: @end
@end

//: @implementation FFFMessageCellFactory
@implementation ConcealedVideo

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
- (BroadcastTouchCellView *)view:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model
                 secret:(PurseModel *)model
{
    //: id<FFFCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<MessageImageContainer> layoutConfig = [[Secret highlight] layoutConfig];
    //: NSString *identity = [layoutConfig cellContent:model];
    NSString *identity = [layoutConfig mark:model];
    //: FFFMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    BroadcastTouchCellView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFAdvancedMessageCell";
        NSString *clz = @"GetAcrossView";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (FFFMessageCell *)cell;
    return (BroadcastTouchCellView *)cell;
}

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (NeedView *)hideDown:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model
                            color:(PushSharedNeed *)model
{
    //: NSString *identity = @"time";
    NSString *identity = [[DismissData sharedInstance] notiTossPath];
    //: FFFSessionTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    NeedView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"FFFSessionTimestampCell";
        NSString *clz = @"NeedView";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell transitionData:model];
    //: return (FFFSessionTimestampCell *)cell;
    return (NeedView *)cell;
}

//: @end
@end