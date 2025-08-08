
#import <Foundation/Foundation.h>

@interface JacketData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation JacketData

+ (instancetype)sharedInstance {
    static JacketData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)JacketDataToCache:(Byte *)data {
    int cig = data[0];
    int difficulty = data[1];
    for (int i = 0; i < cig / 2; i++) {
        int begin = difficulty + i;
        int end = difficulty + cig - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[difficulty + cig] = 0;
    return data + difficulty;
}

- (NSString *)StringFromJacketData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self JacketDataToCache:data]];
}  

//: /wallet/questionList
- (NSString *)m_farmerValue {
    /* static */ NSString *m_farmerValue = nil;
    if (!m_farmerValue) {
        Byte value[] = {20, 12, 28, 27, 55, 204, 15, 99, 10, 238, 116, 167, 116, 115, 105, 76, 110, 111, 105, 116, 115, 101, 117, 113, 47, 116, 101, 108, 108, 97, 119, 47, 101};
        m_farmerValue = [self StringFromJacketData:value];
    }
    return m_farmerValue;
}

//: data
- (NSString *)appHemeValue {
    /* static */ NSString *appHemeValue = nil;
    if (!appHemeValue) {
        Byte value[] = {4, 10, 145, 144, 30, 229, 133, 70, 199, 90, 97, 116, 97, 100, 200};
        appHemeValue = [self StringFromJacketData:value];
    }
    return appHemeValue;
}

//: code
- (NSString *)dreamTableData {
    /* static */ NSString *dreamTableData = nil;
    if (!dreamTableData) {
        Byte value[] = {4, 12, 88, 176, 49, 24, 172, 223, 80, 21, 13, 205, 101, 100, 111, 99, 111};
        dreamTableData = [self StringFromJacketData:value];
    }
    return dreamTableData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountKey.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGlobalConfigManager.h"
#import "AccountKey.h"

//: @interface NTESGlobalConfigManager ()
@interface AccountKey ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation NTESGlobalConfigManager
@implementation AccountKey

//: static NTESGlobalConfigManager *shareConfigManager = nil;
static AccountKey *noti_kitName = nil;

//: + (NTESGlobalConfigManager *)shareConfigManager{
+ (AccountKey *)config{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (noti_kitName == nil) {
            //: shareConfigManager = [[NTESGlobalConfigManager alloc] init];
            noti_kitName = [[AccountKey alloc] init];
        }
        //: return shareConfigManager;
        return noti_kitName;
    }
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)secret{
    //: return [NTESGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [AccountKey config].secretQuestionArray;
}

//: + (void)refreshSecretQuestionConfig{
+ (void)barConfig{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[[JacketData sharedInstance] m_farmerValue]] queryedBlockOf:nil managerToObject:NO presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[[JacketData sharedInstance] dreamTableData]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [NTESGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [AccountKey config].secretQuestionArray = [resultDict objectColor:[[JacketData sharedInstance] appHemeValue]];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: @end
@end