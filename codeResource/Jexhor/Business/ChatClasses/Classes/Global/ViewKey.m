
#import <Foundation/Foundation.h>

@interface CuriosityData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CuriosityData

+ (instancetype)sharedInstance {
    static CuriosityData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CuriosityDataToCache:(Byte *)data {
    int dodgem = data[0];
    int reminderImage = data[1];
    for (int i = 0; i < dodgem / 2; i++) {
        int begin = reminderImage + i;
        int end = reminderImage + dodgem - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[reminderImage + dodgem] = 0;
    return data + reminderImage;
}

- (NSString *)StringFromCuriosityData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CuriosityDataToCache:data]];
}  

//: icon_sender_text_node_normal
- (NSString *)app_peakTitle {
    /* static */ NSString *app_peakTitle = nil;
    if (!app_peakTitle) {
        Byte value[] = {28, 10, 29, 203, 88, 91, 33, 120, 134, 104, 108, 97, 109, 114, 111, 110, 95, 101, 100, 111, 110, 95, 116, 120, 101, 116, 95, 114, 101, 100, 110, 101, 115, 95, 110, 111, 99, 105, 157};
        app_peakTitle = [self StringFromCuriosityData:value];
    }
    return app_peakTitle;
}

//: icon_receiver_node_normal
- (NSString *)k_northernTitle {
    /* static */ NSString *k_northernTitle = nil;
    if (!k_northernTitle) {
        Byte value[] = {25, 8, 186, 106, 93, 190, 49, 215, 108, 97, 109, 114, 111, 110, 95, 101, 100, 111, 110, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 18};
        k_northernTitle = [self StringFromCuriosityData:value];
    }
    return k_northernTitle;
}

//: icon_receiver_node_pressed
- (NSString *)app_drumData {
    /* static */ NSString *app_drumData = nil;
    if (!app_drumData) {
        Byte value[] = {26, 7, 199, 202, 124, 36, 65, 100, 101, 115, 115, 101, 114, 112, 95, 101, 100, 111, 110, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 73};
        app_drumData = [self StringFromCuriosityData:value];
    }
    return app_drumData;
}

//: icon_sender_text_node_pressed
- (NSString *)mainAriaName {
    /* static */ NSString *mainAriaName = nil;
    if (!mainAriaName) {
        Byte value[] = {29, 8, 195, 60, 250, 27, 237, 57, 100, 101, 115, 115, 101, 114, 112, 95, 101, 100, 111, 110, 95, 116, 120, 101, 116, 95, 114, 101, 100, 110, 101, 115, 95, 110, 111, 99, 105, 141};
        mainAriaName = [self StringFromCuriosityData:value];
    }
    return mainAriaName;
}

//: {18,25,17,25}
- (NSString *)k_ambitionName {
    /* static */ NSString *k_ambitionName = nil;
    if (!k_ambitionName) {
        Byte value[] = {13, 6, 12, 31, 151, 53, 125, 53, 50, 44, 55, 49, 44, 53, 50, 44, 56, 49, 123, 216};
        k_ambitionName = [self StringFromCuriosityData:value];
    }
    return k_ambitionName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewKey.m
// MessageContent
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitSetting.h"
#import "ViewKey.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"

//: @implementation FFFKitSetting
@implementation ViewKey

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initRange:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: if (isRight)
        if (isRight)
        {
            //: _normalBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage lightGreen:[[CuriosityData sharedInstance] app_peakTitle]] resizableImageWithCapInsets:UIEdgeInsetsFromString([[CuriosityData sharedInstance] k_ambitionName]) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage lightGreen:[[CuriosityData sharedInstance] mainAriaName]] resizableImageWithCapInsets:UIEdgeInsetsFromString([[CuriosityData sharedInstance] k_ambitionName]) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:[[CuriosityData sharedInstance] k_northernTitle]] resizableImageWithCapInsets:UIEdgeInsetsFromString([[CuriosityData sharedInstance] k_ambitionName]) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:[[CuriosityData sharedInstance] app_drumData]] resizableImageWithCapInsets:UIEdgeInsetsFromString([[CuriosityData sharedInstance] k_ambitionName]) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end