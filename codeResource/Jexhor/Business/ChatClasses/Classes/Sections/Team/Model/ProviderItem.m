
#import <Foundation/Foundation.h>

@interface SlaveryData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SlaveryData

+ (instancetype)sharedInstance {
    static SlaveryData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SlaveryDataToCache:(Byte *)data {
    int paperLeather = data[0];
    Byte breastPocket = data[1];
    int solidBro = data[2];
    for (int i = solidBro; i < solidBro + paperLeather; i++) {
        int value = data[i] + breastPocket;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[solidBro + paperLeather] = 0;
    return data + solidBro;
}

- (NSString *)StringFromSlaveryData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SlaveryDataToCache:data]];
}

//: icon_add_pressed
- (NSString *)m_videoOlaValue {
    /* static */ NSString *m_videoOlaValue = nil;
    if (!m_videoOlaValue) {
        Byte value[] = {16, 91, 4, 239, 14, 8, 20, 19, 4, 6, 9, 9, 4, 21, 23, 10, 24, 24, 10, 9, 53};
        m_videoOlaValue = [self StringFromSlaveryData:value];
    }
    return m_videoOlaValue;
}

//: icon_remove_pressed
- (NSString *)mainReliefBreastPeerTitle {
    /* static */ NSString *mainReliefBreastPeerTitle = nil;
    if (!mainReliefBreastPeerTitle) {
        Byte value[] = {19, 36, 4, 104, 69, 63, 75, 74, 59, 78, 65, 73, 75, 82, 65, 59, 76, 78, 65, 79, 79, 65, 64, 60};
        mainReliefBreastPeerTitle = [self StringFromSlaveryData:value];
    }
    return mainReliefBreastPeerTitle;
}

//: icon_add_normal
- (NSString *)app_offendName {
    /* static */ NSString *app_offendName = nil;
    if (!app_offendName) {
        Byte value[] = {15, 55, 8, 221, 145, 223, 225, 108, 50, 44, 56, 55, 40, 42, 45, 45, 40, 55, 56, 59, 54, 42, 53, 49};
        app_offendName = [self StringFromSlaveryData:value];
    }
    return app_offendName;
}

//: icon_remove_normal
- (NSString *)dream_crackValue {
    /* static */ NSString *dream_crackValue = nil;
    if (!dream_crackValue) {
        Byte value[] = {18, 43, 5, 75, 145, 62, 56, 68, 67, 52, 71, 58, 66, 68, 75, 58, 52, 67, 68, 71, 66, 54, 65, 204};
        dream_crackValue = [self StringFromSlaveryData:value];
    }
    return dream_crackValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardOperationItem.m
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCardOperationItem.h"
#import "ProviderItem.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface FFFCardOperationItem()
@interface ProviderItem()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation FFFCardOperationItem
@implementation ProviderItem

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithViewRecord:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self bubble:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)bubble:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".titleBy;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:[[SlaveryData sharedInstance] app_offendName]];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:[[SlaveryData sharedInstance] m_videoOlaValue]];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".titleBy;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:[[SlaveryData sharedInstance] dream_crackValue]];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:[[SlaveryData sharedInstance] mainReliefBreastPeerTitle]];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NSString*)teamId {
- (NSString*)teamId {
    //: return @"";
    return @"";
}

//: - (NSString*)userId {
- (NSString*)userId {
    //: return @"";
    return @"";
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)userType {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUserType:(NIMTeamMemberType)userType {}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}


//: - (NSString*)imageUrl {
- (NSString*)imageUrl {
    //: return nil;
    return nil;
}

//: - (NSString*)inviterAccid {
- (NSString*)inviterAccid {
    //: return nil;
    return nil;
}

//: - (BOOL)isMuted {
- (BOOL)isMuted {
    //: return NO;
    return NO;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return NO;
    return NO;
}

//: @end
@end