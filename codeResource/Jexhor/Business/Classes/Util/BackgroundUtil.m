
#import <Foundation/Foundation.h>

typedef struct {
    Byte underMayDevice;
    Byte *compliance;
    unsigned int conference;
} StructWonderfulRemarkData;

@interface WonderfulRemarkData : NSObject

@end

@implementation WonderfulRemarkData

+ (Byte *)WonderfulRemarkDataToByte:(StructWonderfulRemarkData *)data {
    for (int i = 0; i < data->conference; i++) {
        data->compliance[i] ^= data->underMayDevice;
    }
    data->compliance[data->conference] = 0;
    return data->compliance;
}

+ (NSString *)StringFromWonderfulRemarkData:(StructWonderfulRemarkData *)data {
    return [NSString stringWithUTF8String:(char *)[self WonderfulRemarkDataToByte:data]];
}

//: friend_info_activity_nv
+ (NSString *)userRecipientCoverPath {
    /* static */ NSString *userRecipientCoverPath = nil;
    if (!userRecipientCoverPath) {
        StructWonderfulRemarkData value = (StructWonderfulRemarkData){184, (Byte []){222, 202, 209, 221, 214, 220, 231, 209, 214, 222, 215, 231, 217, 219, 204, 209, 206, 209, 204, 193, 231, 214, 206, 168}, 23};
        userRecipientCoverPath = [self StringFromWonderfulRemarkData:&value];
    }
    return userRecipientCoverPath;
}

//: friend_info_activity_nan
+ (NSString *)mainButtonTitle {
    /* static */ NSString *mainButtonTitle = nil;
    if (!mainButtonTitle) {
        StructWonderfulRemarkData value = (StructWonderfulRemarkData){135, (Byte []){225, 245, 238, 226, 233, 227, 216, 238, 233, 225, 232, 216, 230, 228, 243, 238, 241, 238, 243, 254, 216, 233, 230, 233, 93}, 24};
        mainButtonTitle = [self StringFromWonderfulRemarkData:&value];
    }
    return mainButtonTitle;
}

//: friend_info_activity_xu
+ (NSString *)k_sunnyIdent {
    /* static */ NSString *k_sunnyIdent = nil;
    if (!k_sunnyIdent) {
        StructWonderfulRemarkData value = (StructWonderfulRemarkData){16, (Byte []){118, 98, 121, 117, 126, 116, 79, 121, 126, 118, 127, 79, 113, 115, 100, 121, 102, 121, 100, 105, 79, 104, 101, 90}, 23};
        k_sunnyIdent = [self StringFromWonderfulRemarkData:&value];
    }
    return k_sunnyIdent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundUtil.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserUtil.h"
#import "BackgroundUtil.h"
//: #import "PushKitUtil.h"
#import "KitUtil.h"

//: @implementation NTESUserUtil
@implementation BackgroundUtil

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)color:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [PushLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [BackgroundRandomAttribute content:[WonderfulRemarkData mainButtonTitle]];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [PushLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [BackgroundRandomAttribute content:[WonderfulRemarkData userRecipientCoverPath]];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [PushLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [BackgroundRandomAttribute content:[WonderfulRemarkData k_sunnyIdent]];
        //: default:
        default:
            //: break;
            break;
    }
    //: return genderStr;
    return genderStr;
}

//: @end
@end
