
#import <Foundation/Foundation.h>

typedef struct {
    Byte phenom;
    Byte *acceptanceRead;
    unsigned int curiosity;
} StructReliefData;

@interface ReliefData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ReliefData

+ (instancetype)sharedInstance {
    static ReliefData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ReliefDataToByte:(StructReliefData *)data {
    for (int i = 0; i < data->curiosity; i++) {
        data->acceptanceRead[i] ^= data->phenom;
    }
    data->acceptanceRead[data->curiosity] = 0;
    return data->acceptanceRead;
}

- (NSString *)StringFromReliefData:(StructReliefData *)data {
    return [NSString stringWithUTF8String:(char *)[self ReliefDataToByte:data]];
}

//: icon_session_time_bg
- (NSString *)mainRantTitle {
    /* static */ NSString *mainRantTitle = nil;
    if (!mainRantTitle) {
        StructReliefData value = (StructReliefData){54, (Byte []){95, 85, 89, 88, 105, 69, 83, 69, 69, 95, 89, 88, 105, 66, 95, 91, 83, 105, 84, 81, 145}, 20};
        mainRantTitle = [self StringFromReliefData:&value];
    }
    return mainRantTitle;
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
#import "ContentViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFTimestampModel.h"
#import "EngraftTing.h"
//: #import "FFFKitUtil.h"
#import "WantUtil.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @interface FFFSessionTimestampCell()
@interface ContentViewCell()

//: @property (nonatomic,strong) FFFTimestampModel *model;
@property (nonatomic,strong) EngraftTing *model;

//: @end
@end

//: @implementation FFFSessionTimestampCell
@implementation ContentViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [MessageContent sharedKit].config.cellBackgroundColor;
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
        [_timeBGView setImage:[[UIImage imageNamed:[[ReliefData sharedInstance] mainRantTitle]] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

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
- (void)content:(EngraftTing *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self metadata]){
        //: FFFTimestampModel *model = (FFFTimestampModel *)data;
        EngraftTing *model = (EngraftTing *)data;
        //: [_timeLabel setText:[FFFKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[WantUtil holder:model.messageTime chorusLine:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)metadata{
    //: return [self.model isKindOfClass:[FFFTimestampModel class]];
    return [self.model isKindOfClass:[EngraftTing class]];
}

//: @end
@end