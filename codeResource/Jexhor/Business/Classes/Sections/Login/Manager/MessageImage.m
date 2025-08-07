
#import <Foundation/Foundation.h>

typedef struct {
    Byte conclusion;
    Byte *jurisdiction;
    unsigned int purl;
	int userBelow;
	int runEnable;
} StructLeadData;

@interface LeadData : NSObject

@end

@implementation LeadData

+ (Byte *)LeadDataToByte:(StructLeadData *)data {
    for (int i = 0; i < data->purl; i++) {
        data->jurisdiction[i] ^= data->conclusion;
    }
    data->jurisdiction[data->purl] = 0;
	if (data->purl >= 2) {
		data->userBelow = data->jurisdiction[0];
		data->runEnable = data->jurisdiction[1];
	}
    return data->jurisdiction;
}

+ (NSString *)StringFromLeadData:(StructLeadData *)data {
    return [NSString stringWithUTF8String:(char *)[self LeadDataToByte:data]];
}

//: tyl_NTESLoginData
+ (NSString *)user_sodPath {
    /* static */ NSString *user_sodPath = nil;
    if (!user_sodPath) {
        StructLeadData value = (StructLeadData){64, (Byte []){52, 57, 44, 31, 14, 20, 5, 19, 12, 47, 39, 41, 46, 4, 33, 52, 33, 240}, 17, 10, 107};
        user_sodPath = [self StringFromLeadData:&value];
    }
    return user_sodPath;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageImage.m
//  NIM
//
//  Created by amao on 5/26/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "CCCLoginManager.h"
#import "MessageImage.h"
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"

//: @interface NTESLoginData ()
@interface MaxVoice ()

//: @end
@end

//: @implementation NTESLoginData
@implementation MaxVoice

//: - (BOOL)isValid {
- (BOOL)recordAcrossValid {
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
@implementation MessageImage

//: + (instancetype)sharedManager
+ (instancetype)frameManager
{
    //: static CCCLoginManager *instance = nil;
    static MessageImage *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[CCCLoginManager alloc] init];
        instance = [[MessageImage alloc] init];
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
        [self inheritance];
    }
    //: return self;
    return self;
}


//: - (void)setCurrentLoginData:(NTESLoginData *)currentLoginData
- (void)setCurrentLoginData:(MaxVoice *)currentLoginData
{
    //: _currentLoginData = currentLoginData;
    _currentLoginData = currentLoginData;
    //: [self saveData];
    [self dismissData];
}

//从文件中读取和保存用户名密码,建议上层开发对这个地方做加密,DEMO只为了做示范,所以没加密
//: - (void)readData
- (void)inheritance
{
    //: NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_NTESLoginData"];
    NSDictionary *loginDataDic = [[NSUserDefaults standardUserDefaults] objectForKey:[LeadData user_sodPath]];
    //: if (loginDataDic) {
    if (loginDataDic) {
        //: _currentLoginData = [NTESLoginData yy_modelWithDictionary:loginDataDic];
        _currentLoginData = [MaxVoice yy_modelWithDictionary:loginDataDic];
    }
}

//: - (void)saveData
- (void)dismissData
{
    //: if (_currentLoginData)
    if (_currentLoginData)
    {
        //: [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:@"tyl_NTESLoginData"];
        [[NSUserDefaults standardUserDefaults] setObject:[_currentLoginData yy_modelToJSONObject] forKey:[LeadData user_sodPath]];
    }
}


//: @end
@end