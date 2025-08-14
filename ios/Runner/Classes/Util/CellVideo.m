
#import <Foundation/Foundation.h>

@interface ApartmentGazeData : NSObject

@end

@implementation ApartmentGazeData

+ (Byte *)ApartmentGazeDataToCache:(Byte *)data {
    int mustWeekAgainst = data[0];
    int roperComment = data[1];
    for (int i = 0; i < mustWeekAgainst / 2; i++) {
        int begin = roperComment + i;
        int end = roperComment + mustWeekAgainst - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[roperComment + mustWeekAgainst] = 0;
    return data + roperComment;
}

+ (NSString *)StringFromApartmentGazeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ApartmentGazeDataToCache:data]];
}  

//: friend_info_activity_nan
+ (NSString *)k_keepName {
    /* static */ NSString *k_keepName = nil;
    if (!k_keepName) {
        Byte value[] = {24, 4, 41, 229, 110, 97, 110, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 100, 110, 101, 105, 114, 102, 7};
        k_keepName = [self StringFromApartmentGazeData:value];
    }
    return k_keepName;
}

//: friend_info_activity_xu
+ (NSString *)appRecallName {
    /* static */ NSString *appRecallName = nil;
    if (!appRecallName) {
        Byte value[] = {23, 11, 71, 203, 180, 5, 123, 6, 240, 214, 90, 117, 120, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 100, 110, 101, 105, 114, 102, 87};
        appRecallName = [self StringFromApartmentGazeData:value];
    }
    return appRecallName;
}

//: friend_info_activity_nv
+ (NSString *)m_weekText {
    /* static */ NSString *m_weekText = nil;
    if (!m_weekText) {
        Byte value[] = {23, 9, 179, 41, 252, 142, 123, 209, 244, 118, 110, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 100, 110, 101, 105, 114, 102, 182};
        m_weekText = [self StringFromApartmentGazeData:value];
    }
    return m_weekText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellVideo.m
//  NIM
//
//  Created by chris on 15/9/17.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESUserUtil.h"
#import "CellVideo.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"

//: @implementation NTESUserUtil
@implementation CellVideo

//: + (NSString *)genderString:(NIMUserGender)gender{
+ (NSString *)towardShow:(NIMUserGender)gender{
    //: NSString *genderStr = @"";
    NSString *genderStr = @"";
    //: switch (gender) {
    switch (gender) {
        //: case NIMUserGenderMale:
        case NIMUserGenderMale:
            //: genderStr = [WorkLanguageManager getTextWithKey:@"friend_info_activity_nan"];
            genderStr = [InputRed preserve:[ApartmentGazeData k_keepName]];
            //: break;
            break;
        //: case NIMUserGenderFemale:
        case NIMUserGenderFemale:
            //: genderStr = [WorkLanguageManager getTextWithKey:@"friend_info_activity_nv"];
            genderStr = [InputRed preserve:[ApartmentGazeData m_weekText]];
            //: break;
            break;
        //: case NIMUserGenderUnknown:
        case NIMUserGenderUnknown:
            //: genderStr = [WorkLanguageManager getTextWithKey:@"friend_info_activity_xu"];
            genderStr = [InputRed preserve:[ApartmentGazeData appRecallName]];
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
