
#import <Foundation/Foundation.h>

typedef struct {
    Byte hosta;
    Byte *twentyFourHourPeriod;
    unsigned int nakedBulb;
	int couchWeakness;
	int lance;
} StructSunnyUnlikeData;

@interface SunnyUnlikeData : NSObject

@end

@implementation SunnyUnlikeData

+ (Byte *)SunnyUnlikeDataToByte:(StructSunnyUnlikeData *)data {
    for (int i = 0; i < data->nakedBulb; i++) {
        data->twentyFourHourPeriod[i] ^= data->hosta;
    }
    data->twentyFourHourPeriod[data->nakedBulb] = 0;
	if (data->nakedBulb >= 2) {
		data->couchWeakness = data->twentyFourHourPeriod[0];
		data->lance = data->twentyFourHourPeriod[1];
	}
    return data->twentyFourHourPeriod;
}

+ (NSString *)StringFromSunnyUnlikeData:(StructSunnyUnlikeData *)data {
    return [NSString stringWithUTF8String:(char *)[self SunnyUnlikeDataToByte:data]];
}

//: image
+ (NSString *)notiTextName {
    /* static */ NSString *notiTextName = nil;
    if (!notiTextName) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){228, (Byte []){141, 137, 133, 131, 129, 36}, 5, 65, 233};
        notiTextName = [self StringFromSunnyUnlikeData:&value];
    }
    return notiTextName;
}

//: jpeg
+ (NSString *)dream_temperatureValue {
    /* static */ NSString *dream_temperatureValue = nil;
    if (!dream_temperatureValue) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){188, (Byte []){214, 204, 217, 219, 49}, 4, 157, 163};
        dream_temperatureValue = [self StringFromSunnyUnlikeData:&value];
    }
    return dream_temperatureValue;
}

//: text/json
+ (NSString *)appInfluentialStr {
    /* static */ NSString *appInfluentialStr = nil;
    if (!appInfluentialStr) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){167, (Byte []){211, 194, 223, 211, 136, 205, 212, 200, 201, 149}, 9, 63, 8};
        appInfluentialStr = [self StringFromSunnyUnlikeData:&value];
    }
    return appInfluentialStr;
}

//: image/*
+ (NSString *)user_loadUrl {
    /* static */ NSString *user_loadUrl = nil;
    if (!user_loadUrl) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){172, (Byte []){197, 193, 205, 203, 201, 131, 134, 77}, 7, 71, 76};
        user_loadUrl = [self StringFromSunnyUnlikeData:&value];
    }
    return user_loadUrl;
}

//: code
+ (NSString *)app_rocName {
    /* static */ NSString *app_rocName = nil;
    if (!app_rocName) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){156, (Byte []){255, 243, 248, 249, 90}, 4, 253, 132};
        app_rocName = [self StringFromSunnyUnlikeData:&value];
    }
    return app_rocName;
}

//: text/plain
+ (NSString *)dreamLightlyMessage {
    /* static */ NSString *dreamLightlyMessage = nil;
    if (!dreamLightlyMessage) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){160, (Byte []){212, 197, 216, 212, 143, 208, 204, 193, 201, 206, 58}, 10, 46, 188};
        dreamLightlyMessage = [self StringFromSunnyUnlikeData:&value];
    }
    return dreamLightlyMessage;
}

//: msg
+ (NSString *)dream_goingTitle {
    /* static */ NSString *dream_goingTitle = nil;
    if (!dream_goingTitle) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){88, (Byte []){53, 43, 63, 184}, 3, 24, 90};
        dream_goingTitle = [self StringFromSunnyUnlikeData:&value];
    }
    return dream_goingTitle;
}

//: jpg
+ (NSString *)showDisplayTechnicalName {
    /* static */ NSString *showDisplayTechnicalName = nil;
    if (!showDisplayTechnicalName) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){136, (Byte []){226, 248, 239, 157}, 3, 195, 96};
        showDisplayTechnicalName = [self StringFromSunnyUnlikeData:&value];
    }
    return showDisplayTechnicalName;
}

//: gif
+ (NSString *)showChartIdent {
    /* static */ NSString *showChartIdent = nil;
    if (!showChartIdent) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){33, (Byte []){70, 72, 71, 79}, 3, 199, 205};
        showChartIdent = [self StringFromSunnyUnlikeData:&value];
    }
    return showChartIdent;
}

//: png
+ (NSString *)notiSodMessage {
    /* static */ NSString *notiSodMessage = nil;
    if (!notiSodMessage) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){101, (Byte []){21, 11, 2, 1}, 3, 166, 19};
        notiSodMessage = [self StringFromSunnyUnlikeData:&value];
    }
    return notiSodMessage;
}

//: 网络错误
+ (NSString *)dreamGravData {
    /* static */ NSString *dreamGravData = nil;
    if (!dreamGravData) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){15, (Byte []){232, 178, 158, 232, 180, 147, 230, 155, 150, 231, 160, 160, 45}, 12, 171, 231};
        dreamGravData = [self StringFromSunnyUnlikeData:&value];
    }
    return dreamGravData;
}

//: text/javascript
+ (NSString *)dream_costlyId {
    /* static */ NSString *dream_costlyId = nil;
    if (!dream_costlyId) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){242, (Byte []){134, 151, 138, 134, 221, 152, 147, 132, 147, 129, 145, 128, 155, 130, 134, 87}, 15, 131, 49};
        dream_costlyId = [self StringFromSunnyUnlikeData:&value];
    }
    return dream_costlyId;
}

//: data
+ (NSString *)mainTechnicalPath {
    /* static */ NSString *mainTechnicalPath = nil;
    if (!mainTechnicalPath) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){133, (Byte []){225, 228, 241, 228, 23}, 4, 210, 210};
        mainTechnicalPath = [self StringFromSunnyUnlikeData:&value];
    }
    return mainTechnicalPath;
}

//: 系统错误～
+ (NSString *)notiIconImmediatelyData {
    /* static */ NSString *notiIconImmediatelyData = nil;
    if (!notiIconImmediatelyData) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){32, (Byte []){199, 147, 155, 199, 155, 191, 201, 180, 185, 200, 143, 143, 207, 157, 190, 142}, 15, 221, 194};
        notiIconImmediatelyData = [self StringFromSunnyUnlikeData:&value];
    }
    return notiIconImmediatelyData;
}

//: img_%@.jpg
+ (NSString *)noti_tumStr {
    /* static */ NSString *noti_tumStr = nil;
    if (!noti_tumStr) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){189, (Byte []){212, 208, 218, 226, 152, 253, 147, 215, 205, 218, 80}, 10, 119, 130};
        noti_tumStr = [self StringFromSunnyUnlikeData:&value];
    }
    return noti_tumStr;
}

//: file
+ (NSString *)user_epidemicStr {
    /* static */ NSString *user_epidemicStr = nil;
    if (!user_epidemicStr) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){30, (Byte []){120, 119, 114, 123, 89}, 4, 139, 249};
        user_epidemicStr = [self StringFromSunnyUnlikeData:&value];
    }
    return user_epidemicStr;
}

//: text/html
+ (NSString *)user_sealValue {
    /* static */ NSString *user_sealValue = nil;
    if (!user_sealValue) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){113, (Byte []){5, 20, 9, 5, 94, 25, 5, 28, 29, 4}, 9, 239, 73};
        user_sealValue = [self StringFromSunnyUnlikeData:&value];
    }
    return user_sealValue;
}

//: 连接失败,请检查网络连接
+ (NSString *)user_pareValue {
    /* static */ NSString *user_pareValue = nil;
    if (!user_pareValue) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){115, (Byte []){155, 204, 237, 149, 253, 214, 150, 215, 194, 155, 199, 214, 95, 155, 220, 196, 149, 208, 243, 149, 236, 214, 148, 206, 226, 148, 200, 239, 155, 204, 237, 149, 253, 214, 121}, 34, 36, 120};
        user_pareValue = [self StringFromSunnyUnlikeData:&value];
    }
    return user_pareValue;
}

//: application/json
+ (NSString *)mainGymPath {
    /* static */ NSString *mainGymPath = nil;
    if (!mainGymPath) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){132, (Byte []){229, 244, 244, 232, 237, 231, 229, 240, 237, 235, 234, 171, 238, 247, 235, 234, 207}, 16, 198, 240};
        mainGymPath = [self StringFromSunnyUnlikeData:&value];
    }
    return mainGymPath;
}

//: 连接错误
+ (NSString *)showThankFormat {
    /* static */ NSString *showThankFormat = nil;
    if (!showThankFormat) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){159, (Byte []){119, 32, 1, 121, 17, 58, 118, 11, 6, 119, 48, 48, 52}, 12, 204, 74};
        showThankFormat = [self StringFromSunnyUnlikeData:&value];
    }
    return showThankFormat;
}

//: text/xml
+ (NSString *)show_defineHostageUrl {
    /* static */ NSString *show_defineHostageUrl = nil;
    if (!show_defineHostageUrl) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){254, (Byte []){138, 155, 134, 138, 209, 134, 147, 146, 2}, 8, 245, 115};
        show_defineHostageUrl = [self StringFromSunnyUnlikeData:&value];
    }
    return show_defineHostageUrl;
}

//: upload错误：%@
+ (NSString *)main_viewManualData {
    /* static */ NSString *main_viewManualData = nil;
    if (!main_viewManualData) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){206, (Byte []){187, 190, 162, 161, 175, 170, 39, 90, 87, 38, 97, 97, 33, 114, 84, 235, 142, 193}, 17, 88, 71};
        main_viewManualData = [self StringFromSunnyUnlikeData:&value];
    }
    return main_viewManualData;
}

//: http
+ (NSString *)notiOiId {
    /* static */ NSString *notiOiId = nil;
    if (!notiOiId) {
        StructSunnyUnlikeData value = (StructSunnyUnlikeData){50, (Byte []){90, 70, 70, 66, 116}, 4, 1, 249};
        notiOiId = [self StringFromSunnyUnlikeData:&value];
    }
    return notiOiId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  EquilibriumModel.m
//  hualiaoshi
//
//  Created by imim on 2017/12/22.
//  Copyright © 2017年 ali.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RestUtil.h"
#import "EquilibriumModel.h"
//: #import "YLNetworkHelper.h"
#import "MutualHelper.h"
//: #import "NSDictionaryAdditions.h"
#import "NSDictionaryAdditions.h"
//: #import <NSData+ImageContentType.h>
#import <NSData+ImageContentType.h>
//: #import "AFHTTPSessionManager.h"
#import "AFHTTPSessionManager.h"

//: @implementation RestUtil
@implementation EquilibriumModel

//: + (NSURLSessionTask *)post:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)paramsStart:(NSString *)url glint:(NSDictionary *)params ting:(YLRestSuccess)success to:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [MutualHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:[SunnyUnlikeData notiOiId]]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, [SunnyUnlikeData user_pareValue]);
        //: return nil;
        return nil;
    }

    // 发起请求
    //: return [YLNetworkHelper POST:url parameters:params success:^(id response) {
    return [MutualHelper doTable:url hearty:params error:^(id response) {

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
        int code = [res kitSub:[SunnyUnlikeData app_rocName] infoGet:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[SunnyUnlikeData mainTechnicalPath]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res inputShow:[SunnyUnlikeData dream_goingTitle] message:[SunnyUnlikeData notiIconImmediatelyData]];
            //: fail(code, [NSString stringWithFormat:@"%@",msg]);
            fail(code, [NSString stringWithFormat:@"%@",msg]);
        }
    //: } failure:^(NSError *error) {
    } lightIndex:^(NSError *error) {
        //: NSArray *array = [url componentsSeparatedByString:@"/"];
        NSArray *array = [url componentsSeparatedByString:@"/"];
        //: if (array.count){
        if (array.count){
            //: fail(-1, [NSString stringWithFormat:@"%@",@"连接错误"]);
            fail(-1, [NSString stringWithFormat:@"%@",[SunnyUnlikeData showThankFormat]]);
        //: } else {
        } else {
            //: fail(-1, @"网络错误");
            fail(-1, [SunnyUnlikeData dreamGravData]);
        }
    //: }];
    }];
}

//: + (NSURLSessionTask *)get:(NSString *)url params:(NSDictionary *)params success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)cell:(NSString *)url full:(NSDictionary *)params getWeaving:(YLRestSuccess)success parentTeam:(YLRestFail)fail
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
    //    [MutualHelper setValue:@"9" forHTTPHeaderField:@"fromType"];

    //: if (![url containsString:@"http"]){
    if (![url containsString:[SunnyUnlikeData notiOiId]]){
        //: fail(-1, @"连接失败,请检查网络连接");
        fail(-1, [SunnyUnlikeData user_pareValue]);
        //: return nil;
        return nil;
    }


    //: AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    //: sessionManager.requestSerializer.timeoutInterval = 5.f;
    sessionManager.requestSerializer.timeoutInterval = 5.f;
    //: sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/plain", @"text/javascript", @"text/xml", @"image/|*", nil];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:[SunnyUnlikeData mainGymPath], [SunnyUnlikeData user_sealValue], [SunnyUnlikeData appInfluentialStr], [SunnyUnlikeData dreamLightlyMessage], [SunnyUnlikeData dream_costlyId], [SunnyUnlikeData show_defineHostageUrl], [SunnyUnlikeData user_loadUrl], nil];
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
        fail(-1, [SunnyUnlikeData dreamGravData]);

    //: }];
    }];

    //: return sessionTask;
    return sessionTask;


//    // 发起请求
//    return [MutualHelper GET:url parameters:params success:^(id response) {
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
+ (NSURLSessionTask *)fail:(NSString *)url can:(NSDictionary *)params frame_strong:(NSArray *)images quick:(YLRestSuccess)success trademark:(YLRestFail)fail
{
//    NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg", [[NSDate date] description]];
    //: return [YLNetworkHelper uploadImagesWithURL:url parameters:params name:@"image" images:images fileNames:nil imageScale:0.8f imageType:@"jpeg" progress:nil success:^(id responseObject) {
    return [MutualHelper notice:url mode:params doShow:[SunnyUnlikeData notiTextName] byProgress:images someone:nil hide:0.8f textImage:[SunnyUnlikeData dream_temperatureValue] date:nil message:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res kitSub:[SunnyUnlikeData app_rocName] infoGet:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[SunnyUnlikeData mainTechnicalPath]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res inputShow:[SunnyUnlikeData dream_goingTitle] message:[SunnyUnlikeData notiIconImmediatelyData]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[SunnyUnlikeData main_viewManualData],msg]);
        }
    //: } failure:^(NSError *error) {
    } add:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [SunnyUnlikeData dreamGravData]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params data:(NSData *)data success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)offValue:(NSString *)url number_strong:(NSDictionary *)params assemblageFail:(NSData *)data by:(YLRestSuccess)success barnburnerByRestFail:(YLRestFail)fail
{
    //: NSString * fileName = [NSString stringWithFormat:@"img_%@.jpg",[[NSDate date] description]];
    NSString * fileName = [NSString stringWithFormat:[SunnyUnlikeData noti_tumStr],[[NSDate date] description]];
    //: SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    SDImageFormat imageFormat = [NSData sd_imageFormatForImageData:data];
    //: NSString *imageType = @"jpg";
    NSString *imageType = [SunnyUnlikeData showDisplayTechnicalName];
    //: if (imageFormat == SDImageFormatGIF) {
    if (imageFormat == SDImageFormatGIF) {
        //: imageType = @"gif";
        imageType = [SunnyUnlikeData showChartIdent];
    //: } else if (imageFormat == SDImageFormatPNG) {
    } else if (imageFormat == SDImageFormatPNG) {
        //: imageType = @"png";
        imageType = [SunnyUnlikeData notiSodMessage];
    }
    //: return [YLNetworkHelper uploadImageWithURL:url parameters:params name:@"image" data:data fileName:fileName imageType:imageType progress:nil success:^(id responseObject) {
    return [MutualHelper file:url optionRed:params keyChild:[SunnyUnlikeData notiTextName] tint:data vehicleMax:fileName image:imageType thread:nil mentalImage:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res kitSub:[SunnyUnlikeData app_rocName] infoGet:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[SunnyUnlikeData mainTechnicalPath]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res inputShow:[SunnyUnlikeData dream_goingTitle] message:[SunnyUnlikeData notiIconImmediatelyData]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[SunnyUnlikeData main_viewManualData],msg]);
        }
    //: } failure:^(NSError *error) {
    } to:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [SunnyUnlikeData dreamGravData]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params file:(NSString *)file success:(YLRestSuccess)success fail:(YLRestFail)fail
+ (NSURLSessionTask *)show:(NSString *)url hide_strong:(NSDictionary *)params bigness:(NSString *)file withRange:(YLRestSuccess)success childRestFail:(YLRestFail)fail
{
    //: return [YLNetworkHelper uploadFileWithURL:url parameters:params name:@"file" filePath:file progress:nil success:^(id responseObject) {
    return [MutualHelper courseOfActionEnable:url phoneMessage:params pin:[SunnyUnlikeData user_epidemicStr] workFlow:file session:nil clean:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res kitSub:[SunnyUnlikeData app_rocName] infoGet:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[SunnyUnlikeData mainTechnicalPath]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res inputShow:[SunnyUnlikeData dream_goingTitle] message:[SunnyUnlikeData notiIconImmediatelyData]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[SunnyUnlikeData main_viewManualData],msg]);
        }
    //: } failure:^(NSError *error) {
    } max:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [SunnyUnlikeData dreamGravData]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params files:(NSDictionary<NSString*, NSString*> *)files success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)merge:(NSString *)url file:(NSDictionary *)params hockeyTeam:(NSDictionary<NSString*, NSString*> *)files container:(YLRestSuccess)success tingRestFail:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadFilesWithURL:url parameters:params files:files progress:nil success:^(id responseObject) {
    return [MutualHelper enable:url godspeedFailure:params name:files shadowiness:nil show:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res kitSub:[SunnyUnlikeData app_rocName] infoGet:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[SunnyUnlikeData mainTechnicalPath]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res inputShow:[SunnyUnlikeData dream_goingTitle] message:[SunnyUnlikeData notiIconImmediatelyData]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[SunnyUnlikeData main_viewManualData],msg]);
        }
    //: } failure:^(NSError *error) {
    } failureBiteWithRecordFilesWorkflowToMargin:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [SunnyUnlikeData dreamGravData]);
    //: }];
    }];
}

//: + (NSURLSessionTask *)upload:(NSString *)url params:(NSDictionary *)params video:(NSString*)videoPath thumb:(UIImage*)thumb success:(YLRestSuccess)success fail:(YLRestFail)fail {
+ (NSURLSessionTask *)date:(NSString *)url complete:(NSDictionary *)params sessionFor:(NSString*)videoPath fail:(UIImage*)thumb fingerRestSuccess:(YLRestSuccess)success params:(YLRestFail)fail {
    //: return [YLNetworkHelper uploadVideoWithURL:url parameters:params video:videoPath thumb:thumb progress:nil success:^(id responseObject) {
    return [MutualHelper name:url toToolLapse:params upwardToFailingEnable:videoPath magnitude:thumb picture:nil should:^(id responseObject) {

        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        //        success(responseObject);

        //: NSDictionary *res = (NSDictionary *)responseObject;
        NSDictionary *res = (NSDictionary *)responseObject;
        //: int code = [res getIntValueForKey:@"code" defaultValue:-1];
        int code = [res kitSub:[SunnyUnlikeData app_rocName] infoGet:-1];
        //: if (0 == code) {
        if (0 == code) {
            //: id data = [res objectForKey:@"data"];
            id data = [res objectForKey:[SunnyUnlikeData mainTechnicalPath]];
            //: success(data);
            success(data);
        //: } else {
        } else {
            //: NSString * msg = [res getStringValueForKey:@"msg" defaultValue:@"系统错误～"];
            NSString * msg = [res inputShow:[SunnyUnlikeData dream_goingTitle] message:[SunnyUnlikeData notiIconImmediatelyData]];
            //: fail(code, [NSString stringWithFormat:@"upload错误：%@",msg]);
            fail(code, [NSString stringWithFormat:[SunnyUnlikeData main_viewManualData],msg]);
        }
    //: } failure:^(NSError *error) {
    } value:^(NSError *error) {
        //: fail(-1, @"网络错误");
        fail(-1, [SunnyUnlikeData dreamGravData]);
    //: }];
    }];
}

//: + (NSString *)imageType:(NSData *)data
+ (NSString *)session:(NSData *)data
{
    //: if (!data) {
    if (!data) {
        //: return @"jpg";
        return [SunnyUnlikeData showDisplayTechnicalName];
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
            return [SunnyUnlikeData showDisplayTechnicalName];
        //: case 0x89:
        case 0x89:
            //: return @"png";
            return [SunnyUnlikeData notiSodMessage];
        //: case 0x47:
        case 0x47:
            //: return @"gif";
            return [SunnyUnlikeData showChartIdent];
        //: default:
        default:
            //: return @"jpg";
            return [SunnyUnlikeData showDisplayTechnicalName];
    }
}


//: @end
@end