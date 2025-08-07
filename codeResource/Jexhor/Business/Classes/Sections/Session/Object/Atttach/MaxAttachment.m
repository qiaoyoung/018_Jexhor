
#import <Foundation/Foundation.h>

typedef struct {
    Byte legalProfession;
    Byte *manger;
    unsigned int sizeConstitution;
} StructVenueData;

@interface VenueData : NSObject

@end

@implementation VenueData

+ (Byte *)VenueDataToByte:(StructVenueData *)data {
    for (int i = 0; i < data->sizeConstitution; i++) {
        data->manger[i] ^= data->legalProfession;
    }
    data->manger[data->sizeConstitution] = 0;
    return data->manger;
}

+ (NSString *)StringFromVenueData:(StructVenueData *)data {
    return [NSString stringWithUTF8String:(char *)[self VenueDataToByte:data]];
}

//: content
+ (NSString *)show_actorData {
    /* static */ NSString *show_actorData = nil;
    if (!show_actorData) {
        StructVenueData value = (StructVenueData){158, (Byte []){253, 241, 240, 234, 251, 240, 234, 208}, 7};
        show_actorData = [self StringFromVenueData:&value];
    }
    return show_actorData;
}

//: type
+ (NSString *)m_viewValue {
    /* static */ NSString *m_viewValue = nil;
    if (!m_viewValue) {
        StructVenueData value = (StructVenueData){173, (Byte []){217, 212, 221, 200, 190}, 4};
        m_viewValue = [self StringFromVenueData:&value];
    }
    return m_viewValue;
}

//: personCardId
+ (NSString *)main_practitionerMessage {
    /* static */ NSString *main_practitionerMessage = nil;
    if (!main_practitionerMessage) {
        StructVenueData value = (StructVenueData){122, (Byte []){10, 31, 8, 9, 21, 20, 57, 27, 8, 30, 51, 30, 166}, 12};
        main_practitionerMessage = [self StringFromVenueData:&value];
    }
    return main_practitionerMessage;
}

//: title
+ (NSString *)dreamVeteranUrl {
    /* static */ NSString *dreamVeteranUrl = nil;
    if (!dreamVeteranUrl) {
        StructVenueData value = (StructVenueData){54, (Byte []){66, 95, 66, 90, 83, 99}, 5};
        dreamVeteranUrl = [self StringFromVenueData:&value];
    }
    return dreamVeteranUrl;
}

//: data
+ (NSString *)mainOppositionInfoId {
    /* static */ NSString *mainOppositionInfoId = nil;
    if (!mainOppositionInfoId) {
        StructVenueData value = (StructVenueData){42, (Byte []){78, 75, 94, 75, 189}, 4};
        mainOppositionInfoId = [self StringFromVenueData:&value];
    }
    return mainOppositionInfoId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxAttachment.m
//  NIM
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESShareCardAttachment.h"
#import "MaxAttachment.h"

//: @implementation NTESShareCardAttachment
@implementation MaxAttachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {
    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
        //: @"title" : self.title?:@"",
        [VenueData dreamVeteranUrl] : self.title?:@"",
        //: @"content" : self.content?:@"",
        [VenueData show_actorData] : self.content?:@"",
        //: @"personCardId" : self.personCardId?:@"",
        [VenueData main_practitionerMessage] : self.personCardId?:@"",
        //: @"type" : self.type?:@"0",
        [VenueData m_viewValue] : self.type?:@"0",
    //: };
    };


    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeCard), @"data": dictContent};
    NSDictionary *dict = @{[VenueData m_viewValue]: @(CustomMessageTypeCard), [VenueData mainOppositionInfoId]: dictContent};
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
- (CGSize)read:(CGFloat)cellWidth message:(NIMMessage *)message
{
//    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];

    //: CGSize contentSize = CGSizeMake(170, 36);
    CGSize contentSize = CGSizeMake(170, 36);
    //: return contentSize;
    return contentSize;
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)cell:(NIMMessage *)message threadInWidth:(CGFloat)width {
    //: return CGSizeMake(170, 36);
    return CGSizeMake(170, 36);
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)chemicalElementName:(NIMMessage *)message
{
    //: return @"PushSessionShareCardContentView";
    return @"RandomControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)visualPercept:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Secret highlight].config click:message].contentInsets;
}

//: - (BOOL)canBeForwarded
- (BOOL)pageContent
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)section
{
    //: return NO;
    return NO;
}


//: @end
@end
