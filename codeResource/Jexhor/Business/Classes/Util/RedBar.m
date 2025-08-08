
#import <Foundation/Foundation.h>

@interface ComplainData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ComplainData

+ (instancetype)sharedInstance {
    static ComplainData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ComplainDataToCache:(Byte *)data {
    int congressionalZine = data[0];
    Byte infoBarrel = data[1];
    int soap = data[2];
    for (int i = soap; i < soap + congressionalZine; i++) {
        int value = data[i] - infoBarrel;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[soap + congressionalZine] = 0;
    return data + soap;
}

- (NSString *)StringFromComplainData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ComplainDataToCache:data]];
}

//: home_fragment_phone
- (NSString *)appImageData {
    /* static */ NSString *appImageData = nil;
    if (!appImageData) {
        Byte value[] = {19, 67, 8, 231, 184, 122, 249, 136, 171, 178, 176, 168, 162, 169, 181, 164, 170, 176, 168, 177, 183, 162, 179, 171, 178, 177, 168, 227};
        appImageData = [self StringFromComplainData:value];
    }
    return appImageData;
}

//: home_fragment_pc
- (NSString *)kBotTitle {
    /* static */ NSString *kBotTitle = nil;
    if (!kBotTitle) {
        Byte value[] = {16, 9, 13, 75, 46, 130, 17, 21, 150, 225, 110, 176, 183, 113, 120, 118, 110, 104, 111, 123, 106, 112, 118, 110, 119, 125, 104, 121, 108, 18};
        kBotTitle = [self StringFromComplainData:value];
    }
    return kBotTitle;
}

//: home_fragment_web
- (NSString *)show_journalistValue {
    /* static */ NSString *show_journalistValue = nil;
    if (!show_journalistValue) {
        Byte value[] = {17, 42, 4, 84, 146, 153, 151, 143, 137, 144, 156, 139, 145, 151, 143, 152, 158, 137, 161, 143, 140, 147};
        show_journalistValue = [self StringFromComplainData:value];
    }
    return show_journalistValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedBar.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESClientUtil.h"
#import "RedBar.h"

//: @implementation NTESClientUtil
@implementation RedBar

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)clientInsideToponym:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return [WorkLanguageManager getTextWithKey:@"home_fragment_phone"];
            return [InputRed preserve:[[ComplainData sharedInstance] appImageData]];
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return [WorkLanguageManager getTextWithKey:@"home_fragment_pc"];
            return [InputRed preserve:[[ComplainData sharedInstance] kBotTitle]];
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return [WorkLanguageManager getTextWithKey:@"home_fragment_web"];
            return [InputRed preserve:[[ComplainData sharedInstance] show_journalistValue]];
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end
