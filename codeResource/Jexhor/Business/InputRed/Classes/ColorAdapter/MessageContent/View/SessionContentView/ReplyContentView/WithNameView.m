
#import <Foundation/Foundation.h>
typedef struct {
    Byte quietly;
    Byte *farmerTai;
    unsigned int economicsSize;
    Byte limitJudgment;
} AttractiveForceData;

NSString *StringFromAttractiveForceData(AttractiveForceData *data);


//: VIDEO
AttractiveForceData mainMagnitudeegrityName = (AttractiveForceData){66, (Byte []){20, 11, 6, 7, 13, 62}, 5, 239};

//: AUDIO
AttractiveForceData mPickTunnelText = (AttractiveForceData){53, (Byte []){116, 96, 113, 124, 122, 71}, 5, 176};

//: #F6F7FA
AttractiveForceData dreamThreeBikeContent = (AttractiveForceData){78, (Byte []){109, 8, 120, 8, 121, 8, 15, 2}, 7, 217};

//: userName
AttractiveForceData show_rowValue = (AttractiveForceData){7, (Byte []){114, 116, 98, 117, 73, 102, 106, 98, 78}, 8, 181};

//: type
AttractiveForceData dream_steadBoatName = (AttractiveForceData){36, (Byte []){80, 93, 84, 65, 112}, 4, 236};

//: reply
AttractiveForceData appRealistTitle = (AttractiveForceData){144, (Byte []){226, 245, 224, 252, 233, 252}, 5, 184};

//: icon_receiver_voice_playing_003
AttractiveForceData k_colorName = (AttractiveForceData){239, (Byte []){134, 140, 128, 129, 176, 157, 138, 140, 138, 134, 153, 138, 157, 176, 153, 128, 134, 140, 138, 176, 159, 131, 142, 150, 134, 129, 136, 176, 223, 223, 220, 228}, 31, 233};

//: content
AttractiveForceData k_mothTitle = (AttractiveForceData){86, (Byte []){53, 57, 56, 34, 51, 56, 34, 71}, 7, 222};

//: IMAGE
AttractiveForceData mainEffectTitle = (AttractiveForceData){33, (Byte []){104, 108, 96, 102, 100, 4}, 5, 229};

//: 5D5F66
AttractiveForceData show_impressTitle = (AttractiveForceData){51, (Byte []){6, 119, 6, 117, 5, 5, 38}, 6, 200};

//: TEXT
AttractiveForceData main_scaleData = (AttractiveForceData){57, (Byte []){109, 124, 97, 109, 107}, 4, 167};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithNameView.m
// MessageContent
//
//  Created by He on 2020/3/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkReplyedTextContentView.h"
#import "WithNameView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "VideoTextView+MessageContent.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @interface WorkReplyedTextContentView ()<M80AttributedLabelDelegate>
@interface WithNameView ()<LabelDelegate>
//: @end
@end

//: @implementation WorkReplyedTextContentView
@implementation WithNameView

//: - (instancetype)initSessionMessageContentView {
- (instancetype)initViewKey {
    //: self = [super initSessionMessageContentView];
    self = [super initViewKey];

    //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.backgroundColor = [UIColor ground:StringFromAttractiveForceData(&dreamThreeBikeContent)];
    //: self.layer.cornerRadius = 8;
    self.layer.cornerRadius = 8;
    //: self.layer.masksToBounds = YES;
    self.layer.masksToBounds = YES;

    //: return self;
    return self;
}

//: - (void)refresh:(WorkMessageModel *)data {
- (void)panorama:(ShowModel *)data {
    //: [super refresh:data];
    [super panorama:data];

    //: if ([data.message.remoteExt.allKeys containsObject:@"reply"])
    if ([data.message.remoteExt.allKeys containsObject:StringFromAttractiveForceData(&appRealistTitle)])
    {
        //        NSDictionary *dic = @{
        //                @"type": type,//type:TEXT、IMAGE、VIDEO
        //                @"content": contents,//content:文本内容、图片url、视频url
        //                @"userName": info.showName,//消息发送者
        //                @"messageid": @"",//messageid：留着备用
        //        };
        //: NSDictionary *dic = [data.message.remoteExt objectForKey:@"reply"];
        NSDictionary *dic = [data.message.remoteExt objectForKey:StringFromAttractiveForceData(&appRealistTitle)];
        //: NSString *content = [dic objectForKey:@"content"];
        NSString *content = [dic objectForKey:StringFromAttractiveForceData(&k_mothTitle)];
        //: NSString *userName = [dic objectForKey:@"userName"];
        NSString *userName = [dic objectForKey:StringFromAttractiveForceData(&show_rowValue)];
        //: NSString *type = [dic objectForKey:@"type"];
        NSString *type = [dic objectForKey:StringFromAttractiveForceData(&dream_steadBoatName)];

        //: UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        UIEdgeInsets contentInsets = self.model.replyContentViewInsets;
        //: CGFloat tableViewWidth = self.superview.width;
        CGFloat tableViewWidth = self.superview.width;
        //: CGSize contentsize = [self.model replyContentSize:tableViewWidth];
        CGSize contentsize = [self.model high:tableViewWidth];

        //: self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        self.fromUser.text = [NSString stringWithFormat:@"%@:",userName];
        //: if([type isEqualToString:@"TEXT"]){
        if([type isEqualToString:StringFromAttractiveForceData(&main_scaleData)]){
//            self.textLabel.text = content;
            //: [self.textLabel nim_setText:content];
            [self.textLabel infoCookie:content];
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
        }else if([type isEqualToString:StringFromAttractiveForceData(&mainEffectTitle)]){
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
        }else if([type isEqualToString:StringFromAttractiveForceData(&mainMagnitudeegrityName)]){
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
        else if([type isEqualToString:StringFromAttractiveForceData(&mPickTunnelText)]){
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
            self.picView.image = [UIImage imageNamed:StringFromAttractiveForceData(&k_colorName)];
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

    //: WorkKitSetting *setting = [[MyUserKit sharedKit].config repliedSetting:data.message];
    ViewKey *setting = [[MessageContent secretResolution].config ting:data.message];
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
        _audioLabel.textColor = [UIColor ground:StringFromAttractiveForceData(&show_impressTitle)];
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
        _fromUser.textColor = [UIColor ground:StringFromAttractiveForceData(&show_impressTitle)];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [self addSubview:_fromUser];
        [self addSubview:_fromUser];
    }
    //: return _fromUser;
    return _fromUser;
}

//: - (M80AttributedLabel *)textLabel
- (VideoTextView *)textLabel
{
    //: if (!_textLabel)
    if (!_textLabel)
    {
        //: _textLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[VideoTextView alloc] initWithFrame:CGRectZero];
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
#pragma mark - LabelDelegate
//: - (void)m80AttributedLabel:(M80AttributedLabel *)label
- (void)messageValue:(VideoTextView *)label
             //: clickedOnLink:(id)linkData{
             maxAlong:(id)linkData{
    //: WorkKitEvent *event = [[WorkKitEvent alloc] init];
    WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
    //: event.eventName = WorkKitEventNameTapLabelLink;
    event.eventName = k_onText;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: event.data = linkData;
    event.data = linkData;
    //: [self.delegate onCatchEvent:event];
    [self.delegate aboveImage:event];
}


//: - (void)onTouchUpInside:(id)sender
- (void)recorded:(id)sender
{
//    WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
//    event.eventName = WorkKitEventNameTapRepliedContent;
//    event.messageModel = self.model;
//    [self.delegate onCatchEvent:event];
}

//: - (void)onTouchDown:(id)sender
- (void)osculated:(id)sender
{

}

//: - (void)onTouchUpOutside:(id)sender{
- (void)ting:(id)sender{

}
//: @end
@end

Byte *AttractiveForceDataToByte(AttractiveForceData *data) {
    if (data->limitJudgment < 117) return data->farmerTai;
    for (int i = 0; i < data->economicsSize; i++) {
        data->farmerTai[i] ^= data->quietly;
    }
    data->farmerTai[data->economicsSize] = 0;
    data->limitJudgment = 31;
    return data->farmerTai;
}

NSString *StringFromAttractiveForceData(AttractiveForceData *data) {
    return [NSString stringWithUTF8String:(char *)AttractiveForceDataToByte(data)];
}
