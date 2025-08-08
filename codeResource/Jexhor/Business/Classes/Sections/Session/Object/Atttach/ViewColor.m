
#import <Foundation/Foundation.h>

@interface AccountingData : NSObject

@end

@implementation AccountingData

+ (Byte *)AccountingDataToCache:(Byte *)data {
    int quick = data[0];
    Byte colorWith = data[1];
    int drug = data[2];
    for (int i = drug; i < drug + quick; i++) {
        int value = data[i] + colorWith;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[drug + quick] = 0;
    return data + drug;
}

+ (NSString *)StringFromAccountingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AccountingDataToCache:data]];
}

//: sessionId
+ (NSString *)mainAtName {
    /* static */ NSString *mainAtName = nil;
    if (!mainAtName) {
        Byte value[] = {9, 95, 3, 20, 6, 20, 20, 10, 16, 15, 234, 5, 164};
        mainAtName = [self StringFromAccountingData:value];
    }
    return mainAtName;
}

//: md5
+ (NSString *)app_planetText {
    /* static */ NSString *app_planetText = nil;
    if (!app_planetText) {
        Byte value[] = {3, 47, 6, 32, 250, 224, 62, 53, 6, 56};
        app_planetText = [self StringFromAccountingData:value];
    }
    return app_planetText;
}

//: messageAbstract
+ (NSString *)dream_pursuitValue {
    /* static */ NSString *dream_pursuitValue = nil;
    if (!dream_pursuitValue) {
        Byte value[] = {15, 61, 11, 56, 3, 90, 50, 61, 212, 249, 16, 48, 40, 54, 54, 36, 42, 40, 4, 37, 54, 55, 53, 36, 38, 55, 191};
        dream_pursuitValue = [self StringFromAccountingData:value];
    }
    return dream_pursuitValue;
}

//: url
+ (NSString *)showCrowdedName {
    /* static */ NSString *showCrowdedName = nil;
    if (!showCrowdedName) {
        Byte value[] = {3, 6, 9, 221, 55, 243, 243, 1, 150, 111, 108, 102, 7};
        showCrowdedName = [self StringFromAccountingData:value];
    }
    return showCrowdedName;
}

//: sessionName
+ (NSString *)app_weekValue {
    /* static */ NSString *app_weekValue = nil;
    if (!app_weekValue) {
        Byte value[] = {11, 15, 3, 100, 86, 100, 100, 90, 96, 95, 63, 82, 94, 86, 34};
        app_weekValue = [self StringFromAccountingData:value];
    }
    return app_weekValue;
}

//: type
+ (NSString *)kShouldAgainstAccelerateValue {
    /* static */ NSString *kShouldAgainstAccelerateValue = nil;
    if (!kShouldAgainstAccelerateValue) {
        Byte value[] = {4, 27, 13, 62, 179, 150, 171, 13, 3, 113, 52, 13, 254, 89, 94, 85, 74, 213};
        kShouldAgainstAccelerateValue = [self StringFromAccountingData:value];
    }
    return kShouldAgainstAccelerateValue;
}

//: message
+ (NSString *)notiAcceptableContent {
    /* static */ NSString *notiAcceptableContent = nil;
    if (!notiAcceptableContent) {
        Byte value[] = {7, 93, 3, 16, 8, 22, 22, 4, 10, 8, 38};
        notiAcceptableContent = [self StringFromAccountingData:value];
    }
    return notiAcceptableContent;
}

//: null
+ (NSString *)m_countData {
    /* static */ NSString *m_countData = nil;
    if (!m_countData) {
        Byte value[] = {4, 65, 8, 183, 20, 100, 101, 172, 45, 52, 43, 43, 216};
        m_countData = [self StringFromAccountingData:value];
    }
    return m_countData;
}

//: encrypted
+ (NSString *)appButtonName {
    /* static */ NSString *appButtonName = nil;
    if (!appButtonName) {
        Byte value[] = {9, 7, 13, 178, 33, 189, 250, 218, 153, 54, 125, 254, 240, 94, 103, 92, 107, 114, 105, 109, 94, 93, 107};
        appButtonName = [self StringFromAccountingData:value];
    }
    return appButtonName;
}

//: sender
+ (NSString *)app_suspectValue {
    /* static */ NSString *app_suspectValue = nil;
    if (!app_suspectValue) {
        Byte value[] = {6, 94, 11, 29, 94, 141, 232, 151, 123, 215, 16, 21, 7, 16, 6, 7, 20, 25};
        app_suspectValue = [self StringFromAccountingData:value];
    }
    return app_suspectValue;
}

//: fileName
+ (NSString *)appSendTitle {
    /* static */ NSString *appSendTitle = nil;
    if (!appSendTitle) {
        Byte value[] = {8, 31, 11, 123, 106, 12, 26, 119, 54, 244, 200, 71, 74, 77, 70, 47, 66, 78, 70, 187};
        appSendTitle = [self StringFromAccountingData:value];
    }
    return appSendTitle;
}

//: compressed
+ (NSString *)userChangeJournalistTitle {
    /* static */ NSString *userChangeJournalistTitle = nil;
    if (!userChangeJournalistTitle) {
        Byte value[] = {10, 53, 13, 233, 183, 8, 58, 3, 84, 28, 59, 242, 134, 46, 58, 56, 59, 61, 48, 62, 62, 48, 47, 55};
        userChangeJournalistTitle = [self StringFromAccountingData:value];
    }
    return userChangeJournalistTitle;
}

//: data
+ (NSString *)main_needViseViewValue {
    /* static */ NSString *main_needViseViewValue = nil;
    if (!main_needViseViewValue) {
        Byte value[] = {4, 62, 3, 38, 35, 54, 35, 36};
        main_needViseViewValue = [self StringFromAccountingData:value];
    }
    return main_needViseViewValue;
}

//: password
+ (NSString *)mainTableTitle {
    /* static */ NSString *mainTableTitle = nil;
    if (!mainTableTitle) {
        Byte value[] = {8, 52, 9, 42, 174, 221, 242, 170, 178, 60, 45, 63, 63, 67, 59, 62, 48, 82};
        mainTableTitle = [self StringFromAccountingData:value];
    }
    return mainTableTitle;
}

//: 聊天记录
+ (NSString *)user_crowdedTitle {
    /* static */ NSString *user_crowdedTitle = nil;
    if (!user_crowdedTitle) {
        Byte value[] = {12, 81, 9, 186, 36, 91, 234, 171, 245, 151, 48, 57, 148, 83, 88, 151, 93, 95, 148, 108, 68, 205};
        user_crowdedTitle = [self StringFromAccountingData:value];
    }
    return user_crowdedTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewColor.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMultiRetweetAttachment.h"
#import "ViewColor.h"
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"
//: #import "WorkKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+SubjectMatterJson.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "VideoTextView+MessageContent.h"
//: #import "NTESMessageUtil.h"
#import "ShowTitleButton.h"
//: #import "WorkInputEmoticonParser.h"
#import "SignParser.h"

//: @interface NTESMultiRetweetAttachment ()
@interface ViewColor ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) VideoTextView *label;

//: @end
@end

//: @implementation NTESMultiRetweetAttachment
@implementation ViewColor

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[[AccountingData showCrowdedName]] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[[AccountingData app_planetText]] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[[AccountingData appSendTitle]] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[[AccountingData userChangeJournalistTitle]] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[[AccountingData appButtonName]] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[[AccountingData mainTableTitle]] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[[AccountingData dream_pursuitValue]] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[[AccountingData app_weekValue]] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[[AccountingData mainAtName]] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{[AccountingData kShouldAgainstAccelerateValue] : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           [AccountingData main_needViseViewValue] : dataDic};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }


    //: return content;
    return content;
}

//: - (void)setAbstracts:(NSMutableArray<NTESMessageAbstract *> *)abstracts {
- (void)setAbstracts:(NSMutableArray<TeamAbstract *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (NTESMessageAbstract *obj in abstracts) {
    for (TeamAbstract *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj select];
        //: if (objDic) {
        if (objDic) {
            //: [abstractDics addObject:objDic];
            [abstractDics addObject:objDic];
        }
    }
    //: _messageAbstract = abstractDics;
    _messageAbstract = abstractDics;
}

//: - (void)setMessageAbstract:(NSArray *)messageAbstract {
- (void)setMessageAbstract:(NSArray *)messageAbstract {
    //: _messageAbstract = messageAbstract;
    _messageAbstract = messageAbstract;
    //: if (!messageAbstract) {
    if (!messageAbstract) {
        //: _abstracts = nil;
        _abstracts = nil;
    //: } else {
    } else {
        //: _abstracts = [NSMutableArray array];
        _abstracts = [NSMutableArray array];
        //: for (id obj in messageAbstract) {
        for (id obj in messageAbstract) {
            //: if ([obj isKindOfClass:[NSDictionary class]]) {
            if ([obj isKindOfClass:[NSDictionary class]]) {
                //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithDictionary:obj];
                TeamAbstract *abstract = [TeamAbstract center:obj];
                //: if (abstract) {
                if (abstract) {
                    //: [_abstracts addObject:abstract];
                    [_abstracts addObject:abstract];
                }
            }
        }
    }
}

//: - (NSString *)formatTitleMessage {
- (NSString *)alongMessage {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".ntes_localized];
            [AccountingData user_crowdedTitle].shouldLocalized];
}

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract {
- (NSString *)end:(TeamAbstract *)abstract {
    //: return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
    return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
}

//: #pragma mark - 上传接口
#pragma mark - 上传接口
//: - (BOOL)attachmentNeedsUpload {
- (BOOL)attachmentNeedsUpload {
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading {
- (NSString *)attachmentPathForUploading {
    //: return self.filePath;
    return self.filePath;
}

//: - (void)updateAttachmentURL:(NSString *)urlString {
- (void)updateAttachmentURL:(NSString *)urlString {
    //: self.url = urlString;
    self.url = urlString;
}

//: #pragma mark - 下载相关接口
#pragma mark - 下载相关接口
//: - (BOOL)attachmentNeedsDownload {
- (BOOL)attachmentNeedsDownload {
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
    BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
                      //: && !isDir);
                      && !isDir);
    //: return !fileExist;
    return !fileExist;
}

//: - (NSString *)attachmentURLStringForDownloading {
- (NSString *)attachmentURLStringForDownloading {
    //: return _url;
    return _url;
}

//: - (NSString *)attachmentPathForDownloading {
- (NSString *)attachmentPathForDownloading {
    //: return self.filePath;
    return self.filePath;
}

//: #pragma mark - cell相关
#pragma mark - cell相关
//: - (NSString *)cellContent:(NIMMessage *)message {
- (NSString *)provider:(NIMMessage *)message {
    //: return @"NTESSessionMultiRetweetContentView";
    return @"RetweetMessageView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)colorSearched:(NIMMessage *)message selectWidth:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self alongMessage];
    //: NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    //: CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    //: NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    //: CGSize titleSize = [titleString boundingRectWithSize:bounding
    CGSize titleSize = [titleString boundingRectWithSize:bounding
                                                 //: options:options
                                                 options:options
                                              //: attributes:attribute
                                              attributes:attribute
                                                 //: context:nil].size;
                                                 context:nil].size;

    //: attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    //: CGSize subTitleSize = [@"聊天记录".ntes_localized boundingRectWithSize:bounding
    CGSize subTitleSize = [[AccountingData user_crowdedTitle].shouldLocalized boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (NTESMessageAbstract *abs in _abstracts) {
    for (TeamAbstract *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label infoCookie:[self end:abs]];
        //: CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: abstractHeight += (size.height + padding);
        abstractHeight += (size.height + padding);
    }

    //: CGFloat height = titleSize.height +
    CGFloat height = titleSize.height +
                    //: abstractHeight + 1.0 +
                    abstractHeight + 1.0 +
                    //: padding + subTitleSize.height;
                    padding + subTitleSize.height;

    //: return CGSizeMake(msgBubbleMaxWidth, height);
    return CGSizeMake(msgBubbleMaxWidth, height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)key:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (BOOL)canBeRevoked {
- (BOOL)bearOn {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)session {
    //: return YES;
    return YES;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [NTESFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [LineHelper inputIconFile:self.fileName] : nil;
    //: return filePath;
    return filePath;
}

//: - (NSString *)fileName
- (NSString *)fileName
{
    //: if (!_fileName) {
    if (!_fileName) {
        //: _fileName = self.url.lastPathComponent;
        _fileName = self.url.lastPathComponent;
    }
    //: return _fileName;
    return _fileName;
}

//: - (M80AttributedLabel *)label {
- (VideoTextView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[VideoTextView alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor lightGrayColor];
        _label.textColor = [UIColor lightGrayColor];
        //: _label.font = [UIFont systemFontOfSize:11];
        _label.font = [UIFont systemFontOfSize:11];
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
    }
    //: return _label;
    return _label;
}

//: @end
@end

//: #pragma mark - NTESMessageAbstract
#pragma mark - TeamAbstract


//: @implementation NTESMessageAbstract
@implementation TeamAbstract

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)select {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[[AccountingData app_suspectValue]] = _sender;
        //: dic[@"message"] = _message;
        dic[[AccountingData notiAcceptableContent]] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)text:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    TeamAbstract *ret = [[TeamAbstract alloc] init];
    //: WorkKitInfoFetchOption *option = [[WorkKitInfoFetchOption alloc] init];
    RangeOption *option = [[RangeOption alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: WorkKitInfo *info = [[MyUserKit sharedKit].provider infoByUser:message.from option:option];
    ConfirmationInfo *info = [[MessageContent secretResolution].provider recent:message.from blue:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: [AccountingData m_countData];
    //: ret.message = [ret abstract:message];
    ret.message = [ret shared:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)center:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    TeamAbstract *ret = [[TeamAbstract alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content table:[AccountingData app_suspectValue]];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content table:[AccountingData notiAcceptableContent]];
    //: return ret;
    return ret;
}

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)shared:(NIMMessage *)message {
    //: NSString *msg = [NTESMessageUtil messageContent:message];
    NSString *msg = [ShowTitleButton dataTitle:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[WorkInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[SignParser byTo] down:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (ChangeTing *token in tokens) { //防止emoji表情被截断
            //: if (ret.length > (32)) {
            if (ret.length > (32)) {
                //: break;
                break;
            }
            //: [ret appendString:token.text];
            [ret appendString:token.text];
        }
    //: } else {
    } else {
        //: [ret appendString:msg];
        [ret appendString:msg];
    }
    //: return ret;
    return ret;
}

//: @end
@end
