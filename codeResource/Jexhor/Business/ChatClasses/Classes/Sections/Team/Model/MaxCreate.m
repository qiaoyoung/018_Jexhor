
#import <Foundation/Foundation.h>

@interface SkirtData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SkirtData

+ (instancetype)sharedInstance {
    static SkirtData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SkirtDataToCache:(Byte *)data {
    int prisonTechnical = data[0];
    int wingCover = data[1];
    for (int i = 0; i < prisonTechnical / 2; i++) {
        int begin = wingCover + i;
        int end = wingCover + prisonTechnical - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[wingCover + prisonTechnical] = 0;
    return data + wingCover;
}

- (NSString *)StringFromSkirtData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SkirtDataToCache:data]];
}  

//: icon_add_normal
- (NSString *)app_certaintyTitle {
    /* static */ NSString *app_certaintyTitle = nil;
    if (!app_certaintyTitle) {
        Byte value[] = {15, 5, 77, 111, 208, 108, 97, 109, 114, 111, 110, 95, 100, 100, 97, 95, 110, 111, 99, 105, 71};
        app_certaintyTitle = [self StringFromSkirtData:value];
    }
    return app_certaintyTitle;
}

//: icon_remove_pressed
- (NSString *)appPenaltyBlackMessage {
    /* static */ NSString *appPenaltyBlackMessage = nil;
    if (!appPenaltyBlackMessage) {
        Byte value[] = {19, 2, 100, 101, 115, 115, 101, 114, 112, 95, 101, 118, 111, 109, 101, 114, 95, 110, 111, 99, 105, 192};
        appPenaltyBlackMessage = [self StringFromSkirtData:value];
    }
    return appPenaltyBlackMessage;
}

//: icon_add_pressed
- (NSString *)appGoingIdent {
    /* static */ NSString *appGoingIdent = nil;
    if (!appGoingIdent) {
        Byte value[] = {16, 8, 139, 162, 5, 102, 59, 214, 100, 101, 115, 115, 101, 114, 112, 95, 100, 100, 97, 95, 110, 111, 99, 105, 107};
        appGoingIdent = [self StringFromSkirtData:value];
    }
    return appGoingIdent;
}

//: icon_remove_normal
- (NSString *)user_cageIdent {
    /* static */ NSString *user_cageIdent = nil;
    if (!user_cageIdent) {
        Byte value[] = {18, 10, 2, 159, 103, 170, 216, 186, 246, 127, 108, 97, 109, 114, 111, 110, 95, 101, 118, 111, 109, 101, 114, 95, 110, 111, 99, 105, 112};
        user_cageIdent = [self StringFromSkirtData:value];
    }
    return user_cageIdent;
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
//: #import "PushCardOperationItem.h"
#import "MaxCreate.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"

//: @interface PushCardOperationItem()
@interface MaxCreate()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation PushCardOperationItem
@implementation MaxCreate

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithThread:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self gammaHydroxybutyrate:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)gammaHydroxybutyrate:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".minIn;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:[[SkirtData sharedInstance] app_certaintyTitle]];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:[[SkirtData sharedInstance] appGoingIdent]];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".minIn;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:[[SkirtData sharedInstance] user_cageIdent]];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:[[SkirtData sharedInstance] appPenaltyBlackMessage]];
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
