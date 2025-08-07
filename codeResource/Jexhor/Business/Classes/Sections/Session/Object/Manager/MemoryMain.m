
#import <Foundation/Foundation.h>

NSString *StringFromPurchaseData(Byte *data);


//: CFBundleShortVersionString
Byte app_amValue[] = {30, 26, 31, 9, 153, 222, 55, 202, 74, 98, 101, 97, 148, 141, 131, 139, 132, 114, 135, 142, 145, 147, 117, 132, 145, 146, 136, 142, 141, 114, 147, 145, 136, 141, 134, 206};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MemoryMain.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateHeader.h"
#import "MemoryMain.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Bar.h"

//: static NSString *const kNTESMigrateHeaderVersion = @"version";
static NSString *const appMemberId = @"version";
//: static NSString *const kNTESMigrateHeaderTerminal = @"terminal";
static NSString *const k_actionId = @"terminal";
//: static NSString *const kNTESMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const user_errorCyclePath = @"sdk_version";
//: static NSString *const kNTESMigrateHeaderAPPVersion = @"app_version";
static NSString *const kFlushStr = @"app_version";
//: static NSString *const kNTESMigrateHeaderMessageCount = @"message_count";
static NSString *const userCompleteKey = @"message_count";

//: @implementation NTESMigrateHeader
@implementation MemoryMain


//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithMessage {
    //: NTESMigrateHeader *ret = [[NTESMigrateHeader alloc] init];
    MemoryMain *ret = [[MemoryMain alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:StringFromPurchaseData(app_amValue)];
    //: return ret;
    return ret;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithLimit:(NSData *)data {
    //: if (!data) {
    if (!data) {
        //: return nil;
        return nil;
    }
    //: id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    //: if (![jsonData isKindOfClass:[NSDictionary class]]) {
    if (![jsonData isKindOfClass:[NSDictionary class]]) {
        //: return nil;
        return nil;
    }

    //: NSDictionary *dict = (NSDictionary *)jsonData;
    NSDictionary *dict = (NSDictionary *)jsonData;
    //: NTESMigrateHeader *info = [[NTESMigrateHeader alloc] init];
    MemoryMain *info = [[MemoryMain alloc] init];
    //: info.version = [dict jsonInteger:kNTESMigrateHeaderVersion];
    info.version = [dict successSelect:appMemberId];
    //: info.clientType = [dict jsonInteger:kNTESMigrateHeaderTerminal];
    info.clientType = [dict successSelect:k_actionId];
    //: info.sdkVersion = [dict jsonString:kNTESMigrateHeaderSDKVersion];
    info.sdkVersion = [dict image:user_errorCyclePath];
    //: info.appVersion = [dict jsonString:kNTESMigrateHeaderAPPVersion];
    info.appVersion = [dict image:kFlushStr];
    //: info.totalInfoCount = [dict jsonInteger:kNTESMigrateHeaderMessageCount];
    info.totalInfoCount = [dict successSelect:userCompleteKey];
    //: return info;
    return info;
}

//: - (nullable NSData *)toRawContent {
- (nullable NSData *)picture {

    //: if ([self invalid]) {
    if ([self happeningInvalid]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kNTESMigrateHeaderVersion] = @(_version);
    dic[appMemberId] = @(_version);
    //: dic[kNTESMigrateHeaderTerminal] = @(_clientType);
    dic[k_actionId] = @(_clientType);
    //: dic[kNTESMigrateHeaderSDKVersion] = _sdkVersion;
    dic[user_errorCyclePath] = _sdkVersion;
    //: dic[kNTESMigrateHeaderAPPVersion] = _appVersion;
    dic[kFlushStr] = _appVersion;
    //: dic[kNTESMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[userCompleteKey] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: - (BOOL)invalid {
- (BOOL)happeningInvalid {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end

Byte * PurchaseDataToCache(Byte *data) {
    int vocalism = data[0];
    int upRage = data[1];
    Byte power = data[2];
    int infoView = data[3];
    if (!vocalism) return data + infoView;
    for (int i = infoView; i < infoView + upRage; i++) {
        int value = data[i] - power;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[infoView + upRage] = 0;
    return data + infoView;
}

NSString *StringFromPurchaseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PurchaseDataToCache(data)];
}
