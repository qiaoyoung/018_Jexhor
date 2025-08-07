
#import <Foundation/Foundation.h>

@interface ImmediatelyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ImmediatelyData

+ (instancetype)sharedInstance {
    static ImmediatelyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ImmediatelyDataToCache:(Byte *)data {
    int sunnySub = data[0];
    Byte everywhere = data[1];
    int tweedy = data[2];
    for (int i = tweedy; i < tweedy + sunnySub; i++) {
        int value = data[i] - everywhere;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[tweedy + sunnySub] = 0;
    return data + tweedy;
}

- (NSString *)StringFromImmediatelyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ImmediatelyDataToCache:data]];
}

//: /wallet/questionList
- (NSString *)kDisplayItselfCouchIdent {
    /* static */ NSString *kDisplayItselfCouchIdent = nil;
    if (!kDisplayItselfCouchIdent) {
        Byte value[] = {20, 57, 12, 93, 24, 139, 120, 176, 47, 110, 119, 44, 104, 176, 154, 165, 165, 158, 173, 104, 170, 174, 158, 172, 173, 162, 168, 167, 133, 162, 172, 173, 174};
        kDisplayItselfCouchIdent = [self StringFromImmediatelyData:value];
    }
    return kDisplayItselfCouchIdent;
}

//: code
- (NSString *)main_goingTitle {
    /* static */ NSString *main_goingTitle = nil;
    if (!main_goingTitle) {
        Byte value[] = {4, 21, 5, 66, 214, 120, 132, 121, 122, 12};
        main_goingTitle = [self StringFromImmediatelyData:value];
    }
    return main_goingTitle;
}

//: data
- (NSString *)appItselfUrl {
    /* static */ NSString *appItselfUrl = nil;
    if (!appItselfUrl) {
        Byte value[] = {4, 87, 3, 187, 184, 203, 184, 45};
        appItselfUrl = [self StringFromImmediatelyData:value];
    }
    return appItselfUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WorldwideColorAssociatedStateAdministratorManager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESGlobalConfigManager.h"
#import "WorldwideColorAssociatedStateAdministratorManager.h"

//: @interface NTESGlobalConfigManager ()
@interface WorldwideColorAssociatedStateAdministratorManager ()
//: @property (nonatomic ,strong) NSArray *secretQuestionArray;
@property (nonatomic ,strong) NSArray *secretQuestionArray;
//: @end
@end

//: @implementation NTESGlobalConfigManager
@implementation WorldwideColorAssociatedStateAdministratorManager

//: static NTESGlobalConfigManager *shareConfigManager = nil;
static WorldwideColorAssociatedStateAdministratorManager *user_teamMessage = nil;

//: + (NTESGlobalConfigManager *)shareConfigManager{
+ (WorldwideColorAssociatedStateAdministratorManager *)post{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (user_teamMessage == nil) {
            //: shareConfigManager = [[NTESGlobalConfigManager alloc] init];
            user_teamMessage = [[WorldwideColorAssociatedStateAdministratorManager alloc] init];
        }
        //: return shareConfigManager;
        return user_teamMessage;
    }
}



//: + (NSArray *)getSecretQuestionList{
+ (NSArray *)add{
    //: return [NTESGlobalConfigManager shareConfigManager].secretQuestionArray;
    return [WorldwideColorAssociatedStateAdministratorManager post].secretQuestionArray;
}

//: + (void)refreshSecretQuestionConfig{
+ (void)refresh{

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/questionList"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[ImmediatelyData sharedInstance] kDisplayItselfCouchIdent]] view:nil fort:NO generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[[ImmediatelyData sharedInstance] main_goingTitle]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: [NTESGlobalConfigManager shareConfigManager].secretQuestionArray = [resultDict valueObjectForKey:@"data"];
            [WorldwideColorAssociatedStateAdministratorManager post].secretQuestionArray = [resultDict already:[[ImmediatelyData sharedInstance] appItselfUrl]];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: @end
@end