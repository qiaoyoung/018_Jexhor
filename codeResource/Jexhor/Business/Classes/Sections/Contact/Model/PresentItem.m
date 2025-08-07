
#import <Foundation/Foundation.h>

@interface ByEndData : NSObject

@end

@implementation ByEndData

+ (Byte *)ByEndDataToCache:(Byte *)data {
    int read = data[0];
    Byte comment = data[1];
    int show = data[2];
    for (int i = show; i < show + read; i++) {
        int value = data[i] + comment;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[show + read] = 0;
    return data + show;
}

+ (NSString *)StringFromByEndData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ByEndDataToCache:data]];
}

//: NTESContactDataItem
+ (NSString *)user_parentTitle {
    /* static */ NSString *user_parentTitle = nil;
    if (!user_parentTitle) {
        Byte value[] = {19, 84, 5, 223, 198, 250, 0, 241, 255, 239, 27, 26, 32, 13, 15, 32, 240, 13, 32, 13, 245, 32, 17, 25, 35};
        user_parentTitle = [self StringFromByEndData:value];
    }
    return user_parentTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  PresentItem.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataMember.h"
#import "PresentItem.h"
//: #import "NTESSpellingCenter.h"
#import "AncientHistoryCircle.h"

//: @implementation NTESContactDataMember
@implementation PresentItem

//: - (CGFloat)uiHeight{
- (CGFloat)currentImage{
    //: return 60;
    return 60;
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)team{
    //: return nil;
    return nil;
}

//: - (NSString *)reuseId{
- (NSString *)success{
    //: return @"NTESContactDataItem";
    return [ByEndData user_parentTitle];
}

//: - (NSString *)cellName{
- (NSString *)ting{
    //: return @"NTESContactDataCell";
    return @"BeView";
}

//: - (NSString *)badge{
- (NSString *)someEmpty{
    //: return @"";
    return @"";
}

//: - (NSString *)groupTitle {
- (NSString *)remove {
    //: NSString *title = [[NTESSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[AncientHistoryCircle heritage] destabilisation:self.info.showName].capitalizedString;
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

//: - (NSString *)userId{
- (NSString *)shouldTeam{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (UIImage *)icon{
- (UIImage *)blue{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrl{
- (NSString *)select{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)with{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)domainContent{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (BOOL)showAccessoryView{
- (BOOL)pile{
    //: return NO;
    return NO;
}

//: - (id)sortKey {
- (id)key {
    //: return [[NTESSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[AncientHistoryCircle heritage] pageView:self.info.showName].shortSpelling;
}

//: - (BOOL)isEqual:(id)object{
- (BOOL)isEqual:(id)object{
    //: if (![object isKindOfClass:[self class]]) {
    if (![object isKindOfClass:[self class]]) {
        //: return NO;
        return NO;
    }
    //: return [self.info.infoId isEqualToString:[[object info] infoId]];
    return [self.info.infoId isEqualToString:[[object info] infoId]];
}


//: @end
@end