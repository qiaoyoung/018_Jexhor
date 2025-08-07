
#import <Foundation/Foundation.h>

@interface MeasureData : NSObject

@end

@implementation MeasureData

+ (Byte *)MeasureDataToCache:(Byte *)data {
    int enforce = data[0];
    int shoulderVise = data[1];
    for (int i = 0; i < enforce / 2; i++) {
        int begin = shoulderVise + i;
        int end = shoulderVise + enforce - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[shoulderVise + enforce] = 0;
    return data + shoulderVise;
}

+ (NSString *)StringFromMeasureData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MeasureDataToCache:data]];
}  

//: 系统错误～
+ (NSString *)show_withOlaName {
    /* static */ NSString *show_withOlaName = nil;
    if (!show_withOlaName) {
        Byte value[] = {15, 5, 90, 54, 137, 158, 189, 239, 175, 175, 232, 153, 148, 233, 159, 187, 231, 187, 179, 231, 191};
        show_withOlaName = [self StringFromMeasureData:value];
    }
    return show_withOlaName;
}

//: text/xml
+ (NSString *)user_towerTitle {
    /* static */ NSString *user_towerTitle = nil;
    if (!user_towerTitle) {
        Byte value[] = {8, 3, 34, 108, 109, 120, 47, 116, 120, 101, 116, 49};
        user_towerTitle = [self StringFromMeasureData:value];
    }
    return user_towerTitle;
}

//: code
+ (NSString *)mainInspireData {
    /* static */ NSString *mainInspireData = nil;
    if (!mainInspireData) {
        Byte value[] = {4, 8, 188, 87, 211, 171, 75, 98, 101, 100, 111, 99, 73};
        mainInspireData = [self StringFromMeasureData:value];
    }
    return mainInspireData;
}

//: img_%@.jpg
+ (NSString *)m_participantValue {
    /* static */ NSString *m_participantValue = nil;
    if (!m_participantValue) {
        Byte value[] = {10, 12, 17, 31, 85, 101, 181, 224, 230, 89, 164, 144, 103, 112, 106, 46, 64, 37, 95, 103, 109, 105, 207};
        m_participantValue = [self StringFromMeasureData:value];
    }
    return m_participantValue;
}

//: data
+ (NSString *)user_fabricText {
    /* static */ NSString *user_fabricText = nil;
    if (!user_fabricText) {
        Byte value[] = {4, 5, 32, 238, 165, 97, 116, 97, 100, 48};
        user_fabricText = [self StringFromMeasureData:value];
    }
    return user_fabricText;
}

//: 网络错误
+ (NSString *)dream_chairmanData {
    /* static */ NSString *dream_chairmanData = nil;
    if (!dream_chairmanData) {
        Byte value[] = {12, 6, 211, 43, 5, 87, 175, 175, 232, 153, 148, 233, 156, 187, 231, 145, 189, 231, 144};
        dream_chairmanData = [self StringFromMeasureData:value];
    }
    return dream_chairmanData;
}

//: msg
+ (NSString *)mainDevastatingData {
    /* static */ NSString *mainDevastatingData = nil;
    if (!mainDevastatingData) {
        Byte value[] = {3, 8, 24, 196, 124, 159, 138, 99, 103, 115, 109, 48};
        mainDevastatingData = [self StringFromMeasureData:value];
    }
    return mainDevastatingData;
}

//: file
+ (NSString *)dreamNurseName {
    /* static */ NSString *dreamNurseName = nil;
    if (!dreamNurseName) {
        Byte value[] = {4, 4, 44, 37, 101, 108, 105, 102, 170};
        dreamNurseName = [self StringFromMeasureData:value];
    }
    return dreamNurseName;
}

//: gif
+ (NSString *)showNumberTitLopingTitle {
    /* static */ NSString *showNumberTitLopingTitle = nil;
    if (!showNumberTitLopingTitle) {
        Byte value[] = {3, 4, 7, 60, 102, 105, 103, 162};
        showNumberTitLopingTitle = [self StringFromMeasureData:value];
    }
    return showNumberTitLopingTitle;
}

//: text/json
+ (NSString *)main_infoWorkplaceName {
    /* static */ NSString *main_infoWorkplaceName = nil;
    if (!main_infoWorkplaceName) {
        Byte value[] = {9, 2, 110, 111, 115, 106, 47, 116, 120, 101, 116, 211};
        main_infoWorkplaceName = [self StringFromMeasureData:value];
    }
    return main_infoWorkplaceName;
}

//: 连接失败,请检查网络连接
+ (NSString *)mContemplateValue {
    /* static */ NSString *mContemplateValue = nil;
    if (!mContemplateValue) {
        Byte value[] = {34, 10, 43, 189, 4, 12, 105, 135, 235, 61, 165, 142, 230, 158, 191, 232, 156, 187, 231, 145, 189, 231, 165, 159, 230, 128, 163, 230, 183, 175, 232, 44, 165, 180, 232, 177, 164, 229, 165, 142, 230, 158, 191, 232, 140};
        mContemplateValue = [self StringFromMeasureData:value];
    }
    return mContemplateValue;
}

//: upload错误：%@
+ (NSString *)main_weekendText {
    /* static */ NSString *main_weekendText = nil;
    if (!main_weekendText) {
        Byte value[] = {17, 5, 175, 238, 102, 64, 37, 154, 188, 239, 175, 175, 232, 153, 148, 233, 100, 97, 111, 108, 112, 117, 195};
        main_weekendText = [self StringFromMeasureData:value];
    }
    return main_weekendText;
}

//: 连接错误
+ (NSString *)kEmergingData {
    /* static */ NSString *kEmergingData = nil;
    if (!kEmergingData) {
        Byte value[] = {12, 5, 244, 35, 21, 175, 175, 232, 153, 148, 233, 165, 142, 230, 158, 191, 232, 110};
        kEmergingData = [self StringFromMeasureData:value];
    }
    return kEmergingData;
}

//: text/plain
+ (NSString *)m_adultSolidValue {
    /* static */ NSString *m_adultSolidValue = nil;
    if (!m_adultSolidValue) {
        Byte value[] = {10, 2, 110, 105, 97, 108, 112, 47, 116, 120, 101, 116, 93};
        m_adultSolidValue = [self StringFromMeasureData:value];
    }
    return m_adultSolidValue;
}

//: png
+ (NSString *)app_batteryData {
    /* static */ NSString *app_batteryData = nil;
    if (!app_batteryData) {
        Byte value[] = {3, 3, 159, 103, 110, 112, 204};
        app_batteryData = [self StringFromMeasureData:value];
    }
    return app_batteryData;
}

//: image
+ (NSString *)mStorageMedicalText {
    /* static */ NSString *mStorageMedicalText = nil;
    if (!mStorageMedicalText) {
        Byte value[] = {5, 10, 106, 188, 5, 145, 108, 97, 118, 81, 101, 103, 97, 109, 105, 178};
        mStorageMedicalText = [self StringFromMeasureData:value];
    }
    return mStorageMedicalText;
}

//: text/javascript
+ (NSString *)k_workplaceValue {
    /* static */ NSString *k_workplaceValue = nil;
    if (!k_workplaceValue) {
        Byte value[] = {15, 10, 48, 230, 180, 130, 209, 243, 43, 63, 116, 112, 105, 114, 99, 115, 97, 118, 97, 106, 47, 116, 120, 101, 116, 145};
        k_workplaceValue = [self StringFromMeasureData:value];
    }
    return k_workplaceValue;
}

//: jpeg
+ (NSString *)kPocketBatteryText {
    /* static */ NSString *kPocketBatteryText = nil;
    if (!kPocketBatteryText) {
        Byte value[] = {4, 7, 4, 83, 194, 167, 172, 103, 101, 112, 106, 75};
        kPocketBatteryText = [self StringFromMeasureData:value];
    }
    return kPocketBatteryText;
}

//: application/json
+ (NSString *)m_illegalName {
    /* static */ NSString *m_illegalName = nil;
    if (!m_illegalName) {
        Byte value[] = {16, 9, 105, 163, 93, 140, 149, 226, 81, 110, 111, 115, 106, 47, 110, 111, 105, 116, 97, 99, 105, 108, 112, 112, 97, 239};
        m_illegalName = [self StringFromMeasureData:value];
    }
    return m_illegalName;
}

//: text/html
+ (NSString *)showAgainstTitle {
    /* static */ NSString *showAgainstTitle = nil;
    if (!showAgainstTitle) {
        Byte value[] = {9, 2, 108, 109, 116, 104, 47, 116, 120, 101, 116, 121};
        showAgainstTitle = [self StringFromMeasureData:value];
    }
    return showAgainstTitle;
}

//: http
+ (NSString *)main_pickData {
    /* static */ NSString *main_pickData = nil;
    if (!main_pickData) {
        Byte value[] = {4, 10, 187, 123, 209, 17, 127, 156, 170, 206, 112, 116, 116, 104, 104};
        main_pickData = [self StringFromMeasureData:value];
    }
    return main_pickData;
}

//: jpg
+ (NSString *)k_breastName {
    /* static */ NSString *k_breastName = nil;
    if (!k_breastName) {
        Byte value[] = {3, 11, 165, 214, 152, 235, 237, 227, 197, 35, 141, 103, 112, 106, 201};
        k_breastName = [self StringFromMeasureData:value];
    }
    return k_breastName;
}

//: image/*
+ (NSString *)app_showAbuseTagData {
    /* static */ NSString *app_showAbuseTagData = nil;
    if (!app_showAbuseTagData) {
        Byte value[] = {7, 11, 167, 48, 45, 23, 242, 164, 208, 81, 145, 42, 47, 101, 103, 97, 109, 105, 174};
        app_showAbuseTagData = [self StringFromMeasureData:value];
    }
    return app_showAbuseTagData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueLab.m
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RestUtil.h"
#import "ValueLab.h"
//: #import "YLNetworkHelper.h"
#import "ExecutiveSessionHelper.h"
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"
//: #import <NSData+ImageContentType.h>
#import <NSData+ImageContentType.h>
//: #import "AFHTTPSessionManager.h"
#import "AFHTTPSessionManager.h"

//: @implementation RestUtil
@implementation ValueLab

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)successGlobal:(NSString *)url shadowTo:(NSDictionary *)params militaryQuartersViewLose:(YLRestSuccess)success need:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [ExecutiveSessionHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:[MeasureData main_pickData]]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, [MeasureData mContemplateValue]);
        //: return nil;
        return nil;
    }

    // 发起请求
    //: return [YLNetworkHelper POST:url parameters:params success:^(id response) {
    return [ExecutiveSessionHelper show:url tap:params input:^(id response) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res;
        NSDictionary *res;
        //: if ([response isKindOfClass:[NSData class]]){
        if ([response isKindOfClass:[NSData class]]){
            //: res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
            res = [NSJSONSerialization JSONObjectWithData:response options:0 error:0];
        //: } else {
        } else {
            //: res = (NSDictionary *)response;
            res = (NSDictionary *)response;
        }

        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res reply:[MeasureData mainInspireData] languageWith:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[MeasureData user_fabricText]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res value:[MeasureData mainDevastatingData] show:[MeasureData show_withOlaName]];
            //: fail(code, [NSString stringWithFormat:@"%@",msg]);
            fail(code, [NSString stringWithFormat:@"%@",msg]);
        }
    //: } failure:^(NSError *error) {
    } color:^(NSError *error) {
        //: NSArray *array = [url componentsSeparatedByString:@"/"];
        NSArray *array = [url componentsSeparatedByString:@"/"];
        //: if (array.count){
        if (array.count){
            //: fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
            fail(-1, [NSString stringWithFormat:@"%@",[MeasureData kEmergingData]]);
        //: } else {
        } else {
            //: fail(-1, @"网络错误");
            fail(-1, [MeasureData dream_chairmanData]);
        }
    //: }];
    }];
}

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)image:(NSString *)url title:(NSDictionary *)params dateSuccess:(YLRestSuccess)success session:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [ExecutiveSessionHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:[MeasureData main_pickData]]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, [MeasureData mContemplateValue]);
        //: return nil;
        return nil;
    }


    //: AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    //: sessionManager.requestSerializer.timeoutInterval = 5.f;
    sessionManager.requestSerializer.timeoutInterval = 5.f;
    //: sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[MeasureData m_illegalName], [MeasureData showAgainstTitle], [MeasureData main_infoWorkplaceName], [MeasureData m_adultSolidValue], [MeasureData k_workplaceValue], [MeasureData user_towerTitle], [MeasureData app_showAbuseTagData], nil];
    //: [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    [sessionManager setResponseSerializer:[AFHTTPResponseSerializer serializer]];


    //: NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {
    NSURLSessionTask *sessionTask = [sessionManager GET:url parameters:@{} headers:nil progress:^(NSProgress * _Nonnull uploadProgress) {

    //: } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {

        //: if ([responseObject isKindOfClass:[NSData class]]){
        if ([responseObject isKindOfClass:[NSData class]]){
            //: NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            NSString * str = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
            //: success ? success(str) : nil;
            success ? success(str) : nil;
        //: } else if ([responseObject isKindOfClass:[NSString class]]){
        } else if ([responseObject isKindOfClass:[NSString class]]){
            //: success ? success(responseObject) : nil;
            success ? success(responseObject) : nil;
        }

    //: } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {

        //: fail(-1, @"网络错误");
        fail(-1, [MeasureData dream_chairmanData]);

    //: }];
    }];

    //: return sessionTask;
    return sessionTask;


//    // 发起请求
//    return [ExecutiveSessionHelper GET:url parameters:params success:^(id response) {
//
//        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
//        //        success(responseObject);
//
//        NSString *dataStr = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
//        if (dataStr.length > 0) {
//            success(dataStr);
//        } else {
//            fail(-1,@"OSS系统错误～");
//        }
//    } failure:^(NSError *error) {
//        NSArray *array = [url componentsSeparatedByString:@"/"];
//        if (array.count){
//            fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
//        } else {
//            fail(-1, @"网络错误");
//        }
//    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params images:(NSArray *)images success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)masterKeyFail:(NSString *)url off:(NSDictionary *)params view:(NSArray *)images video:(YLRestSuccess)success dataConverterRestFail:(YLRestFail)fail
{
//    NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg", [[NSDate date] description]];
    //: return [YLNetworkHelper uploadImagesWithURL:url parameters:params name:@"image" images:images fileNames:nil imageScale:0.8f imageType:@"jpeg" progress:nil success:^(id responseObject) {
    return [ExecutiveSessionHelper title:url delay:params compartment_strong:[MeasureData mStorageMedicalText] uploadFile:images origin:nil data:0.8f shared_strong:[MeasureData kPocketBatteryText] countMaxFailure:nil noticeFailure:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res reply:[MeasureData mainInspireData] languageWith:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[MeasureData user_fabricText]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res value:[MeasureData mainDevastatingData] show:[MeasureData show_withOlaName]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[MeasureData main_weekendText],msg]);
        }
    //: } failure:^(NSError *error) {
    } read:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [MeasureData dream_chairmanData]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)keep:(NSString *)url end:(NSDictionary *)params past:(NSData *)data imageTap:(YLRestSuccess)success item:(YLRestFail)fail
{
    //: NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg",[[NSDate date] description]];
    NSString * fileName = [NSString stringWithFormat:[MeasureData m_participantValue],[[NSDate date] description]];
    //: SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    //: NSString *imageType = @"jpg";
    NSString *imageType = [MeasureData k_breastName];
    //: if (imageFormat == SDImageFormatGIF) {
    if (imageFormat == SDImageFormatGIF) {
        //: imageType = @"gif";
        imageType = [MeasureData showNumberTitLopingTitle];
    //: } else if (imageFormat == SDImageFormatPNG) {
    } else if (imageFormat == SDImageFormatPNG) {
        //: imageType = @"png";
        imageType = [MeasureData app_batteryData];
    }
    //: return [YLNetworkHelper uploadImageWithURL:url parameters:params name:@"image" data:data fileName:fileName imageType:imageType progress:nil success:^(id responseObject) {
    return [ExecutiveSessionHelper length:url session:params tapButton:[MeasureData mStorageMedicalText] memoryImage:data specialSession:fileName should:imageType need:nil writerSContent:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res reply:[MeasureData mainInspireData] languageWith:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[MeasureData user_fabricText]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res value:[MeasureData mainDevastatingData] show:[MeasureData show_withOlaName]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[MeasureData main_weekendText],msg]);
        }
    //: } failure:^(NSError *error) {
    } withShould:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [MeasureData dream_chairmanData]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)chokeRemoveBack:(NSString *)url ting:(NSDictionary *)params disable:(NSString *)file origin:(YLRestSuccess)success bubble:(YLRestFail)fail
{
    //: return [YLNetworkHelper uploadFileWithURL:url parameters:params name:@"file" filePath:file progress:nil success:^(id responseObject) {
    return [ExecutiveSessionHelper trademark:url title:params key:[MeasureData dreamNurseName] messageOn:file by:nil smart:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res reply:[MeasureData mainInspireData] languageWith:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[MeasureData user_fabricText]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res value:[MeasureData mainDevastatingData] show:[MeasureData show_withOlaName]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[MeasureData main_weekendText],msg]);
        }
    //: } failure:^(NSError *error) {
    } color:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [MeasureData dream_chairmanData]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)happening:(NSString *)url size:(NSDictionary *)params anyName:(NSDictionary<NSString*, NSString*> *)files files:(YLRestSuccess)success team:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadFilesWithURL:url parameters:params files:files progress:nil success:^(id responseObject) {
    return [ExecutiveSessionHelper workflow:url toteUp:params outsideFiles:files send:nil center:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res reply:[MeasureData mainInspireData] languageWith:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[MeasureData user_fabricText]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res value:[MeasureData mainDevastatingData] show:[MeasureData show_withOlaName]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[MeasureData main_weekendText],msg]);
        }
    //: } failure:^(NSError *error) {
    } inputUpload:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [MeasureData dream_chairmanData]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)show:(NSString *)url user:(NSDictionary *)params beforeTitle:(NSString*)videoPath origin:(UIImage*)thumb labelBy:(YLRestSuccess)success table:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadVideoWithURL:url parameters:params video:videoPath thumb:thumb progress:nil success:^(id responseObject) {
    return [ExecutiveSessionHelper team:url quick:params adjacent:videoPath style:thumb old:nil computerFileContent:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res reply:[MeasureData mainInspireData] languageWith:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[MeasureData user_fabricText]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res value:[MeasureData mainDevastatingData] show:[MeasureData show_withOlaName]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[MeasureData main_weekendText],msg]);
        }
    //: } failure:^(NSError *error) {
    } data:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [MeasureData dream_chairmanData]);
    //: }];
    }];
}

//: + (NSString *)imageType:(NSData *)data
+ (NSString *)completeTypePressed:(NSData *)data
{
    //: if (!data) {
    if (!data) {
        //: return @"jpg";
        return [MeasureData k_breastName];
    }
    //: uint8_t c;
    uint8_t c;
    //: [data getBytes:&c length:1];
    [data getBytes:&c length:1];
    //: switch (c) {
    switch (c) {
        //: case 0xFF:
        case 0xFF:
            //: return @"jpg";
            return [MeasureData k_breastName];
        //: case 0x89:
        case 0x89:
            //: return @"png";
            return [MeasureData app_batteryData];
        //: case 0x47:
        case 0x47:
            //: return @"gif";
            return [MeasureData showNumberTitLopingTitle];
        //: default:
        default:
            //: return @"jpg";
            return [MeasureData k_breastName];
    }
}


//: @end
@end