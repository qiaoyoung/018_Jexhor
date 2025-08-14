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
//: #import "WorkUsrInfoData.h"
#import "WorkUsrInfoData.h"
//: #import "WorkSpellingCenter.h"
#import "ContentRed.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation RiverlaUsrInfo
@implementation WithInfo

//: - (BOOL)isFriend {
- (BOOL)add {
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
- (NSString *)quick {
    //: NSString *title = [[WorkSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[ContentRed bar] lightGreen:self.info.showName].capitalizedString;
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
- (NSString *)belowGlobal {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (UIImage *)avatarImage {
- (UIImage *)modelBy {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (id)sortKey {
- (id)screenSortFormat {
    //: return [[WorkSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[ContentRed bar] baleOut:self.info.showName].shortSpelling;
}

//: @end
@end
