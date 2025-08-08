
#import <Foundation/Foundation.h>

NSString *StringFromGazeYaData(Byte *data);


//: chat_ic_video_g
Byte showChipFoodName[] = {69, 15, 12, 189, 29, 16, 101, 244, 113, 51, 27, 6, 103, 95, 111, 101, 100, 105, 118, 95, 99, 105, 95, 116, 97, 104, 99, 208};

//: chat_ic_voice_g
Byte mainTargetImageValue[] = {29, 15, 10, 67, 11, 78, 185, 232, 39, 25, 103, 95, 101, 99, 105, 111, 118, 95, 99, 105, 95, 116, 97, 104, 99, 64};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WrittenRecordView.m
// MessageContent
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionRtcCallRecordContentView.h"
#import "WrittenRecordView.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"

//: @implementation WorkSessionRtcCallRecordContentView
@implementation WrittenRecordView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initViewKey
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initViewKey]) {
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

//: - (void)refresh:(WorkMessageModel *)data {
- (void)panorama:(ShowModel *)data {
    //: [super refresh:data];
    [super panorama:data];
    //: WorkKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ViewKey *setting = [[MessageContent secretResolution].config ofSetting:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [WorkKitUtil messageTipContent:data.message];
    self.textLabel.text = [WantUtil tingAcross:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:StringFromGazeYaData(mainTargetImageValue)];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:StringFromGazeYaData(showChipFoodName)];
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
    CGSize contentsize = [self.model all:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end

Byte * GazeYaDataToCache(Byte *data) {
    int sendGiving = data[0];
    int loyalHarm = data[1];
    int apartmentAt = data[2];
    if (!sendGiving) return data + apartmentAt;
    for (int i = 0; i < loyalHarm / 2; i++) {
        int begin = apartmentAt + i;
        int end = apartmentAt + loyalHarm - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[apartmentAt + loyalHarm] = 0;
    return data + apartmentAt;
}

NSString *StringFromGazeYaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)GazeYaDataToCache(data)];
}  
