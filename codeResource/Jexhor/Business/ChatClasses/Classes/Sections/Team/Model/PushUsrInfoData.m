// __DEBUG__
// __CLOSE_PRINT__
//
//  UsrInfoData.m
//  NIM
//
//  Created by Xuhui on 15/3/19.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushUsrInfoData.h"
#import "PushUsrInfoData.h"
//: #import "PushSpellingCenter.h"
#import "ViewCenter.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @implementation RiverlaUsrInfo
@implementation ShouldInfo

//: - (BOOL)isFriend {
- (BOOL)pastText {
    //: NSArray *friends = [NIMSDK sharedSDK].userManager.myFriends;
    NSArray *friends = [NIMSDK sharedSDK].userManager.myFriends;
    //: for (NIMUser *user in friends) {
    for (NIMUser *user in friends) {
        //: if ([user.userId isEqualToString:self.info.infoId]) {
        if ([user.userId isEqualToString:self.info.infoId]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (NSString *)groupTitle {
- (NSString *)groupTitle {
    //: NSString *title = [[PushSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[ViewCenter centerStage] premierCurrentDeadLetter:self.info.showName].capitalizedString;
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
- (NSString *)memberId{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)avatarUrlString {
- (NSString *)tableTitle {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (UIImage *)avatarImage {
- (UIImage *)custom {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (id)sortKey {
- (id)sortKey {
    //: return [[PushSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[ViewCenter centerStage] total:self.info.showName].shortSpelling;
}

//: @end
@end
