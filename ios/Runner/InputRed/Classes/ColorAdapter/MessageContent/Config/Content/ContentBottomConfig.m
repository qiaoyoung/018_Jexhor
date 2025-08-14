
#import <Foundation/Foundation.h>

NSString *StringFromBurningData(Byte *data);


//: 未知类型消息
Byte show_cliffRetchBreastName[] = {27, 18, 1, 7, 62, 233, 36, 231, 157, 171, 232, 160, 166, 232, 178, 188, 230, 159, 140, 231, 183, 137, 231, 130, 176, 61};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentBottomConfig.m
// MessageContent
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkUnsupportContentConfig.h"
#import "ContentBottomConfig.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @interface WorkUnsupportContentConfig ()
@interface ContentBottomConfig ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation WorkUnsupportContentConfig
@implementation ContentBottomConfig

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.text = @"未知类型消息".nim_localized;
        _label.text = StringFromBurningData(show_cliffRetchBreastName).titleBy;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: WorkKitSetting *setting = [[MyUserKit sharedKit].config setting:message];
    ViewKey *setting = [[MessageContent secretResolution].config ofSetting:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"WorkSessionUnknowContentView";
    return @"ManagingDirectorContentView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: WorkKitSettings *settings = message.isOutgoingMsg? [MyUserKit sharedKit].config.rightBubbleSettings : [MyUserKit sharedKit].config.leftBubbleSettings;
    CircleSettings *settings = message.isOutgoingMsg? [MessageContent secretResolution].config.rightBubbleSettings : [MessageContent secretResolution].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end

Byte * BurningDataToCache(Byte *data) {
    int yaBe = data[0];
    int nationalRealist = data[1];
    Byte acceptableAt = data[2];
    int harkBlind = data[3];
    if (!yaBe) return data + harkBlind;
    for (int i = harkBlind; i < harkBlind + nationalRealist; i++) {
        int value = data[i] - acceptableAt;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[harkBlind + nationalRealist] = 0;
    return data + harkBlind;
}

NSString *StringFromBurningData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)BurningDataToCache(data)];
}
