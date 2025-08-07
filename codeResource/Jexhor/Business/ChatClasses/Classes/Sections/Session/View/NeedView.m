
#import <Foundation/Foundation.h>

@interface StrawData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation StrawData

+ (instancetype)sharedInstance {
    static StrawData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)StrawDataToCache:(Byte *)data {
    int cordDate = data[0];
    Byte skyConcentrate = data[1];
    int itemUnfortunately = data[2];
    for (int i = itemUnfortunately; i < itemUnfortunately + cordDate; i++) {
        int value = data[i] - skyConcentrate;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[itemUnfortunately + cordDate] = 0;
    return data + itemUnfortunately;
}

- (NSString *)StringFromStrawData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StrawDataToCache:data]];
}

//: icon_session_time_bg
- (NSString *)m_allotMessage {
    /* static */ NSString *m_allotMessage = nil;
    if (!m_allotMessage) {
        Byte value[] = {20, 38, 11, 122, 25, 98, 102, 110, 111, 210, 156, 143, 137, 149, 148, 133, 153, 139, 153, 153, 143, 149, 148, 133, 154, 143, 147, 139, 133, 136, 141, 55};
        m_allotMessage = [self StringFromStrawData:value];
    }
    return m_allotMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTimestampCell.h"
#import "NeedView.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFTimestampModel.h"
#import "PushSharedNeed.h"
//: #import "FFFKitUtil.h"
#import "KitUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @interface FFFSessionTimestampCell()
@interface NeedView()

//: @property (nonatomic,strong) FFFTimestampModel *model;
@property (nonatomic,strong) PushSharedNeed *model;

//: @end
@end

//: @implementation FFFSessionTimestampCell
@implementation NeedView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [Secret sharedKit].config.cellBackgroundColor;
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self.contentView addSubview:_timeBGView];
        [self.contentView addSubview:_timeBGView];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        //: _timeLabel.textColor = [UIColor whiteColor];
        _timeLabel.textColor = [UIColor whiteColor];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
        //: [_timeBGView setImage:[[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];
        [_timeBGView setImage:[[UIImage imageNamed:[[StrawData sharedInstance] m_allotMessage]] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    //: _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
    _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
}


//: - (void)refreshData:(FFFTimestampModel *)data{
- (void)transitionData:(PushSharedNeed *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self sharedData]){
        //: FFFTimestampModel *model = (FFFTimestampModel *)data;
        PushSharedNeed *model = (PushSharedNeed *)data;
        //: [_timeLabel setText:[FFFKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[KitUtil tally:model.messageTime roundHighBack:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)sharedData{
    //: return [self.model isKindOfClass:[FFFTimestampModel class]];
    return [self.model isKindOfClass:[PushSharedNeed class]];
}

//: @end
@end