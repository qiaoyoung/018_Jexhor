
#import <Foundation/Foundation.h>

@interface AmData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AmData

+ (instancetype)sharedInstance {
    static AmData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AmDataToCache:(Byte *)data {
    int nameFar = data[0];
    int styleImage = data[1];
    for (int i = 0; i < nameFar / 2; i++) {
        int begin = styleImage + i;
        int end = styleImage + nameFar - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[styleImage + nameFar] = 0;
    return data + styleImage;
}

- (NSString *)StringFromAmData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AmDataToCache:data]];
}  

//: 未知类型消息
- (NSString *)show_versionPath {
    /* static */ NSString *show_versionPath = nil;
    if (!show_versionPath) {
        Byte value[] = {18, 10, 135, 119, 123, 241, 214, 33, 41, 91, 175, 129, 230, 136, 182, 230, 139, 158, 229, 187, 177, 231, 165, 159, 231, 170, 156, 230, 59};
        show_versionPath = [self StringFromAmData:value];
    }
    return show_versionPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewRandom.m
// Secret
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFUnsupportContentConfig.h"
#import "ViewRandom.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @interface FFFUnsupportContentConfig ()
@interface ViewRandom ()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation FFFUnsupportContentConfig
@implementation ViewRandom

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
        _label.text = [[AmData sharedInstance] show_versionPath].minIn;
    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message
{
    //: CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    CGSize size = [self.label sizeThatFits:CGSizeMake(1.7976931348623157e+308, 40.f)];
    //: return CGSizeMake(size.width, 40.f);
    return CGSizeMake(size.width, 40.f);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)session:(NIMMessage *)message
{
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:message];
    SchoolbagTaskSurroundingsBlock *setting = [[Secret highlight].config click:message];
    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;

    //: return @"FFFSessionUnknowContentView";
    return @"ShouldControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)messageUser:(NIMMessage *)message
{
    //: FFFKitSettings *settings = message.isOutgoingMsg? [MyUserKit sharedKit].config.rightBubbleSettings : [MyUserKit sharedKit].config.leftBubbleSettings;
    InputSignalSettings *settings = message.isOutgoingMsg? [Secret highlight].config.rightBubbleSettings : [Secret highlight].config.leftBubbleSettings;
    //: return settings.unsupportSetting.contentInsets;
    return settings.unsupportSetting.contentInsets;
}

//: @end
@end