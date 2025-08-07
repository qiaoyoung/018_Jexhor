
#import <Foundation/Foundation.h>

@interface NetherData : NSObject

@end

@implementation NetherData

+ (Byte *)NetherDataToCache:(Byte *)data {
    int with = data[0];
    Byte sub = data[1];
    int color = data[2];
    for (int i = color; i < color + with; i++) {
        int value = data[i] - sub;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[color + with] = 0;
    return data + color;
}

+ (NSString *)StringFromNetherData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NetherDataToCache:data]];
}

//: NTESContactDataItem
+ (NSString *)mainThreadUnderValue {
    /* static */ NSString *mainThreadUnderValue = nil;
    if (!mainThreadUnderValue) {
        Byte value[] = {19, 58, 4, 114, 136, 142, 127, 141, 125, 169, 168, 174, 155, 157, 174, 126, 155, 174, 155, 131, 174, 159, 167, 150};
        mainThreadUnderValue = [self StringFromNetherData:value];
    }
    return mainThreadUnderValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InformationMember.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataMember.h"
#import "InformationMember.h"
//: #import "NTESSpellingCenter.h"
#import "BeforeCenter.h"

//: @implementation NTESContactDataMember
@implementation InformationMember

//: - (CGFloat)uiHeight{
- (CGFloat)exception{
    //: return 60;
    return 60;
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)airBubbleTitle{
    //: return nil;
    return nil;
}

//: - (NSString *)reuseId{
- (NSString *)recording{
    //: return @"NTESContactDataItem";
    return [NetherData mainThreadUnderValue];
}

//: - (NSString *)cellName{
- (NSString *)optionChild{
    //: return @"NTESContactDataCell";
    return @"CrossViewCell";
}

//: - (NSString *)badge{
- (NSString *)magnitudeRelation{
    //: return @"";
    return @"";
}

//: - (NSString *)groupTitle {
- (NSString *)by {
    //: NSString *title = [[NTESSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[BeforeCenter tint] phonation:self.info.showName].capitalizedString;
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
- (NSString *)overIndexView{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (UIImage *)icon{
- (UIImage *)from{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrl{
- (NSString *)heliogram{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)button{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)userName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (BOOL)showAccessoryView{
- (BOOL)holder{
    //: return NO;
    return NO;
}

//: - (id)sortKey {
- (id)imageContent {
    //: return [[NTESSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[BeforeCenter tint] unwelcome:self.info.showName].shortSpelling;
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