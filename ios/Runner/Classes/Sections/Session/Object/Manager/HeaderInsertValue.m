
#import <Foundation/Foundation.h>

@interface SessionCanData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SessionCanData

+ (instancetype)sharedInstance {
    static SessionCanData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SessionCanDataToCache:(Byte *)data {
    int viseViewRow = data[0];
    Byte assault = data[1];
    int appearQuick = data[2];
    for (int i = appearQuick; i < appearQuick + viseViewRow; i++) {
        int value = data[i] + assault;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[appearQuick + viseViewRow] = 0;
    return data + appearQuick;
}

- (NSString *)StringFromSessionCanData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SessionCanDataToCache:data]];
}

//: CFBundleShortVersionString
- (NSString *)m_byName {
    /* static */ NSString *m_byName = nil;
    if (!m_byName) {
        Byte value[] = {26, 18, 5, 124, 174, 49, 52, 48, 99, 92, 82, 90, 83, 65, 86, 93, 96, 98, 68, 83, 96, 97, 87, 93, 92, 65, 98, 96, 87, 92, 85, 19};
        m_byName = [self StringFromSessionCanData:value];
    }
    return m_byName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeaderInsertValue.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMigrateHeader.h"
#import "HeaderInsertValue.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+SubjectMatterJson.h"

//: static NSString *const kNTESMigrateHeaderVersion = @"version";
static NSString *const main_versionValue = @"version";
//: static NSString *const kNTESMigrateHeaderTerminal = @"terminal";
static NSString *const user_messageData = @"terminal";
//: static NSString *const kNTESMigrateHeaderSDKVersion = @"sdk_version";
static NSString *const user_expectData = @"sdk_version";
//: static NSString *const kNTESMigrateHeaderAPPVersion = @"app_version";
static NSString *const user_systemData = @"app_version";
//: static NSString *const kNTESMigrateHeaderMessageCount = @"message_count";
static NSString *const m_maxCommentName = @"message_count";

//: @implementation NTESMigrateHeader
@implementation HeaderInsertValue


//: + (instancetype)initWithDefaultConfig {
+ (instancetype)initWithTitleConfig {
    //: NTESMigrateHeader *ret = [[NTESMigrateHeader alloc] init];
    HeaderInsertValue *ret = [[HeaderInsertValue alloc] init];
    //: ret.version = 0;
    ret.version = 0;
    //: ret.clientType = NIMLoginClientTypeiOS;
    ret.clientType = NIMLoginClientTypeiOS;
    //: ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    ret.sdkVersion = [NIMSDK sharedSDK].sdkVersion;
    //: ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    ret.appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:[[SessionCanData sharedInstance] m_byName]];
    //: return ret;
    return ret;
}

//: + (instancetype)initWithRawContent:(NSData *)data {
+ (instancetype)initWithQuick:(NSData *)data {
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
    HeaderInsertValue *info = [[HeaderInsertValue alloc] init];
    //: info.version = [dict jsonInteger:kNTESMigrateHeaderVersion];
    info.version = [dict cell:main_versionValue];
    //: info.clientType = [dict jsonInteger:kNTESMigrateHeaderTerminal];
    info.clientType = [dict cell:user_messageData];
    //: info.sdkVersion = [dict jsonString:kNTESMigrateHeaderSDKVersion];
    info.sdkVersion = [dict table:user_expectData];
    //: info.appVersion = [dict jsonString:kNTESMigrateHeaderAPPVersion];
    info.appVersion = [dict table:user_systemData];
    //: info.totalInfoCount = [dict jsonInteger:kNTESMigrateHeaderMessageCount];
    info.totalInfoCount = [dict cell:m_maxCommentName];
    //: return info;
    return info;
}

//: - (nullable NSData *)toRawContent {
- (nullable NSData *)top {

    //: if ([self invalid]) {
    if ([self view]) {
        //: return nil;
        return nil;
    }

    //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    //: dic[kNTESMigrateHeaderVersion] = @(_version);
    dic[main_versionValue] = @(_version);
    //: dic[kNTESMigrateHeaderTerminal] = @(_clientType);
    dic[user_messageData] = @(_clientType);
    //: dic[kNTESMigrateHeaderSDKVersion] = _sdkVersion;
    dic[user_expectData] = _sdkVersion;
    //: dic[kNTESMigrateHeaderAPPVersion] = _appVersion;
    dic[user_systemData] = _appVersion;
    //: dic[kNTESMigrateHeaderMessageCount] = @(_totalInfoCount);
    dic[m_maxCommentName] = @(_totalInfoCount);
    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:0 error:nil];
    //: return jsonData;
    return jsonData;
}

//: - (BOOL)invalid {
- (BOOL)view {
    //: return (_totalInfoCount == 0 ||
    return (_totalInfoCount == 0 ||
            //: _version != 0);
            _version != 0);
}

//: @end
@end