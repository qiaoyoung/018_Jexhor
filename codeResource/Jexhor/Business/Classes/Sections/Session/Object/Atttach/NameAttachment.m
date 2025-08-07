
#import <Foundation/Foundation.h>

typedef struct {
    Byte choice;
    Byte *wipeStatus;
    unsigned int term;
} StructVoiceData;

@interface VoiceData : NSObject

@end

@implementation VoiceData

+ (Byte *)VoiceDataToByte:(StructVoiceData *)data {
    for (int i = 0; i < data->term; i++) {
        data->wipeStatus[i] ^= data->choice;
    }
    data->wipeStatus[data->term] = 0;
    return data->wipeStatus;
}

+ (NSString *)StringFromVoiceData:(StructVoiceData *)data {
    return [NSString stringWithUTF8String:(char *)[self VoiceDataToByte:data]];
}

//: session_snapchat_other_unread
+ (NSString *)app_vacuumCellName {
    /* static */ NSString *app_vacuumCellName = nil;
    if (!app_vacuumCellName) {
        StructVoiceData value = (StructVoiceData){43, (Byte []){88, 78, 88, 88, 66, 68, 69, 116, 88, 69, 74, 91, 72, 67, 74, 95, 116, 68, 95, 67, 78, 89, 116, 94, 69, 89, 78, 74, 79, 85}, 29};
        app_vacuumCellName = [self StringFromVoiceData:&value];
    }
    return app_vacuumCellName;
}

//: fired
+ (NSString *)dream_laverText {
    /* static */ NSString *dream_laverText = nil;
    if (!dream_laverText) {
        StructVoiceData value = (StructVoiceData){184, (Byte []){222, 209, 202, 221, 220, 108}, 5};
        dream_laverText = [self StringFromVoiceData:&value];
    }
    return dream_laverText;
}

//: url
+ (NSString *)show_stressData {
    /* static */ NSString *show_stressData = nil;
    if (!show_stressData) {
        StructVoiceData value = (StructVoiceData){130, (Byte []){247, 240, 238, 212}, 3};
        show_stressData = [self StringFromVoiceData:&value];
    }
    return show_stressData;
}

//: md5
+ (NSString *)notiShowName {
    /* static */ NSString *notiShowName = nil;
    if (!notiShowName) {
        StructVoiceData value = (StructVoiceData){233, (Byte []){132, 141, 220, 238}, 3};
        notiShowName = [self StringFromVoiceData:&value];
    }
    return notiShowName;
}

//: session_snapchat_self_readed
+ (NSString *)m_distinctionName {
    /* static */ NSString *m_distinctionName = nil;
    if (!m_distinctionName) {
        StructVoiceData value = (StructVoiceData){95, (Byte []){44, 58, 44, 44, 54, 48, 49, 0, 44, 49, 62, 47, 60, 55, 62, 43, 0, 44, 58, 51, 57, 0, 45, 58, 62, 59, 58, 59, 156}, 28};
        m_distinctionName = [self StringFromVoiceData:&value];
    }
    return m_distinctionName;
}

//: type
+ (NSString *)notiCustodyIdent {
    /* static */ NSString *notiCustodyIdent = nil;
    if (!notiCustodyIdent) {
        StructVoiceData value = (StructVoiceData){201, (Byte []){189, 176, 185, 172, 83}, 4};
        notiCustodyIdent = [self StringFromVoiceData:&value];
    }
    return notiCustodyIdent;
}

//: session_snapchat_other_readed
+ (NSString *)show_provedStr {
    /* static */ NSString *show_provedStr = nil;
    if (!show_provedStr) {
        StructVoiceData value = (StructVoiceData){219, (Byte []){168, 190, 168, 168, 178, 180, 181, 132, 168, 181, 186, 171, 184, 179, 186, 175, 132, 180, 175, 179, 190, 169, 132, 169, 190, 186, 191, 190, 191, 198}, 29};
        show_provedStr = [self StringFromVoiceData:&value];
    }
    return show_provedStr;
}

//: jpg
+ (NSString *)k_downMsg {
    /* static */ NSString *k_downMsg = nil;
    if (!k_downMsg) {
        StructVoiceData value = (StructVoiceData){127, (Byte []){21, 15, 24, 80}, 3};
        k_downMsg = [self StringFromVoiceData:&value];
    }
    return k_downMsg;
}

//: HEIC
+ (NSString *)k_frankId {
    /* static */ NSString *k_frankId = nil;
    if (!k_frankId) {
        StructVoiceData value = (StructVoiceData){22, (Byte []){94, 83, 95, 85, 58}, 4};
        k_frankId = [self StringFromVoiceData:&value];
    }
    return k_frankId;
}

//: data
+ (NSString *)mainColorViewTemperatureMsg {
    /* static */ NSString *mainColorViewTemperatureMsg = nil;
    if (!mainColorViewTemperatureMsg) {
        StructVoiceData value = (StructVoiceData){128, (Byte []){228, 225, 244, 225, 189}, 4};
        mainColorViewTemperatureMsg = [self StringFromVoiceData:&value];
    }
    return mainColorViewTemperatureMsg;
}

//: session_snapchat_self_unread
+ (NSString *)showSkyPath {
    /* static */ NSString *showSkyPath = nil;
    if (!showSkyPath) {
        StructVoiceData value = (StructVoiceData){161, (Byte []){210, 196, 210, 210, 200, 206, 207, 254, 210, 207, 192, 209, 194, 201, 192, 213, 254, 210, 196, 205, 199, 254, 212, 207, 211, 196, 192, 197, 12}, 28};
        showSkyPath = [self StringFromVoiceData:&value];
    }
    return showSkyPath;
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
#import "NameAttachment.h"
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"
//: #import "NSData+NTES.h"
#import "NSData+SearchedTeam.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"

//: @interface NTESSnapchatAttachment()
@interface NameAttachment()

//: @property (nonatomic,assign) BOOL isFromMe;
@property (nonatomic,assign) BOOL isFromMe;

//: @end
@end

//: @implementation NTESSnapchatAttachment
@implementation NameAttachment

//: - (void)setImage:(UIImage *)image
- (void)setWith:(UIImage *)image
{
    //: NSData *data = UIImageJPEGRepresentation(image, 0.3);
    NSData *data = UIImageJPEGRepresentation(image, 0.3);
    //: NSString *md5= [data MD5String];
    NSString *md5= [data slab];
    //: self.md5 = md5;
    self.md5 = md5;

    //: [data writeToFile:[self filepath]
    [data writeToFile:[self beyondMessage]
           //: atomically:YES];
           atomically:YES];
}

//: - (void)setImageFilePath:(NSString *)path
- (void)setPin:(NSString *)path
{
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]){
        //: NSData *jpgData = nil;
        NSData *jpgData = nil;
        //: if ([path.pathExtension.uppercaseString isEqualToString:@"HEIC"]) {
        if ([path.pathExtension.uppercaseString isEqualToString:[VoiceData k_frankId]]) {
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
        self.md5 = [jpgData slab];

        //: [jpgData writeToFile:[self filepath]
        [jpgData writeToFile:[self beyondMessage]
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
        [self bottomHidden];
    }
}


//: - (NSString *)filepath
- (NSString *)beyondMessage
{
    //: NSString *filename = [_md5 stringByAppendingFormat:@".%@",(@"jpg")];
    NSString *filename = [_md5 stringByAppendingFormat:@".%@",([VoiceData k_downMsg])];
    //: return [NTESFileLocationHelper filepathForImage:filename];
    return [BarVideo image:filename];
}


//: - (NSString *)cellContent:(NIMMessage *)message{
- (NSString *)chemicalElementName:(NIMMessage *)message{
    //: self.isFromMe = message.isOutgoingMsg;
    self.isFromMe = message.isOutgoingMsg;
    //: return @"NTESSessionSnapchatContentView";
    return @"CellContentView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)cell:(NIMMessage *)message threadInWidth:(CGFloat)width{
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
- (UIEdgeInsets)visualPercept:(NIMMessage *)message
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
        [self bottomHidden];
    }
}

//: - (BOOL)canBeForwarded
- (BOOL)pageContent
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)section
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
    [dict setObject:@(CustomMessageTypeSnapchat) forKey:[VoiceData notiCustodyIdent]];
    //: [data setObject:_md5?_md5:@"" forKey:@"md5"];
    [data setObject:_md5?_md5:@"" forKey:[VoiceData notiShowName]];
    //: [data setObject:@(_isFired) forKey:@"fired"];
    [data setObject:@(_isFired) forKey:[VoiceData dream_laverText]];
    //: if ([_url length])
    if ([_url length])
    {
        //: [data setObject:_url forKey:@"url"];
        [data setObject:_url forKey:[VoiceData show_stressData]];
    }
    //: [dict setObject:data forKey:@"data"];
    [dict setObject:data forKey:[VoiceData mainColorViewTemperatureMsg]];

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
    return [self beyondMessage];
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
- (void)bottomHidden{
    //: UIImage *image;
    UIImage *image;
    //: if (!self.isFromMe) {
    if (!self.isFromMe) {
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_other_readed"];
            image = [UIImage imageNamed:[VoiceData show_provedStr]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_other_unread"];
            image = [UIImage imageNamed:[VoiceData app_vacuumCellName]];
        }
    //: }else{
    }else{
        //: if (self.isFired) {
        if (self.isFired) {
            //: image = [UIImage imageNamed:@"session_snapchat_self_readed"];
            image = [UIImage imageNamed:[VoiceData m_distinctionName]];
        //: }else{
        }else{
            //: image = [UIImage imageNamed:@"session_snapchat_self_unread"];
            image = [UIImage imageNamed:[VoiceData showSkyPath]];
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
        [self bottomHidden];
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