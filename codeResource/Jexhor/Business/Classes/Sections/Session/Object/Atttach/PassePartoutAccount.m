
#import <Foundation/Foundation.h>

@interface PlanetViewData : NSObject

@end

@implementation PlanetViewData

+ (Byte *)PlanetViewDataToCache:(Byte *)data {
    int editorialist = data[0];
    Byte ambitionHandle = data[1];
    int fast = data[2];
    for (int i = fast; i < fast + editorialist; i++) {
        int value = data[i] - ambitionHandle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[fast + editorialist] = 0;
    return data + fast;
}

+ (NSString *)StringFromPlanetViewData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PlanetViewDataToCache:data]];
}

//: HEIC
+ (NSString *)mainOmitContent {
    /* static */ NSString *mainOmitContent = nil;
    if (!mainOmitContent) {
        Byte value[] = {4, 56, 10, 208, 227, 172, 171, 160, 165, 81, 128, 125, 129, 123, 43};
        mainOmitContent = [self StringFromPlanetViewData:value];
    }
    return mainOmitContent;
}

//: url
+ (NSString *)userUniteText {
    /* static */ NSString *userUniteText = nil;
    if (!userUniteText) {
        Byte value[] = {3, 1, 7, 178, 92, 216, 25, 118, 115, 109, 160};
        userUniteText = [self StringFromPlanetViewData:value];
    }
    return userUniteText;
}

//: data
+ (NSString *)notiTagData {
    /* static */ NSString *notiTagData = nil;
    if (!notiTagData) {
        Byte value[] = {4, 63, 7, 122, 167, 120, 104, 163, 160, 179, 160, 194};
        notiTagData = [self StringFromPlanetViewData:value];
    }
    return notiTagData;
}

//: jpg
+ (NSString *)noti_viewValue {
    /* static */ NSString *noti_viewValue = nil;
    if (!noti_viewValue) {
        Byte value[] = {3, 1, 9, 184, 87, 97, 168, 59, 119, 107, 113, 104, 65};
        noti_viewValue = [self StringFromPlanetViewData:value];
    }
    return noti_viewValue;
}

//: session_snapchat_other_readed
+ (NSString *)notiScaleText {
    /* static */ NSString *notiScaleText = nil;
    if (!notiScaleText) {
        Byte value[] = {29, 49, 9, 229, 130, 8, 214, 130, 104, 164, 150, 164, 164, 154, 160, 159, 144, 164, 159, 146, 161, 148, 153, 146, 165, 144, 160, 165, 153, 150, 163, 144, 163, 150, 146, 149, 150, 149, 104};
        notiScaleText = [self StringFromPlanetViewData:value];
    }
    return notiScaleText;
}

//: session_snapchat_other_unread
+ (NSString *)noti_canTitle {
    /* static */ NSString *noti_canTitle = nil;
    if (!noti_canTitle) {
        Byte value[] = {29, 3, 11, 58, 161, 155, 167, 238, 244, 32, 232, 118, 104, 118, 118, 108, 114, 113, 98, 118, 113, 100, 115, 102, 107, 100, 119, 98, 114, 119, 107, 104, 117, 98, 120, 113, 117, 104, 100, 103, 215};
        noti_canTitle = [self StringFromPlanetViewData:value];
    }
    return noti_canTitle;
}

//: session_snapchat_self_unread
+ (NSString *)noti_drugColorBubbleData {
    /* static */ NSString *noti_drugColorBubbleData = nil;
    if (!noti_drugColorBubbleData) {
        Byte value[] = {28, 77, 8, 242, 246, 239, 157, 160, 192, 178, 192, 192, 182, 188, 187, 172, 192, 187, 174, 189, 176, 181, 174, 193, 172, 192, 178, 185, 179, 172, 194, 187, 191, 178, 174, 177, 184};
        noti_drugColorBubbleData = [self StringFromPlanetViewData:value];
    }
    return noti_drugColorBubbleData;
}

//: md5
+ (NSString *)app_drugData {
    /* static */ NSString *app_drugData = nil;
    if (!app_drugData) {
        Byte value[] = {3, 95, 11, 60, 81, 131, 66, 255, 162, 80, 197, 204, 195, 148, 142};
        app_drugData = [self StringFromPlanetViewData:value];
    }
    return app_drugData;
}

//: type
+ (NSString *)show_cousinSessionText {
    /* static */ NSString *show_cousinSessionText = nil;
    if (!show_cousinSessionText) {
        Byte value[] = {4, 4, 12, 235, 170, 160, 230, 142, 237, 174, 230, 192, 120, 125, 116, 105, 188};
        show_cousinSessionText = [self StringFromPlanetViewData:value];
    }
    return show_cousinSessionText;
}

//: session_snapchat_self_readed
+ (NSString *)m_endValue {
    /* static */ NSString *m_endValue = nil;
    if (!m_endValue) {
        Byte value[] = {28, 51, 4, 33, 166, 152, 166, 166, 156, 162, 161, 146, 166, 161, 148, 163, 150, 155, 148, 167, 146, 166, 152, 159, 153, 146, 165, 152, 148, 151, 152, 151, 225};
        m_endValue = [self StringFromPlanetViewData:value];
    }
    return m_endValue;
}

//: fired
+ (NSString *)notiInfoTargetForName {
    /* static */ NSString *notiInfoTargetForName = nil;
    if (!notiInfoTargetForName) {
        Byte value[] = {5, 7, 12, 159, 162, 43, 148, 147, 237, 10, 111, 209, 109, 112, 121, 108, 107, 12};
        notiInfoTargetForName = [self StringFromPlanetViewData:value];
    }
    return notiInfoTargetForName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SnapchatAttachment.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSnapchatAttachment.h"
#import "PassePartoutAccount.h"
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"
//: #import "NSData+NTES.h"
#import "NSData+Recent.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"

//: @interface NTESSnapchatAttachment()
@interface PassePartoutAccount()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation NTESSnapchatAttachment
@implementation PassePartoutAccount

//: - (void)setImage:(UIImage *)image
- (void)setApp:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data independent];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self circumference]
           //: atomically:YES];
           atomically:YES];
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setFull:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:[PlanetViewData mainOmitContent]]) {
            //: CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
            CIImage *ciImage = [CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:path]];
                                //: CIContext *context = [CIContext context];
                                CIContext *context = [CIContext context];
            //: jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
            jpgData = [context JPEGRepresentationOfImage:ciImage colorSpace:ciImage.colorSpace options:@{}];
        //: } else {
        } else {
            //: jpgData = [NSData dataWithContentsOfFile:path];
            jpgData = [NSData dataWithContentsOfFile:path];
        }

        //: self.md5 = [jpgData MD5String];
        self.md5 = [jpgData independent];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self circumference]
               //: atomically:YES];
               atomically:YES];
     }
}

//: - (void)setIsFired:(BOOL)isFired{
- (void)setIsFired:(BOOL)isFired{
    //: if (_isFired != isFired) {
    if (_isFired != isFired) {
        //: _isFired = isFired;
        _isFired = isFired;
        //: [self updateCover];
        [self barArea];
    }
}


//: - (NSString *)filepath
- (NSString *)circumference
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",([PlanetViewData noti_viewValue])];
    //: return [NTESFileLocationHelper filepathForImage:filename];
    return [LineHelper pinBy:filename];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)provider:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"NTESSessionSnapchatContentView";
    return @"ResearchLabView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)colorSearched:(NIMMessage *)message selectWidth:(CGFloat)width{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: CGSize size = self.showCoverImage.size;
    CGSize size = self.showCoverImage.size;
    //: CGFloat customSnapMessageImageRightToText = 5;
    CGFloat customSnapMessageImageRightToText = 5;
    //: return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
    return CGSizeMake(size.width + customSnapMessageImageRightToText, size.height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)key:(NIMMessage *)message
{
    //: CGFloat bubblePaddingForImage = 3.f;
    CGFloat bubblePaddingForImage = 3.f;
    //: CGFloat bubbleArrowWidthForImage = -4.f;
    CGFloat bubbleArrowWidthForImage = -4.f;
    //: if (message.isOutgoingMsg) {
    if (message.isOutgoingMsg) {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage);
    //: } else {
    } else {
        //: return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
        return UIEdgeInsetsMake(bubblePaddingForImage,bubblePaddingForImage + bubbleArrowWidthForImage + 4, bubblePaddingForImage,bubblePaddingForImage);
    }
}

//: - (void)setIsFromMe:(BOOL)isFromMe{
- (void)setIsFromMe:(BOOL)isFromMe{
    //: if (_isFromMe != isFromMe) {
    if (_isFromMe != isFromMe) {
        //: _isFromMe = isFromMe;
        _isFromMe = isFromMe;
        //: [self updateCover];
        [self barArea];
    }
}

//: - (BOOL)canBeForwarded
- (BOOL)session
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)bearOn
{
    //: return YES;
    return YES;
}



//: #pragma NIMCustomAttachment
#pragma NIMCustomAttachment
//: - (NSString *)encodeAttachment
- (NSString *)encodeAttachment
{
    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *data = [NSMutableDictionary dictionary];
    NSMutableDictionary *data = [NSMutableDictionary dictionary];
    //: [dict setObject:@(CustomMessageTypeSnapchat) forKey:@"type"];
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:[PlanetViewData show_cousinSessionText]];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:[PlanetViewData app_drugData]];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:[PlanetViewData notiInfoTargetForName]];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:[PlanetViewData userUniteText]];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:[PlanetViewData notiTagData]];

    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];

    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: #pragma mark - 实现文件上传需要接口
#pragma mark - 实现文件上传需要接口
//: - (BOOL)attachmentNeedsUpload
- (BOOL)attachmentNeedsUpload
{
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading
- (NSString *)attachmentPathForUploading
{
    //: return [self filepath];
    return [self circumference];
}

//: - (void)updateAttachmentURL:(NSString *)urlString
- (void)updateAttachmentURL:(NSString *)urlString
{
    //: self.url = urlString;
    self.url = urlString;
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)updateCover{
- (void)barArea{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:[PlanetViewData notiScaleText]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:[PlanetViewData noti_canTitle]];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:[PlanetViewData m_endValue]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:[PlanetViewData noti_drugColorBubbleData]];
        }
    }
    //: self.showCoverImage = image;
    self.showCoverImage = image;
}

//: - (UIImage *)showCoverImage
- (UIImage *)showCoverImage
{
    //: if (_showCoverImage == nil)
    if (_showCoverImage == nil)
    {
        //: [self updateCover];
        [self barArea];
    }
    //: return _showCoverImage;
    return _showCoverImage;
}

//: #pragma mark - https
#pragma mark - https
//: - (NSString *)url
- (NSString *)url
{
    //: return [_url length] ?
    return [_url length] ?
    //: [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
    [[[NIMSDK sharedSDK] resourceManager] normalizeURLString:_url] : nil;
}

//: @end
@end