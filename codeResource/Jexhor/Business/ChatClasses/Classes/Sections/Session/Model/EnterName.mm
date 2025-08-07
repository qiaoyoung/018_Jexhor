
#import <Foundation/Foundation.h>

@interface SessionConsequentData : NSObject

@end

@implementation SessionConsequentData

+ (Byte *)SessionConsequentDataToCache:(Byte *)data {
    int beige = data[0];
    Byte educatorBarrelCousin = data[1];
    int chipBot = data[2];
    for (int i = chipBot; i < chipBot + beige; i++) {
        int value = data[i] - educatorBarrelCousin;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[chipBot + beige] = 0;
    return data + chipBot;
}

+ (NSString *)StringFromSessionConsequentData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SessionConsequentDataToCache:data]];
}

//: apns-collapse-id
+ (NSString *)mainFoodMessageOldData {
    /* static */ NSString *mainFoodMessageOldData = nil;
    if (!mainFoodMessageOldData) {
        Byte value[] = {16, 24, 3, 121, 136, 134, 139, 69, 123, 135, 132, 132, 121, 136, 139, 125, 69, 129, 124, 183};
        mainFoodMessageOldData = [self StringFromSessionConsequentData:value];
    }
    return mainFoodMessageOldData;
}

//: key
+ (NSString *)dreamRecallName {
    /* static */ NSString *dreamRecallName = nil;
    if (!dreamRecallName) {
        Byte value[] = {3, 77, 9, 162, 96, 228, 69, 161, 232, 184, 178, 198, 155};
        dreamRecallName = [self StringFromSessionConsequentData:value];
    }
    return dreamRecallName;
}

//: nim_test_msg_env
+ (NSString *)noti_theologyValue {
    /* static */ NSString *noti_theologyValue = nil;
    if (!noti_theologyValue) {
        Byte value[] = {16, 16, 6, 50, 184, 219, 126, 121, 125, 111, 132, 117, 131, 132, 111, 125, 131, 119, 111, 117, 126, 134, 121};
        noti_theologyValue = [self StringFromSessionConsequentData:value];
    }
    return noti_theologyValue;
}

//: value
+ (NSString *)k_arrestValue {
    /* static */ NSString *k_arrestValue = nil;
    if (!k_arrestValue) {
        Byte value[] = {5, 74, 12, 181, 3, 4, 95, 26, 63, 230, 100, 19, 192, 171, 182, 191, 175, 224};
        k_arrestValue = [self StringFromSessionConsequentData:value];
    }
    return k_arrestValue;
}

//: init_manager_nim_status_bar_image_message
+ (NSString *)k_countryData {
    /* static */ NSString *k_countryData = nil;
    if (!k_countryData) {
        Byte value[] = {41, 75, 11, 175, 249, 204, 255, 63, 243, 120, 149, 180, 185, 180, 191, 170, 184, 172, 185, 172, 178, 176, 189, 170, 185, 180, 184, 170, 190, 191, 172, 191, 192, 190, 170, 173, 172, 189, 170, 180, 184, 172, 178, 176, 170, 184, 176, 190, 190, 172, 178, 176, 95};
        k_countryData = [self StringFromSessionConsequentData:value];
    }
    return k_countryData;
}

//: 发来了一段视频
+ (NSString *)show_chairmanTitle {
    /* static */ NSString *show_chairmanTitle = nil;
    if (!show_chairmanTitle) {
        Byte value[] = {21, 26, 4, 248, 255, 169, 171, 0, 183, 191, 254, 212, 160, 254, 210, 154, 0, 200, 207, 2, 193, 160, 3, 188, 171, 109};
        show_chairmanTitle = [self StringFromSessionConsequentData:value];
    }
    return show_chairmanTitle;
}

//: 你收到了一条快捷评论
+ (NSString *)user_keepName {
    /* static */ NSString *user_keepName = nil;
    if (!user_keepName) {
        Byte value[] = {30, 55, 12, 138, 207, 185, 32, 38, 139, 175, 248, 159, 27, 244, 215, 29, 203, 237, 28, 191, 231, 27, 241, 189, 27, 239, 183, 29, 212, 216, 28, 246, 226, 29, 196, 238, 31, 230, 187, 31, 229, 241, 208};
        user_keepName = [self StringFromSessionConsequentData:value];
    }
    return user_keepName;
}

//: 发来了一段语音
+ (NSString *)kGazeName {
    /* static */ NSString *kGazeName = nil;
    if (!kGazeName) {
        Byte value[] = {21, 73, 3, 46, 216, 218, 47, 230, 238, 45, 3, 207, 45, 1, 201, 47, 247, 254, 49, 248, 246, 50, 232, 252, 202};
        kGazeName = [self StringFromSessionConsequentData:value];
    }
    return kGazeName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageMaker.m
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageMaker.h"
#import "EnterName.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "FFFInputAtCache.h"
#import "AdministratorCache.h"

//: NSString * generateUUID(void) {
NSString * generateUUID(void) {
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
@implementation EnterName

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)child:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self search:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)name:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = [SessionConsequentData kGazeName].titleBy;
    //: [self setupMessage:message];
    [self search:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)show:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = generateUUID();
    videoObject.displayName = generateUUID();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = @"发来了一段视频".nim_localized;
    message.apnsContent = [SessionConsequentData show_chairmanTitle].titleBy;
    //: [self setupMessage:message];
    [self search:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)greenish:(UIImage*)image
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
    return [EnterName underTime:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)reply:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [EnterName underTime:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)birdSEyeView:(NSData *)data min:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [FFFMessageMaker generateImageMessage:imageObject];
    return [EnterName underTime:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)underTime:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = generateUUID();
    imageObject.displayName = generateUUID();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [FFFLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [InputRed preserve:[SessionConsequentData k_countryData]];
    //: [self setupMessage:message];
    [self search:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)search:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        [SessionConsequentData mainFoodMessageOldData]: message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:[SessionConsequentData noti_theologyValue]];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation GeneratorMaker

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)openExt:(int64_t)type
                             //: content:(NSString *)content
                             index:(NSString *)content
                                 //: ext:(NSString *)ext
                                 speedyTing:(NSString *)ext
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
    setting.pushTitle = [SessionConsequentData user_keepName];
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        [SessionConsequentData dreamRecallName] : [SessionConsequentData k_arrestValue]
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