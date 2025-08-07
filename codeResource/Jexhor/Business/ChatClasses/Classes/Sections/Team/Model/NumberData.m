
#import <Foundation/Foundation.h>

@interface BoutViseData : NSObject

@end

@implementation BoutViseData

+ (Byte *)BoutViseDataToCache:(Byte *)data {
    int sphingid = data[0];
    Byte remarkStove = data[1];
    int extremum = data[2];
    for (int i = extremum; i < extremum + sphingid; i++) {
        int value = data[i] + remarkStove;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[extremum + sphingid] = 0;
    return data + extremum;
}

+ (NSString *)StringFromBoutViseData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BoutViseDataToCache:data]];
}

//: contact_group_header
+ (NSString *)appAssaultValue {
    /* static */ NSString *appAssaultValue = nil;
    if (!appAssaultValue) {
        Byte value[] = {20, 13, 4, 229, 86, 98, 97, 103, 84, 86, 103, 82, 90, 101, 98, 104, 99, 82, 91, 88, 84, 87, 88, 101, 53};
        appAssaultValue = [self StringFromBoutViseData:value];
    }
    return appAssaultValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamInfoData.m
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamInfoData.h"
#import "NumberData.h"
//: #import "FFFSpellingCenter.h"
#import "ContentRed.h"

//: @implementation FFFTeamInfoData
@implementation NumberData

//: - (instancetype)initWithTeam:(NIMTeam *)team{
- (instancetype)initWithColorLoad:(NIMTeam *)team{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = team.teamId;
        _teamId = team.teamId;
        //: _teamName = team.teamName;
        _teamName = team.teamName;
        //: _iconId = @"contact_group_header";
        _iconId = [BoutViseData appAssaultValue];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)quick{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    NSString *title = [[ContentRed bar] lightGreen:self.teamName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }

}

//: - (NSString *)memberId{
- (NSString *)pressedFor{
    //: return self.teamId;
    return self.teamId;
}

//: - (id)sortKey{
- (id)screenSortFormat{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
    return [[ContentRed bar] baleOut:self.teamName].shortSpelling;
}

//: - (NSString *)usrId{
- (NSString *)message{
    //: return self.teamId;
    return self.teamId;
}

//: - (NSString *)nick{
- (NSString *)value{
    //: return self.teamName;
    return self.teamName;
}

//: - (NSString *)showName{
- (NSString *)exhibitDoing{
    //: return self.teamName;
    return self.teamName;
}


//: @end
@end