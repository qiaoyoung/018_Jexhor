
#import <Foundation/Foundation.h>

@interface EnableBusinessAsData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EnableBusinessAsData

+ (instancetype)sharedInstance {
    static EnableBusinessAsData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EnableBusinessAsDataToCache:(Byte *)data {
    int fortunateMax = data[0];
    Byte pressQuick = data[1];
    int fileImage = data[2];
    for (int i = fileImage; i < fileImage + fortunateMax; i++) {
        int value = data[i] + pressQuick;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[fileImage + fortunateMax] = 0;
    return data + fileImage;
}

- (NSString *)StringFromEnableBusinessAsData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EnableBusinessAsDataToCache:data]];
}

//: content
- (NSString *)user_showViewData {
    /* static */ NSString *user_showViewData = nil;
    if (!user_showViewData) {
        Byte value[] = {7, 51, 5, 95, 241, 48, 60, 59, 65, 50, 59, 65, 146};
        user_showViewData = [self StringFromEnableBusinessAsData:value];
    }
    return user_showViewData;
}

//: personCardId
- (NSString *)show_textData {
    /* static */ NSString *show_textData = nil;
    if (!show_textData) {
        Byte value[] = {12, 97, 10, 95, 193, 106, 230, 250, 209, 194, 15, 4, 17, 18, 14, 13, 226, 0, 17, 3, 232, 3, 159};
        show_textData = [self StringFromEnableBusinessAsData:value];
    }
    return show_textData;
}

//: title
- (NSString *)appAmbitionContent {
    /* static */ NSString *appAmbitionContent = nil;
    if (!appAmbitionContent) {
        Byte value[] = {5, 15, 6, 223, 78, 140, 101, 90, 101, 93, 86, 48};
        appAmbitionContent = [self StringFromEnableBusinessAsData:value];
    }
    return appAmbitionContent;
}

//: type
- (NSString *)main_accountData {
    /* static */ NSString *main_accountData = nil;
    if (!main_accountData) {
        Byte value[] = {4, 48, 12, 206, 89, 50, 160, 9, 188, 122, 252, 250, 68, 73, 64, 53, 57};
        main_accountData = [self StringFromEnableBusinessAsData:value];
    }
    return main_accountData;
}

//: data
- (NSString *)mThanData {
    /* static */ NSString *mThanData = nil;
    if (!mThanData) {
        Byte value[] = {4, 40, 8, 149, 41, 120, 36, 206, 60, 57, 76, 57, 23};
        mThanData = [self StringFromEnableBusinessAsData:value];
    }
    return mThanData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  InputAttachment.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESShareCardAttachment.h"
#import "InputAttachment.h"

//: @implementation NTESShareCardAttachment
@implementation InputAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        [[EnableBusinessAsData sharedInstance] appAmbitionContent] : self.title?:@"",
        //: @"content" : self.content?:@"",
        [[EnableBusinessAsData sharedInstance] user_showViewData] : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        [[EnableBusinessAsData sharedInstance] show_textData] : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        [[EnableBusinessAsData sharedInstance] main_accountData] : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{[[EnableBusinessAsData sharedInstance] main_accountData]: @(CustomMessageTypeCard), [[EnableBusinessAsData sharedInstance] mThanData]: dictContent};
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];
    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)invite:(CGFloat)cellWidth more:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(170, 36);
    CGSize contentSize = CGSizeMake(170, 36);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)colorSearched:(NIMMessage *)message selectWidth:(CGFloat)width {
    //: return CGSizeMake(170, 36);
    return CGSizeMake(170, 36);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)provider:(NIMMessage *)message
{
    //: return @"WorkSessionShareCardContentView";
    return @"RedNameView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)key:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[MessageContent secretResolution].config ofSetting:message].contentInsets;
}

//: - (BOOL)canBeForwarded
- (BOOL)session
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)bearOn
{
    //: return NO;
    return NO;
}


//: @end
@end
