
#import <Foundation/Foundation.h>

@interface VeryData : NSObject

@end

@implementation VeryData

+ (Byte *)VeryDataToCache:(Byte *)data {
    int abaseInnovationSample = data[0];
    Byte influentialEquity = data[1];
    int ovalImage = data[2];
    for (int i = ovalImage; i < ovalImage + abaseInnovationSample; i++) {
        int value = data[i] + influentialEquity;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[ovalImage + abaseInnovationSample] = 0;
    return data + ovalImage;
}

+ (NSString *)StringFromVeryData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VeryDataToCache:data]];
}

//: NTESMessageTranslate
+ (NSString *)kOvalFormat {
    /* static */ NSString *kOvalFormat = nil;
    if (!kOvalFormat) {
        Byte value[] = {20, 25, 9, 159, 210, 94, 205, 136, 218, 53, 59, 44, 58, 52, 76, 90, 90, 72, 78, 76, 59, 89, 72, 85, 90, 83, 72, 91, 76, 58};
        kOvalFormat = [self StringFromVeryData:value];
    }
    return kOvalFormat;
}

//: invalid item selector!
+ (NSString *)notiHolderWakeFormat {
    /* static */ NSString *notiHolderWakeFormat = nil;
    if (!notiHolderWakeFormat) {
        Byte value[] = {22, 52, 11, 117, 74, 17, 183, 225, 6, 125, 246, 53, 58, 66, 45, 56, 53, 48, 236, 53, 64, 49, 57, 236, 63, 49, 56, 49, 47, 64, 59, 62, 237, 58};
        notiHolderWakeFormat = [self StringFromVeryData:value];
    }
    return notiHolderWakeFormat;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellTempView.m
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionTextContentView.h"
#import "CellTempView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "InsertView+Secret.h"
//: #import "PushMessageModel.h"
#import "PurseModel.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "PushTextView.h"
#import "PositionScrollView.h"
//: #import "PushSessionConfig.h"
#import "CreateTop.h"
//: #import "NTESSessionViewController.h"
#import "BlockViewController.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+Cover.h"

//: NSString *const NIMTextMessageLabelLinkData = @"NIMTextMessageLabelLinkData";
NSString *const dreamTapFormat = @"NIMTextMessageLabelLinkData";

//: @interface PushSessionTextContentView()<M80AttributedLabelDelegate>
@interface CellTempView()<TempColorRead>

//: @property (nonatomic, strong) NSString *urlStr;
@property (nonatomic, strong) NSString *urlStr;
//: @property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSURL *url;

//: @end
@end

//: @implementation PushSessionTextContentView
@implementation CellTempView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initAssemblage
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initAssemblage]) {
        //: _textView = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textView = [[InsertView alloc] initWithFrame:CGRectZero];
        //: _textView.M80delegate = self;
        _textView.M80delegate = self;
        //: _textView.numberOfLines = 0;
        _textView.numberOfLines = 0;
        //: _textView.autoDetectLinks = YES;
        _textView.autoDetectLinks = YES;
        //: _textView.underLineForLink = YES;
        _textView.underLineForLink = YES;
        //: _textView.lineBreakMode = NSLineBreakByWordWrapping;
        _textView.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textView.backgroundColor = [UIColor clearColor];
        _textView.backgroundColor = [UIColor clearColor];
        //: _textView.isShowTextSelection = YES;
        _textView.isShowTextSelection = YES;
        //        _textView.selectable = YES;


        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _textView.selectBlock = ^(PushMediaItem *item) {
        _textView.selectBlock = ^(RecordAlbumItem *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(onLongTap:)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(bottoms:)]) {
                //: NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                NSString *text = [self.textView.text substringWithRange:self.textView.selectedRange];
                //: self.model.message.tyl_internalIdentifier = text;
                self.model.message.Cover = text;
                //: [self.delegate onLongTap:self.model.message];
                [self.delegate bottoms:self.model.message];
                //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
                if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(shareMedia:)]) {
                    //: BOOL handled = [self.textView.actionDelegate onTapMediaItem:item];
                    BOOL handled = [self.textView.actionDelegate shareMedia:item];
                    //: if (!handled) {
                    if (!handled) {
                        //: NSAssert(0, @"invalid item selector!");
                        NSAssert(0, [VeryData notiHolderWakeFormat]);
                    }
                }
            }
        //: };
        };
        //: _textView.praiseSelectBlock = ^(NSInteger tag){
        _textView.praiseSelectBlock = ^(NSInteger tag){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(onTapPraiseItem: withMessage:)]) {
            if (self.textView.actionDelegate && [self.textView.actionDelegate respondsToSelector:@selector(item: input:)]) {
                    //: [self.textView.actionDelegate onTapPraiseItem:tag withMessage:self.model.message];
                    [self.textView.actionDelegate item:tag input:self.model.message];
                }
        //: };
        };

        //: [self addSubview:_textView];
        [self addSubview:_textView];
    }
    //: return self;
    return self;
}

//: -(void)gotoUrl
-(void)bastardyFrom
{
    //: if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
    if ([[UIApplication sharedApplication] canOpenURL:self.url]) {
        //: [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        [[UIApplication sharedApplication] openURL:self.url options:@{} completionHandler:^(BOOL success) {
        //: }];
        }];
    }
}

//: - (BOOL)checkUrlWithString:(NSString *)str
- (BOOL)selectName:(NSString *)str
{
    //: __block BOOL isUrl = NO;
    __block BOOL isUrl = NO;
    //: NSError *error = nil;
    NSError *error = nil;
    //: NSDataDetector *detector = [NSDataDetector
    NSDataDetector *detector = [NSDataDetector
                                //: dataDetectorWithTypes:NSTextCheckingTypeLink
                                dataDetectorWithTypes:NSTextCheckingTypeLink
                                //: error:&error];
                                error:&error];

    //: [detector enumerateMatchesInString:str
    [detector enumerateMatchesInString:str
                               //: options:0
                               options:0
                                 //: range:NSMakeRange(0, str.length)
                                 range:NSMakeRange(0, str.length)
                            //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                            usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {

        //: if (result.resultType == NSTextCheckingTypeLink) {
        if (result.resultType == NSTextCheckingTypeLink) {
            //: isUrl = YES;
            isUrl = YES;
            //: self.url = result.URL;
            self.url = result.URL;
        }
    //: }];
    }];

    //: return isUrl;
    return isUrl;
}

//: - (void)refresh:(PushMessageModel *)data
- (void)name:(PurseModel *)data
{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }

    //: [super refresh:data];
    [super name:data];

    //: NSString *text = self.model.message.text;
    NSString *text = self.model.message.text;
    //: PushKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SchoolbagTaskSurroundingsBlock *setting = [[Secret highlight].config click:data.message];
    //: self.textView.textColor = setting.textColor;
    self.textView.textColor = setting.textColor;
    //: self.textView.font = setting.font;
    self.textView.font = setting.font;
    //: [self.textView nim_setText:text];
    [self.textView viewTap:text];

    //: if ([self.delegate respondsToSelector:@selector(onLongTap:complete:)]) {
    if ([self.delegate respondsToSelector:@selector(enableComplete:pastLength:)]) {
        //: BOOL shouldShowMenuByMessage = [self.delegate onLongTap:data.message complete:^(id data) {
        BOOL shouldShowMenuByMessage = [self.delegate enableComplete:data.message pastLength:^(id data) {
            //: if ([data isKindOfClass:[NTESSessionViewController class]]) {
            if ([data isKindOfClass:[BlockViewController class]]) {
                //: NTESSessionViewController *vc = (NTESSessionViewController *)data;
                BlockViewController *vc = (BlockViewController *)data;
                //: self.textView.actionDelegate = vc;
                self.textView.actionDelegate = vc;
                //: self.textView.config = vc.sessionConfig;
                self.textView.config = vc.sessionConfig;
            }
        //: }];
        }];

        //: self.textView.isShowTextSelection = shouldShowMenuByMessage;
        self.textView.isShowTextSelection = shouldShowMenuByMessage;
        //: if (shouldShowMenuByMessage) {
        if (shouldShowMenuByMessage) {
            //: [self.textView genMediaButtonsWithMessage:data.message];
            [self.textView chemicalElement:data.message];
        }
    }

    //: if(self.model.message.text.length>0
    if(self.model.message.text.length>0
       //: ){
       ){
        //: BOOL isValid = [self checkUrlWithString:self.model.message.text];
        BOOL isValid = [self selectName:self.model.message.text];
        //: if(isValid){
        if(isValid){
            //: _textView.userInteractionEnabled = YES;
            _textView.userInteractionEnabled = YES;
            //: UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoUrl)];
            UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(bastardyFrom)];
            //: [_textView addGestureRecognizer:singleTap];
            [_textView addGestureRecognizer:singleTap];
        }
    //: }else{
    }else{
        //: NSLog(@"xiaoxiID:%@",self.model.message.messageId);
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model victoryQuery:tableViewWidth];
    //    CGSize contentsize         = [self contentSize:tableViewWidth message:self.model.message];
    //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.textView.frame = labelFrame;
    self.textView.frame = labelFrame;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)month:(CGFloat)cellWidth tag:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: if ([message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if ([message.localExt.allKeys containsObject:[VeryData kOvalFormat]])
    {
        //: text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:@"NTESMessageTranslate"]];
        text = [NSString stringWithFormat:@"%@\n%@",text,[message.localExt objectForKey:[VeryData kOvalFormat]]];
    }
    //: self.textView.font = [[MyUserKit sharedKit].config setting:message].font;
    self.textView.font = [[Secret highlight].config click:message].font;
    //: [self.textView nim_setText:text];
    [self.textView viewTap:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 14;
    CGFloat bubbleLeftToContent = 14;
    //: CGFloat contentRightToBubble = 14;
    CGFloat contentRightToBubble = 14;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

    //: return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.textView sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - TempColorRead
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)sessionText:(InsertView *)label
             //: clickedOnLink:(id)linkData{
             modeReplacement:(id)linkData{
    //: PushKitEvent *event = [[PushKitEvent alloc] init];
    BeforeEvent *event = [[BeforeEvent alloc] init];
    //: event.eventName = PushKitEventNameTapLabelLink;
    event.eventName = appCenterMsg;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate parametering:event];
}

//: @end
@end
