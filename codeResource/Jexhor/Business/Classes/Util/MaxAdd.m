
#import <Foundation/Foundation.h>

@interface CallerData : NSObject

@end

@implementation CallerData

+ (Byte *)CallerDataToCache:(Byte *)data {
    int voiceDelicate = data[0];
    Byte paparazzo = data[1];
    int inputDeploy = data[2];
    for (int i = inputDeploy; i < inputDeploy + voiceDelicate; i++) {
        int value = data[i] + paparazzo;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[inputDeploy + voiceDelicate] = 0;
    return data + inputDeploy;
}

+ (NSString *)StringFromCallerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CallerDataToCache:data]];
}

//: home_fragment_pc
+ (NSString *)main_powerData {
    /* static */ NSString *main_powerData = nil;
    if (!main_powerData) {
        Byte value[] = {16, 24, 13, 154, 18, 87, 242, 23, 177, 61, 37, 167, 133, 80, 87, 85, 77, 71, 78, 90, 73, 79, 85, 77, 86, 92, 71, 88, 75, 69};
        main_powerData = [self StringFromCallerData:value];
    }
    return main_powerData;
}

//: home_fragment_web
+ (NSString *)mTeamName {
    /* static */ NSString *mTeamName = nil;
    if (!mTeamName) {
        Byte value[] = {17, 48, 6, 62, 152, 230, 56, 63, 61, 53, 47, 54, 66, 49, 55, 61, 53, 62, 68, 47, 71, 53, 50, 214};
        mTeamName = [self StringFromCallerData:value];
    }
    return mTeamName;
}

//: home_fragment_phone
+ (NSString *)notiPermitName {
    /* static */ NSString *notiPermitName = nil;
    if (!notiPermitName) {
        Byte value[] = {19, 41, 5, 8, 112, 63, 70, 68, 60, 54, 61, 73, 56, 62, 68, 60, 69, 75, 54, 71, 63, 70, 69, 60, 9};
        notiPermitName = [self StringFromCallerData:value];
    }
    return notiPermitName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxAdd.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESClientUtil.h"
#import "MaxAdd.h"

//: @implementation NTESClientUtil
@implementation MaxAdd

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)lawyerClientRelationValue:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_phone"];
            return [BackgroundRandomAttribute content:[CallerData notiPermitName]];
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_pc"];
            return [BackgroundRandomAttribute content:[CallerData main_powerData]];
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_web"];
            return [BackgroundRandomAttribute content:[CallerData mTeamName]];
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end