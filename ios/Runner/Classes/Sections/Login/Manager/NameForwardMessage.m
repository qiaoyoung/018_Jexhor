
#import <Foundation/Foundation.h>

NSString *StringFromYaData(Byte *data);        


//: tyl_NTESLoginData
Byte appWithEarlSessionTitle[] = {78, 17, 72, 13, 17, 161, 209, 150, 103, 103, 207, 85, 69, 44, 49, 36, 23, 6, 12, 253, 11, 4, 39, 31, 33, 38, 252, 25, 44, 25, 182};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameForwardMessage.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCLoginManager.h"
#import "NameForwardMessage.h"
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"

//: @interface NTESLoginData ()
@interface ShowCircle ()

//: @end
@end

//: @implementation NTESLoginData
@implementation ShowCircle

//: - (BOOL)isValid {
- (BOOL)tap {
    //: if (_authType == NIMSDKAuthTypeDefault) {
    if (_authType == NIMSDKAuthTypeDefault) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeDynamicToken) {
    if (_authType == NIMSDKAuthTypeDynamicToken) {
        //: return [_account length] && [_token length];
        return [_account length] && [_token length];
    }

    //: if (_authType == NIMSDKAuthTypeThirdParty) {
    if (_authType == NIMSDKAuthTypeThirdParty) {
        //: return [_account length] && [_token length] && [_loginExtension length];
        return [_account length] && [_token length] && [_loginExtension length];
    }

    //: return NO;
    return NO;
}
//: @end
@end



//: @implementation CCCLoginManager
@implementation NameForwardMessage

//: + (instancetype)sharedManager
+ (instancetype)input
{
    //: static CCCLoginManager *instance = nil;
    static NameForwardMessage *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCLoginManager alloc] init];
        instance = [[NameForwardMessage alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self readData];
        [self system];
    }
    //: return self;
    return self;
}


//: - (void)setCurrentLoginData:(NTESLoginData *)currentLoginData
- (void)setCurrentLoginData:(ShowCircle *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self rawData];
}

//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)system
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_NTESLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromYaData(appWithEarlSessionTitle)];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [NTESLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [ShowCircle yy_modelWithDictionary:loginDataDic];
    }
}

//: - (void)saveData
- (void)rawData
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_NTESLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:StringFromYaData(appWithEarlSessionTitle)];
    }
}


//: @end
@end

Byte * YaDataToCache(Byte *data) {
    int balance = data[0];
    int vehicle = data[1];
    Byte pollution = data[2];
    int drinking = data[3];
    if (!balance) return data + drinking;
    for (int i = drinking; i < drinking + vehicle; i++) {
        int value = data[i] + pollution;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[drinking + vehicle] = 0;
    return data + drinking;
}

NSString *StringFromYaData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)YaDataToCache(data)];
}
