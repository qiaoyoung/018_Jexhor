
#import <Foundation/Foundation.h>

@interface RequirementData : NSObject

@end

@implementation RequirementData

+ (Byte *)RequirementDataToCache:(Byte *)data {
    int trap = data[0];
    Byte factEquity = data[1];
    int skyDraw = data[2];
    for (int i = skyDraw; i < skyDraw + trap; i++) {
        int value = data[i] - factEquity;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[skyDraw + trap] = 0;
    return data + skyDraw;
}

+ (NSString *)StringFromRequirementData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RequirementDataToCache:data]];
}

//: nim_test_msg_env
+ (NSString *)user_hospitalName {
    /* static */ NSString *user_hospitalName = nil;
    if (!user_hospitalName) {
        Byte value[] = {16, 73, 5, 108, 66, 183, 178, 182, 168, 189, 174, 188, 189, 168, 182, 188, 176, 168, 174, 183, 191, 254};
        user_hospitalName = [self StringFromRequirementData:value];
    }
    return user_hospitalName;
}

//: 发来了一段视频
+ (NSString *)noti_stickTitle {
    /* static */ NSString *noti_stickTitle = nil;
    if (!noti_stickTitle) {
        Byte value[] = {21, 76, 3, 49, 219, 221, 50, 233, 241, 48, 6, 210, 48, 4, 204, 50, 250, 1, 52, 243, 210, 53, 238, 221, 193};
        noti_stickTitle = [self StringFromRequirementData:value];
    }
    return noti_stickTitle;
}

//: 发来了一段语音
+ (NSString *)appInfoErrMsg {
    /* static */ NSString *appInfoErrMsg = nil;
    if (!appInfoErrMsg) {
        Byte value[] = {21, 91, 13, 236, 38, 10, 78, 3, 129, 47, 145, 151, 123, 64, 234, 236, 65, 248, 0, 63, 21, 225, 63, 19, 219, 65, 9, 16, 67, 10, 8, 68, 250, 14, 244};
        appInfoErrMsg = [self StringFromRequirementData:value];
    }
    return appInfoErrMsg;
}

//: key
+ (NSString *)noti_nuclearData {
    /* static */ NSString *noti_nuclearData = nil;
    if (!noti_nuclearData) {
        Byte value[] = {3, 31, 10, 226, 36, 190, 51, 100, 91, 92, 138, 132, 152, 184};
        noti_nuclearData = [self StringFromRequirementData:value];
    }
    return noti_nuclearData;
}

//: value
+ (NSString *)noti_horrorPath {
    /* static */ NSString *noti_horrorPath = nil;
    if (!noti_horrorPath) {
        Byte value[] = {5, 11, 3, 129, 108, 119, 128, 112, 60};
        noti_horrorPath = [self StringFromRequirementData:value];
    }
    return noti_horrorPath;
}

//: apns-collapse-id
+ (NSString *)dreamEstablishKey {
    /* static */ NSString *dreamEstablishKey = nil;
    if (!dreamEstablishKey) {
        Byte value[] = {16, 4, 10, 9, 20, 219, 193, 213, 65, 71, 101, 116, 114, 119, 49, 103, 115, 112, 112, 101, 116, 119, 105, 49, 109, 104, 176};
        dreamEstablishKey = [self StringFromRequirementData:value];
    }
    return dreamEstablishKey;
}

//: 你收到了一条快捷评论
+ (NSString *)notiViewPath {
    /* static */ NSString *notiViewPath = nil;
    if (!notiViewPath) {
        Byte value[] = {30, 92, 4, 2, 64, 25, 252, 66, 240, 18, 65, 228, 12, 64, 22, 226, 64, 20, 220, 66, 249, 253, 65, 27, 7, 66, 233, 19, 68, 11, 224, 68, 10, 22, 109};
        notiViewPath = [self StringFromRequirementData:value];
    }
    return notiViewPath;
}

//: init_manager_nim_status_bar_image_message
+ (NSString *)user_smileIdent {
    /* static */ NSString *user_smileIdent = nil;
    if (!user_smileIdent) {
        Byte value[] = {41, 52, 7, 191, 164, 65, 64, 157, 162, 157, 168, 147, 161, 149, 162, 149, 155, 153, 166, 147, 162, 157, 161, 147, 167, 168, 149, 168, 169, 167, 147, 150, 149, 166, 147, 157, 161, 149, 155, 153, 147, 161, 153, 167, 167, 149, 155, 153, 245};
        user_smileIdent = [self StringFromRequirementData:value];
    }
    return user_smileIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageMaker.m
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageMaker.h"
#import "AddEnablely.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "FFFInputAtCache.h"
#import "VoiceSharedCache.h"

//: NSString * generateUUID(void) {
NSString * remoteInput(void) {
    // 创建一个UUID
    //: CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    // 转换为字符串
    //: NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    // 释放UUID对象
    //: CFRelease(uuidObject);
    CFRelease(uuidObject);
    //: return uuidString;
    return uuidString;
}

//: @implementation FFFMessageMaker
@implementation AddEnablely

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)margin:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self input:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)image:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = [RequirementData appInfoErrMsg].minIn;
    //: [self setupMessage:message];
    [self input:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)user:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = generateUUID();
    videoObject.displayName = remoteInput();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = @"发来了一段视频".nim_localized;
    message.apnsContent = [RequirementData noti_stickTitle].minIn;
    //: [self setupMessage:message];
    [self input:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)session:(UIImage*)image
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.7;
    option.compressQuality = 0.7;
    //: imageObject.option = option;
    imageObject.option = option;
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [AddEnablely cell:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)domain:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [AddEnablely cell:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)success:(NSData *)data cancel:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [AddEnablely cell:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)cell:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = generateUUID();
    imageObject.displayName = remoteInput();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [BackgroundRandomAttribute content:[RequirementData user_smileIdent]];
    //: [self setupMessage:message];
    [self input:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)input:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        [RequirementData dreamEstablishKey]: message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:[RequirementData user_hospitalName]];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation MessageMaker

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)item:(int64_t)type
                             //: content:(NSString *)content
                             createGround:(NSString *)content
                                 //: ext:(NSString *)ext
                                 input:(NSString *)ext
{
    //: NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    //: comment.ext = ext;
    comment.ext = ext;
    //: NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    //: setting.needPush = YES;
    setting.needPush = YES;
    //: setting.needBadge = YES;
    setting.needBadge = YES;
    //: setting.pushTitle = @"你收到了一条快捷评论";
    setting.pushTitle = [RequirementData notiViewPath];
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        [RequirementData noti_nuclearData] : [RequirementData noti_horrorPath]
    //: };
    };
    //: comment.setting = setting;
    comment.setting = setting;
    //: comment.replyType = type;
    comment.replyType = type;
    //: return comment;
    return comment;
}

//: @end
@end