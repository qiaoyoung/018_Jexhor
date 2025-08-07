
#import <Foundation/Foundation.h>

@interface CreaseBiasData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CreaseBiasData

+ (instancetype)sharedInstance {
    static CreaseBiasData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CreaseBiasDataToCache:(Byte *)data {
    int chlorophyte = data[0];
    int maxiOre = data[1];
    for (int i = 0; i < chlorophyte / 2; i++) {
        int begin = maxiOre + i;
        int end = maxiOre + chlorophyte - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[maxiOre + chlorophyte] = 0;
    return data + maxiOre;
}

- (NSString *)StringFromCreaseBiasData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CreaseBiasDataToCache:data]];
}  

//: icon_receiver_voice_playing_003
- (NSString *)dream_defineKey {
    /* static */ NSString *dream_defineKey = nil;
    if (!dream_defineKey) {
        Byte value[] = {31, 4, 189, 152, 51, 48, 48, 95, 103, 110, 105, 121, 97, 108, 112, 95, 101, 99, 105, 111, 118, 95, 114, 101, 118, 105, 101, 99, 101, 114, 95, 110, 111, 99, 105, 93};
        dream_defineKey = [self StringFromCreaseBiasData:value];
    }
    return dream_defineKey;
}

//: VIDEO
- (NSString *)app_brownTitle {
    /* static */ NSString *app_brownTitle = nil;
    if (!app_brownTitle) {
        Byte value[] = {5, 10, 68, 160, 253, 251, 107, 136, 239, 121, 79, 69, 68, 73, 86, 73};
        app_brownTitle = [self StringFromCreaseBiasData:value];
    }
    return app_brownTitle;
}

//: 5D5F66
- (NSString *)dream_balancedIdent {
    /* static */ NSString *dream_balancedIdent = nil;
    if (!dream_balancedIdent) {
        Byte value[] = {6, 9, 164, 25, 234, 245, 113, 235, 145, 54, 54, 70, 53, 68, 53, 216};
        dream_balancedIdent = [self StringFromCreaseBiasData:value];
    }
    return dream_balancedIdent;
}

//: TEXT
- (NSString *)kAspectIdent {
    /* static */ NSString *kAspectIdent = nil;
    if (!kAspectIdent) {
        Byte value[] = {4, 8, 159, 211, 177, 122, 198, 133, 84, 88, 69, 84, 216};
        kAspectIdent = [self StringFromCreaseBiasData:value];
    }
    return kAspectIdent;
}

//: content
- (NSString *)dreamRageValue {
    /* static */ NSString *dreamRageValue = nil;
    if (!dreamRageValue) {
        Byte value[] = {7, 12, 188, 86, 13, 158, 52, 146, 79, 155, 251, 121, 116, 110, 101, 116, 110, 111, 99, 192};
        dreamRageValue = [self StringFromCreaseBiasData:value];
    }
    return dreamRageValue;
}

//: reply
- (NSString *)kDismissMsg {
    /* static */ NSString *kDismissMsg = nil;
    if (!kDismissMsg) {
        Byte value[] = {5, 11, 132, 235, 132, 114, 172, 129, 64, 198, 205, 121, 108, 112, 101, 114, 26};
        kDismissMsg = [self StringFromCreaseBiasData:value];
    }
    return kDismissMsg;
}

//: IMAGE
- (NSString *)userProductivityKey {
    /* static */ NSString *userProductivityKey = nil;
    if (!userProductivityKey) {
        Byte value[] = {5, 3, 190, 69, 71, 65, 77, 73, 130};
        userProductivityKey = [self StringFromCreaseBiasData:value];
    }
    return userProductivityKey;
}

//: AUDIO
- (NSString *)showWipeFormat {
    /* static */ NSString *showWipeFormat = nil;
    if (!showWipeFormat) {
        Byte value[] = {5, 4, 105, 208, 79, 73, 68, 85, 65, 109};
        showWipeFormat = [self StringFromCreaseBiasData:value];
    }
    return showWipeFormat;
}

//: #F6F7FA
- (NSString *)user_commissionMsg {
    /* static */ NSString *user_commissionMsg = nil;
    if (!user_commissionMsg) {
        Byte value[] = {7, 10, 96, 201, 91, 59, 123, 227, 215, 134, 65, 70, 55, 70, 54, 70, 35, 204};
        user_commissionMsg = [self StringFromCreaseBiasData:value];
    }
    return user_commissionMsg;
}

//: userName
- (NSString *)k_legislatureTitle {
    /* static */ NSString *k_legislatureTitle = nil;
    if (!k_legislatureTitle) {
        Byte value[] = {8, 6, 232, 135, 220, 133, 101, 109, 97, 78, 114, 101, 115, 117, 156};
        k_legislatureTitle = [self StringFromCreaseBiasData:value];
    }
    return k_legislatureTitle;
}

//: type
- (NSString *)appInputId {
    /* static */ NSString *appInputId = nil;
    if (!appInputId) {
        Byte value[] = {4, 8, 147, 83, 19, 229, 152, 144, 101, 112, 121, 116, 66};
        appInputId = [self StringFromCreaseBiasData:value];
    }
    return appInputId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextNameView.m
// Secret
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFReplyedTextContentView.h"
#import "TextNameView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "InsertView+Secret.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @interface FFFReplyedTextContentView ()<M80AttributedLabelDelegate>
@interface TextNameView ()<TempColorRead>
//: @end
@end

//: @implementation FFFReplyedTextContentView
@implementation TextNameView

//: - (instancetype)initSessionMessageContentView {
- (instancetype)initAssemblage {
    //: self = [super initSessionMessageContentView];
    self = [super initAssemblage];

    //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.backgroundColor = [UIColor user:[[CreaseBiasData sharedInstance] user_commissionMsg]];
    //: self.layer.cornerRadius = 8;
    self.layer.cornerRadius = 8;
    //: self.layer.masksToBounds = YES;
    self.layer.masksToBounds = YES;

    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)name:(PurseModel *)data {
    //: [super refresh:data];
    [super name:data];

    //: if ([data.message.remoteExt.allKeys containsObject:@"reply"])
    if ([data.message.remoteExt.allKeys containsObject:[[CreaseBiasData sharedInstance] kDismissMsg]])
    {
        //        NSDictionary *dic = @{
        //                @"type": type,//type:TEXT、IMAGE、VIDEO
        //                @"content": contents,//content:文本内容、图片url、视频url
        //                @"userName": info.showName,//消息发送者
        //                @"messageid": @"",//messageid：留着备用
        //        };
        //: NSDictionary *dic = [data.message.remoteExt objectForKey:@"reply"];
        NSDictionary *dic = [data.message.remoteExt objectForKey:[[CreaseBiasData sharedInstance] kDismissMsg]];
        //: NSString *content = [dic objectForKey:@"content"];
        NSString *content = [dic objectForKey:[[CreaseBiasData sharedInstance] dreamRageValue]];
        //: NSString *userName = [dic objectForKey:@"userName"];
        NSString *userName = [dic objectForKey:[[CreaseBiasData sharedInstance] k_legislatureTitle]];
        //: NSString *type = [dic objectForKey:@"type"];
        NSString *type = [dic objectForKey:[[CreaseBiasData sharedInstance] appInputId]];

        //: UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        //: CGFloat tableViewWidth = self.superview.width;
        CGFloat tableViewWidth = self.superview.width;
        //: CGSize contentsize = [self.model replyContentSize:tableViewWidth];
        CGSize contentsize = [self.model aggregation:tableViewWidth];

        //: self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        //: if([type isEqualToString:@"TEXT"]){
        if([type isEqualToString:[[CreaseBiasData sharedInstance] kAspectIdent]]){
//            self.textLabel.text = content;
            //: [self.textLabel nim_setText:content];
            [self.textLabel viewTap:content];
            //: self.textLabel.hidden = NO;
            self.textLabel.hidden = NO;
            //: self.picView.hidden = YES;
            self.picView.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;

            //: CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            CGRect userFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, 15);
            //: self.fromUser.frame = userFrame;
            self.fromUser.frame = userFrame;

            //: CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top+15, contentsize.width, contentsize.height);
            //: self.textLabel.frame = labelFrame;
            self.textLabel.frame = labelFrame;

//            self.fromUser.left =   contentInsets.left;
//            self.label.left =   contentInsets.left;

        //: }else if([type isEqualToString:@"IMAGE"]){
        }else if([type isEqualToString:[[CreaseBiasData sharedInstance] userProductivityKey]]){
//            self.textLabel.text = @"[图片]".nim_localized;

//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);
            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            //: CGFloat maxWidth = 90;
            CGFloat maxWidth = 90;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, finalWidth, 36);
//            [self.fromUser sizeToFit]; // 再次调整高度

//            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;
            //: self.picView.hidden = NO;
            self.picView.hidden = NO;
            //: [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
            //: CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
            //: self.picView.frame = picFrame;
            self.picView.frame = picFrame;



        //: }else if([type isEqualToString:@"VIDEO"]){
        }else if([type isEqualToString:[[CreaseBiasData sharedInstance] app_brownTitle]]){
            //            self.textLabel.text = @"[图片]".nim_localized;
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.hidden = YES;
            self.audioLabel.hidden = YES;
//            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top, 70, 36);

            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 60;
            //: CGFloat maxWidth = 90;
            CGFloat maxWidth = 90;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 30);
//            [self.fromUser sizeToFit]; // 再次调整高度

            //            self.textLabel.frame = CGRectMake(50, contentInsets.top+12, contentsize.width, contentsize.height);

                        //: self.picView.hidden = NO;
                        self.picView.hidden = NO;
                        //: [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        [self.picView sd_setImageWithURL:[NSURL URLWithString:content]];
                        //: CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        CGRect picFrame = CGRectMake(self.fromUser.right+5, contentInsets.top, 36, 36);
                        //: self.picView.frame = picFrame;
                        self.picView.frame = picFrame;

        }
        //: else if([type isEqualToString:@"AUDIO"]){
        else if([type isEqualToString:[[CreaseBiasData sharedInstance] showWipeFormat]]){
            //: self.textLabel.hidden = YES;
            self.textLabel.hidden = YES;
            //: self.audioLabel.text = content;
            self.audioLabel.text = content;
//            [self.textLabel nim_setText:content];
            //: self.audioLabel.hidden = NO;
            self.audioLabel.hidden = NO;
            //: self.picView.hidden = NO;
            self.picView.hidden = NO;
            //: self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
            self.picView.image = [UIImage imageNamed:[[CreaseBiasData sharedInstance] dream_defineKey]];
//                       if(data.shouldShowLeft){
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_003"];
//                       }else{
//                           self.picView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w_003"];
//                       }

            // 先让label根据内容自适应大小
            //: [self.fromUser sizeToFit];
            [self.fromUser sizeToFit];
            // 获取自适应后的宽度
            //: CGFloat preferredWidth = self.fromUser.frame.size.width;
            CGFloat preferredWidth = self.fromUser.frame.size.width;
            // 设置自定义宽度（200）和最大宽度限制（300）
//            CGFloat customWidth = 50;
            //: CGFloat maxWidth = 70;
            CGFloat maxWidth = 70;
            //: CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            CGFloat finalWidth = ((preferredWidth) < (maxWidth) ? (preferredWidth) : (maxWidth));
            // 设置label的frame
            //: self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            self.fromUser.frame = CGRectMake(contentInsets.left, contentInsets.top+5, finalWidth, 20);
            //: self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            self.picView.frame = CGRectMake(self.fromUser.right+5, contentInsets.top+10, 48, 10);
            //: self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
            self.audioLabel.frame = CGRectMake(self.picView.right+5, contentInsets.top+5, 25, 20);
        }

    }

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config repliedSetting:data.message];
    SchoolbagTaskSurroundingsBlock *setting = [[Secret highlight].config select:data.message];
    //: self.textLabel.textColor = setting.replyedTextColor;
    self.textLabel.textColor = setting.replyedTextColor;
    //: self.textLabel.font = setting.replyedFont;
    self.textLabel.font = setting.replyedFont;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
//    
//    CGFloat tableViewWidth = self.superview.nim_width;
//    CGSize contentsize = [self.model replyContentSize:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;
}

//: - (UILabel *)audioLabel
- (UILabel *)audioLabel
{
    //: if (!_audioLabel)
    if (!_audioLabel)
    {
        //: _audioLabel = [[UILabel alloc]init];
        _audioLabel = [[UILabel alloc]init];
        //: _audioLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
        _audioLabel.textColor = [UIColor user:[[CreaseBiasData sharedInstance] dream_balancedIdent]];
        //: _audioLabel.font = [UIFont systemFontOfSize:12];
        _audioLabel.font = [UIFont systemFontOfSize:12];
        //: _audioLabel.hidden = YES;
        _audioLabel.hidden = YES;
        //: [self addSubview:_audioLabel];
        [self addSubview:_audioLabel];
    }

    //: return _audioLabel;
    return _audioLabel;
}

//: - (UIImageView *)picView
- (UIImageView *)picView
{
    //: if(!_picView){
    if(!_picView){
        //: _picView = [[UIImageView alloc]init];
        _picView = [[UIImageView alloc]init];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: _picView.hidden = YES;
        _picView.hidden = YES;
        //: [self addSubview:_picView];
        [self addSubview:_picView];
    }
    //: return _picView;
    return _picView;
}

//: - (UILabel *)fromUser
- (UILabel *)fromUser
{
    //: if(!_fromUser){
    if(!_fromUser){
        //: _fromUser = [[UILabel alloc]init];
        _fromUser = [[UILabel alloc]init];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"5D5F66"];
        _fromUser.textColor = [UIColor user:[[CreaseBiasData sharedInstance] dream_balancedIdent]];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [self addSubview:_fromUser];
        [self addSubview:_fromUser];
    }
    //: return _fromUser;
    return _fromUser;
}

//: - (M80AttributedLabel *)textLabel
- (InsertView *)textLabel
{
    //: if (!_textLabel)
    if (!_textLabel)
    {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[InsertView alloc] initWithFrame:CGRectZero];
        //: _textLabel.M80delegate = self;
        _textLabel.M80delegate = self;
        //: _textLabel.numberOfLines = 0;
        _textLabel.numberOfLines = 0;
        //: _textLabel.autoDetectLinks = NO;
        _textLabel.autoDetectLinks = NO;
        //: _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.backgroundColor = [UIColor clearColor];
//        _textLabel.textColor = [UIColor grayColor];
        //: _textLabel.font = [UIFont systemFontOfSize:13];
        _textLabel.font = [UIFont systemFontOfSize:13];
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];
    }

    //: return _textLabel;
    return _textLabel;
}
//: #pragma mark - M80AttributedLabelDelegate
#pragma mark - TempColorRead
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)sessionText:(InsertView *)label
             //: clickedOnLink:(id)linkData{
             modeReplacement:(id)linkData{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    BeforeEvent *event = [[BeforeEvent alloc] init];
    //: event.eventName = FFFKitEventNameTapLabelLink;
    event.eventName = appCenterMsg;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate parametering:event];
}


//: - (void)onTouchUpInside:(id)sender
- (void)played:(id)sender
{
//    BeforeEvent *event = [[BeforeEvent alloc] init];
//    event.eventName = FFFKitEventNameTapRepliedContent;
//    event.messageModel = self.model;
//    [self.delegate onCatchEvent:event];
}

//: - (void)onTouchDown:(id)sender
- (void)enabled:(id)sender
{

}

//: - (void)onTouchUpOutside:(id)sender{
- (void)pasting:(id)sender{

}
//: @end
@end