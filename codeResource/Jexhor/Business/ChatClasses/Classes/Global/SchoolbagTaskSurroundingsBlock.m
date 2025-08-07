
#import <Foundation/Foundation.h>

@interface RemarkData : NSObject

+ (instancetype)sharedInstance;

//: icon_receiver_node_pressed
@property (nonatomic, copy) NSString *appChiefSouStr;

//: icon_receiver_node_normal
@property (nonatomic, copy) NSString *mRacyNameIdent;

//: icon_sender_text_node_normal
@property (nonatomic, copy) NSString *userLegallyDishId;

//: icon_sender_text_node_pressed
@property (nonatomic, copy) NSString *appAdeFormat;

//: {18,25,17,25}
@property (nonatomic, copy) NSString *appReinforceMessage;

@end

@implementation RemarkData

+ (instancetype)sharedInstance {
    static RemarkData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RemarkDataToCache:(Byte *)data {
    int constrainPan = data[0];
    Byte abortSod = data[1];
    int commuterTraffic = data[2];
    for (int i = commuterTraffic; i < commuterTraffic + constrainPan; i++) {
        int value = data[i] - abortSod;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[commuterTraffic + constrainPan] = 0;
    return data + commuterTraffic;
}

- (NSString *)StringFromRemarkData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RemarkDataToCache:data]];
}

//: {18,25,17,25}
- (NSString *)appReinforceMessage {
    if (!_appReinforceMessage) {
        Byte value[] = {13, 14, 4, 240, 137, 63, 70, 58, 64, 67, 58, 63, 69, 58, 64, 67, 139, 20};
        _appReinforceMessage = [self StringFromRemarkData:value];
    }
    return _appReinforceMessage;
}

//: icon_sender_text_node_pressed
- (NSString *)appAdeFormat {
    if (!_appAdeFormat) {
        Byte value[] = {29, 34, 6, 111, 207, 198, 139, 133, 145, 144, 129, 149, 135, 144, 134, 135, 148, 129, 150, 135, 154, 150, 129, 144, 145, 134, 135, 129, 146, 148, 135, 149, 149, 135, 134, 162};
        _appAdeFormat = [self StringFromRemarkData:value];
    }
    return _appAdeFormat;
}

//: icon_receiver_node_normal
- (NSString *)mRacyNameIdent {
    if (!_mRacyNameIdent) {
        Byte value[] = {25, 59, 13, 80, 34, 33, 138, 86, 237, 151, 186, 202, 38, 164, 158, 170, 169, 154, 173, 160, 158, 160, 164, 177, 160, 173, 154, 169, 170, 159, 160, 154, 169, 170, 173, 168, 156, 167, 108};
        _mRacyNameIdent = [self StringFromRemarkData:value];
    }
    return _mRacyNameIdent;
}

//: icon_receiver_node_pressed
- (NSString *)appChiefSouStr {
    if (!_appChiefSouStr) {
        Byte value[] = {26, 90, 3, 195, 189, 201, 200, 185, 204, 191, 189, 191, 195, 208, 191, 204, 185, 200, 201, 190, 191, 185, 202, 204, 191, 205, 205, 191, 190, 244};
        _appChiefSouStr = [self StringFromRemarkData:value];
    }
    return _appChiefSouStr;
}

//: icon_sender_text_node_normal
- (NSString *)userLegallyDishId {
    if (!_userLegallyDishId) {
        Byte value[] = {28, 79, 13, 183, 226, 198, 173, 29, 165, 23, 233, 196, 192, 184, 178, 190, 189, 174, 194, 180, 189, 179, 180, 193, 174, 195, 180, 199, 195, 174, 189, 190, 179, 180, 174, 189, 190, 193, 188, 176, 187, 8};
        _userLegallyDishId = [self StringFromRemarkData:value];
    }
    return _userLegallyDishId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SchoolbagTaskSurroundingsBlock.m
// Secret
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitSetting.h"
#import "SchoolbagTaskSurroundingsBlock.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"

//: @implementation FFFKitSetting
@implementation SchoolbagTaskSurroundingsBlock

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initGray:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: if (isRight)
        if (isRight)
        {
            //: _normalBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage sessionItem:[RemarkData sharedInstance].userLegallyDishId] resizableImageWithCapInsets:UIEdgeInsetsFromString([RemarkData sharedInstance].appReinforceMessage) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage sessionItem:[RemarkData sharedInstance].appAdeFormat] resizableImageWithCapInsets:UIEdgeInsetsFromString([RemarkData sharedInstance].appReinforceMessage) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:[RemarkData sharedInstance].mRacyNameIdent] resizableImageWithCapInsets:UIEdgeInsetsFromString([RemarkData sharedInstance].appReinforceMessage) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:[RemarkData sharedInstance].appChiefSouStr] resizableImageWithCapInsets:UIEdgeInsetsFromString([RemarkData sharedInstance].appReinforceMessage) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end