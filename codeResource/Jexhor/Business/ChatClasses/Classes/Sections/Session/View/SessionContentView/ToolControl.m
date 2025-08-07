
#import <Foundation/Foundation.h>

typedef struct {
    Byte decorMain;
    Byte *reloadName;
    unsigned int allotWing;
	int delineate;
} StructDramaticallyData;

@interface DramaticallyData : NSObject

+ (instancetype)sharedInstance;

//: chat_ic_voice_g
@property (nonatomic, copy) NSString *showAcknowledgeTermsData;

//: chat_ic_video_g
@property (nonatomic, copy) NSString *kLittlePrisonFormat;

@end

@implementation DramaticallyData

+ (instancetype)sharedInstance {
    static DramaticallyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DramaticallyDataToByte:(StructDramaticallyData *)data {
    for (int i = 0; i < data->allotWing; i++) {
        data->reloadName[i] ^= data->decorMain;
    }
    data->reloadName[data->allotWing] = 0;
	if (data->allotWing >= 1) {
		data->delineate = data->reloadName[0];
	}
    return data->reloadName;
}

- (NSString *)StringFromDramaticallyData:(StructDramaticallyData *)data {
    return [NSString stringWithUTF8String:(char *)[self DramaticallyDataToByte:data]];
}

//: chat_ic_video_g
- (NSString *)kLittlePrisonFormat {
    if (!_kLittlePrisonFormat) {
        StructDramaticallyData value = (StructDramaticallyData){48, (Byte []){83, 88, 81, 68, 111, 89, 83, 111, 70, 89, 84, 85, 95, 111, 87, 13}, 15, 204};
        _kLittlePrisonFormat = [self StringFromDramaticallyData:&value];
    }
    return _kLittlePrisonFormat;
}

//: chat_ic_voice_g
- (NSString *)showAcknowledgeTermsData {
    if (!_showAcknowledgeTermsData) {
        StructDramaticallyData value = (StructDramaticallyData){100, (Byte []){7, 12, 5, 16, 59, 13, 7, 59, 18, 11, 13, 7, 1, 59, 3, 248}, 15, 55};
        _showAcknowledgeTermsData = [self StringFromDramaticallyData:&value];
    }
    return _showAcknowledgeTermsData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolControl.m
// Secret
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionRtcCallRecordContentView.h"
#import "ToolControl.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"
//: #import "FFFKitUtil.h"
#import "KitUtil.h"

//: @implementation FFFSessionRtcCallRecordContentView
@implementation ToolControl

//: - (instancetype)initSessionMessageContentView
- (instancetype)initAssemblage
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initAssemblage]) {
        //: _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _textLabel.numberOfLines = 1;
        _textLabel.numberOfLines = 1;
        //: _textLabel.backgroundColor = UIColor.clearColor;
        _textLabel.backgroundColor = UIColor.clearColor;
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _icImage = [[UIImageView alloc]init];
        _icImage = [[UIImageView alloc]init];
        //: [self addSubview:_icImage];
        [self addSubview:_icImage];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)name:(PurseModel *)data {
    //: [super refresh:data];
    [super name:data];
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SchoolbagTaskSurroundingsBlock *setting = [[Secret highlight].config click:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [FFFKitUtil messageTipContent:data.message];
    self.textLabel.text = [KitUtil with:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:[DramaticallyData sharedInstance].showAcknowledgeTermsData];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:[DramaticallyData sharedInstance].kLittlePrisonFormat];
    }

//    */
//   typedef NS_ENUM(NSInteger, NIMNetCallType){
//       /**
//        *  音频通话
//        */
//       NIMNetCallTypeAudio = 1,
//       /**
//        *  视频通话
//        */
//       NIMNetCallTypeVideo = 2,
//   };

}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.frame.size.width;
    CGFloat tableViewWidth = self.superview.frame.size.width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model victoryQuery:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end