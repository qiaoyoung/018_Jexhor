
#import <Foundation/Foundation.h>

typedef struct {
    Byte visualCommunication;
    Byte *buttTeam;
    unsigned int doingShowBlue;
	int generally;
} StructBlueLeaveData;

@interface BlueLeaveData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation BlueLeaveData

+ (instancetype)sharedInstance {
    static BlueLeaveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BlueLeaveDataToByte:(StructBlueLeaveData *)data {
    for (int i = 0; i < data->doingShowBlue; i++) {
        data->buttTeam[i] ^= data->visualCommunication;
    }
    data->buttTeam[data->doingShowBlue] = 0;
	if (data->doingShowBlue >= 1) {
		data->generally = data->buttTeam[0];
	}
    return data->buttTeam;
}

- (NSString *)StringFromBlueLeaveData:(StructBlueLeaveData *)data {
    return [NSString stringWithUTF8String:(char *)[self BlueLeaveDataToByte:data]];
}

//: encrypted
- (NSString *)userEmotionWarValue {
    /* static */ NSString *userEmotionWarValue = nil;
    if (!userEmotionWarValue) {
        StructBlueLeaveData value = (StructBlueLeaveData){155, (Byte []){254, 245, 248, 233, 226, 235, 239, 254, 255, 17}, 9, 83};
        userEmotionWarValue = [self StringFromBlueLeaveData:&value];
    }
    return userEmotionWarValue;
}

//: messageAbstract
- (NSString *)show_belowFormat {
    /* static */ NSString *show_belowFormat = nil;
    if (!show_belowFormat) {
        StructBlueLeaveData value = (StructBlueLeaveData){177, (Byte []){220, 212, 194, 194, 208, 214, 212, 240, 211, 194, 197, 195, 208, 210, 197, 1}, 15, 234};
        show_belowFormat = [self StringFromBlueLeaveData:&value];
    }
    return show_belowFormat;
}

//: type
- (NSString *)app_nameTeamTitle {
    /* static */ NSString *app_nameTeamTitle = nil;
    if (!app_nameTeamTitle) {
        StructBlueLeaveData value = (StructBlueLeaveData){228, (Byte []){144, 157, 148, 129, 178}, 4, 199};
        app_nameTeamTitle = [self StringFromBlueLeaveData:&value];
    }
    return app_nameTeamTitle;
}

//: message
- (NSString *)userAmUrl {
    /* static */ NSString *userAmUrl = nil;
    if (!userAmUrl) {
        StructBlueLeaveData value = (StructBlueLeaveData){161, (Byte []){204, 196, 210, 210, 192, 198, 196, 210}, 7, 17};
        userAmUrl = [self StringFromBlueLeaveData:&value];
    }
    return userAmUrl;
}

//: compressed
- (NSString *)show_withValue {
    /* static */ NSString *show_withValue = nil;
    if (!show_withValue) {
        StructBlueLeaveData value = (StructBlueLeaveData){234, (Byte []){137, 133, 135, 154, 152, 143, 153, 153, 143, 142, 15}, 10, 128};
        show_withValue = [self StringFromBlueLeaveData:&value];
    }
    return show_withValue;
}

//: password
- (NSString *)show_penaltyName {
    /* static */ NSString *show_penaltyName = nil;
    if (!show_penaltyName) {
        StructBlueLeaveData value = (StructBlueLeaveData){208, (Byte []){160, 177, 163, 163, 167, 191, 162, 180, 40}, 8, 26};
        show_penaltyName = [self StringFromBlueLeaveData:&value];
    }
    return show_penaltyName;
}

//: data
- (NSString *)noti_requirementKey {
    /* static */ NSString *noti_requirementKey = nil;
    if (!noti_requirementKey) {
        StructBlueLeaveData value = (StructBlueLeaveData){127, (Byte []){27, 30, 11, 30, 148}, 4, 88};
        noti_requirementKey = [self StringFromBlueLeaveData:&value];
    }
    return noti_requirementKey;
}

//: sessionName
- (NSString *)mainAbortKey {
    /* static */ NSString *mainAbortKey = nil;
    if (!mainAbortKey) {
        StructBlueLeaveData value = (StructBlueLeaveData){219, (Byte []){168, 190, 168, 168, 178, 180, 181, 149, 186, 182, 190, 147}, 11, 167};
        mainAbortKey = [self StringFromBlueLeaveData:&value];
    }
    return mainAbortKey;
}

//: sessionId
- (NSString *)dreamDelicateValue {
    /* static */ NSString *dreamDelicateValue = nil;
    if (!dreamDelicateValue) {
        StructBlueLeaveData value = (StructBlueLeaveData){115, (Byte []){0, 22, 0, 0, 26, 28, 29, 58, 23, 33}, 9, 165};
        dreamDelicateValue = [self StringFromBlueLeaveData:&value];
    }
    return dreamDelicateValue;
}

//: url
- (NSString *)m_influentialMessage {
    /* static */ NSString *m_influentialMessage = nil;
    if (!m_influentialMessage) {
        StructBlueLeaveData value = (StructBlueLeaveData){11, (Byte []){126, 121, 103, 33}, 3, 236};
        m_influentialMessage = [self StringFromBlueLeaveData:&value];
    }
    return m_influentialMessage;
}

//: 聊天记录
- (NSString *)mBelowPath {
    /* static */ NSString *mBelowPath = nil;
    if (!mBelowPath) {
        StructBlueLeaveData value = (StructBlueLeaveData){206, (Byte []){38, 79, 68, 43, 106, 103, 38, 96, 126, 43, 115, 91, 74}, 12, 173};
        mBelowPath = [self StringFromBlueLeaveData:&value];
    }
    return mBelowPath;
}

//: sender
- (NSString *)noti_participateName {
    /* static */ NSString *noti_participateName = nil;
    if (!noti_participateName) {
        StructBlueLeaveData value = (StructBlueLeaveData){225, (Byte []){146, 132, 143, 133, 132, 147, 169}, 6, 152};
        noti_participateName = [self StringFromBlueLeaveData:&value];
    }
    return noti_participateName;
}

//: fileName
- (NSString *)mainTextKey {
    /* static */ NSString *mainTextKey = nil;
    if (!mainTextKey) {
        StructBlueLeaveData value = (StructBlueLeaveData){248, (Byte []){158, 145, 148, 157, 182, 153, 149, 157, 249}, 8, 79};
        mainTextKey = [self StringFromBlueLeaveData:&value];
    }
    return mainTextKey;
}

//: null
- (NSString *)show_withId {
    /* static */ NSString *show_withId = nil;
    if (!show_withId) {
        StructBlueLeaveData value = (StructBlueLeaveData){129, (Byte []){239, 244, 237, 237, 214}, 4, 22};
        show_withId = [self StringFromBlueLeaveData:&value];
    }
    return show_withId;
}

//: md5
- (NSString *)notiUserIdent {
    /* static */ NSString *notiUserIdent = nil;
    if (!notiUserIdent) {
        StructBlueLeaveData value = (StructBlueLeaveData){225, (Byte []){140, 133, 212, 85}, 3, 153};
        notiUserIdent = [self StringFromBlueLeaveData:&value];
    }
    return notiUserIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AttachmentOn.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMultiRetweetAttachment.h"
#import "AttachmentOn.h"
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"
//: #import "FFFKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Bar.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "InsertView+Secret.h"
//: #import "NTESMessageUtil.h"
#import "PushData.h"
//: #import "FFFInputEmoticonParser.h"
#import "CrewParser.h"

//: @interface NTESMultiRetweetAttachment ()
@interface AttachmentOn ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) InsertView *label;

//: @end
@end

//: @implementation NTESMultiRetweetAttachment
@implementation AttachmentOn

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[[[BlueLeaveData sharedInstance] m_influentialMessage]] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[[[BlueLeaveData sharedInstance] notiUserIdent]] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[[[BlueLeaveData sharedInstance] mainTextKey]] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[[[BlueLeaveData sharedInstance] show_withValue]] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[[[BlueLeaveData sharedInstance] userEmotionWarValue]] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[[[BlueLeaveData sharedInstance] show_penaltyName]] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[[[BlueLeaveData sharedInstance] show_belowFormat]] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[[[BlueLeaveData sharedInstance] mainAbortKey]] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[[[BlueLeaveData sharedInstance] dreamDelicateValue]] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{[[BlueLeaveData sharedInstance] app_nameTeamTitle] : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           [[BlueLeaveData sharedInstance] noti_requirementKey] : dataDic};
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
- (void)setAbstracts:(NSMutableArray<MessageAdd *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (NTESMessageAbstract *obj in abstracts) {
    for (MessageAdd *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj find];
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
                MessageAdd *abstract = [MessageAdd disable:obj];
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
- (NSString *)formatShow {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".ntes_localized];
            [[BlueLeaveData sharedInstance] mBelowPath].ting];
}

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract {
- (NSString *)ocularFeature:(MessageAdd *)abstract {
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
- (NSString *)chemicalElementName:(NIMMessage *)message {
    //: return @"NTESSessionMultiRetweetContentView";
    return @"BubbleNameView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)cell:(NIMMessage *)message threadInWidth:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self formatShow];
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
    CGSize subTitleSize = [[[BlueLeaveData sharedInstance] mBelowPath].ting boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (NTESMessageAbstract *abs in _abstracts) {
    for (MessageAdd *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label viewTap:[self ocularFeature:abs]];
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
- (UIEdgeInsets)visualPercept:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (BOOL)canBeRevoked {
- (BOOL)section {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)pageContent {
    //: return YES;
    return YES;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [NTESFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [BarVideo container:self.fileName] : nil;
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
- (InsertView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[InsertView alloc] initWithFrame:CGRectZero];
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
#pragma mark - MessageAdd


//: @implementation NTESMessageAbstract
@implementation MessageAdd

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)find {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[[[BlueLeaveData sharedInstance] noti_participateName]] = _sender;
        //: dic[@"message"] = _message;
        dic[[[BlueLeaveData sharedInstance] userAmUrl]] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)abstract:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    MessageAdd *ret = [[MessageAdd alloc] init];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: FFFKitInfo *info = [[MyUserKit sharedKit].provider infoByUser:message.from option:option];
    DataTeam *info = [[Secret highlight].provider infoAndStraddleOption:message.from item:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: [[BlueLeaveData sharedInstance] show_withId];
    //: ret.message = [ret abstract:message];
    ret.message = [ret nearPin:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)disable:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    MessageAdd *ret = [[MessageAdd alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content image:[[BlueLeaveData sharedInstance] noti_participateName]];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content image:[[BlueLeaveData sharedInstance] userAmUrl]];
    //: return ret;
    return ret;
}

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)nearPin:(NIMMessage *)message {
    //: NSString *msg = [NTESMessageUtil messageContent:message];
    NSString *msg = [PushData aggregationName:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[FFFInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[CrewParser will] event:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (ModelBubble *token in tokens) { //防止emoji表情被截断
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