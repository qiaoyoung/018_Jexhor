
#import <Foundation/Foundation.h>

@interface ListenerData : NSObject

+ (instancetype)sharedInstance;

//: f6f6f6
@property (nonatomic, copy) NSString *k_viewUnderMsg;

//: icon_accessory_normal
@property (nonatomic, copy) NSString *kSodFormat;

//: icon_accessory_selected
@property (nonatomic, copy) NSString *appSouMessage;

//: head_default
@property (nonatomic, copy) NSString *mGenerallyIdent;

@end

@implementation ListenerData

+ (instancetype)sharedInstance {
    static ListenerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ListenerDataToCache:(Byte *)data {
    int crinkle = data[0];
    int guidanceDown = data[1];
    for (int i = 0; i < crinkle / 2; i++) {
        int begin = guidanceDown + i;
        int end = guidanceDown + crinkle - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[guidanceDown + crinkle] = 0;
    return data + guidanceDown;
}

- (NSString *)StringFromListenerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ListenerDataToCache:data]];
}  

//: head_default
- (NSString *)mGenerallyIdent {
    if (!_mGenerallyIdent) {
        Byte value[] = {12, 3, 67, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 44};
        _mGenerallyIdent = [self StringFromListenerData:value];
    }
    return _mGenerallyIdent;
}

//: icon_accessory_selected
- (NSString *)appSouMessage {
    if (!_appSouMessage) {
        Byte value[] = {23, 6, 112, 136, 46, 86, 100, 101, 116, 99, 101, 108, 101, 115, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 189};
        _appSouMessage = [self StringFromListenerData:value];
    }
    return _appSouMessage;
}

//: f6f6f6
- (NSString *)k_viewUnderMsg {
    if (!_k_viewUnderMsg) {
        Byte value[] = {6, 3, 180, 54, 102, 54, 102, 54, 102, 15};
        _k_viewUnderMsg = [self StringFromListenerData:value];
    }
    return _k_viewUnderMsg;
}

//: icon_accessory_normal
- (NSString *)kSodFormat {
    if (!_kSodFormat) {
        Byte value[] = {21, 3, 154, 108, 97, 109, 114, 111, 110, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 136};
        _kSodFormat = [self StringFromListenerData:value];
    }
    return _kSodFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushContactDataCell.h"
#import "BackgroundViewCell.h"
//: #import "PushAvatarImageView.h"
#import "ImageView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"

//: @interface PushContactDataCell()
@interface BackgroundViewCell()

//: @end
@end

//: @implementation PushContactDataCell
@implementation BackgroundViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
        bgView.backgroundColor = [UIColor user:[ListenerData sharedInstance].k_viewUnderMsg];
        //: bgView.layer.cornerRadius = 16;
        bgView.layer.cornerRadius = 16;
        //: [self.contentView addSubview:bgView];
        [self.contentView addSubview:bgView];


        //: _avatarImageView = [[PushAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        _avatarImageView = [[ImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(provisionerred:) forControlEvents:UIControlEventTouchUpInside];
        //: [bgView addSubview:_avatarImageView];
        [bgView addSubview:_avatarImageView];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[ListenerData sharedInstance].kSodFormat] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:[ListenerData sharedInstance].appSouMessage] forState:UIControlStateSelected];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: _accessoryBtn.hidden = YES;
        _accessoryBtn.hidden = YES;
        //: _accessoryBtn.userInteractionEnabled = NO;
        _accessoryBtn.userInteractionEnabled = NO;
        //: [bgView addSubview:_accessoryBtn];
        [bgView addSubview:_accessoryBtn];

        //: self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        //: self.labName.textColor = [UIColor blackColor];
        self.labName.textColor = [UIColor blackColor];
        //: self.labName.font = [UIFont boldSystemFontOfSize:16];
        self.labName.font = [UIFont boldSystemFontOfSize:16];
        //: [bgView addSubview:self.labName];
        [bgView addSubview:self.labName];

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleGray;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    //: return self;
    return self;
}

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member {
- (void)container:(id<ToolTextEnablely>)member {
    //: [self refreshTitle:member.showName];
    [self sumernationality:member.showName];
    //: self.memberId = member.memberId;
    self.memberId = member.memberId;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.tableTitle ? [NSURL URLWithString:member.tableTitle] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView image:url set:[UIImage imageNamed:[ListenerData sharedInstance].mGenerallyIdent] version:SDWebImageRetryFailed];
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)message:(id<ToolTextEnablely>)member{
    //: [self refreshTitle:member.showName];
    [self sumernationality:member.showName];
    //: self.memberId = [member memberId];
    self.memberId = [member memberId];
    //: PushKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:self.memberId item:nil];
    //: [self refreshAvatar:info];
    [self outView:info];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)resolution:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self sumernationality:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: PushKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    DataTeam *info = [[Secret highlight] show:self.memberId corner:nil];
    //: [self refreshAvatar:info];
    [self outView:info];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)sumernationality:(NSString *)title{
    //: self.labName.text = title;
    self.labName.text = title;
}

//: - (void)refreshAvatar:(PushKitInfo *)info{
- (void)outView:(DataTeam *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView image:url set:info.avatarImage version:SDWebImageRetryFailed];
}

//: - (void)onPressAvatar:(id)sender{
- (void)provisionerred:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(provisionerred:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate provisionerred:self.memberId];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)fortifyInBubble:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [self.accessoryBtn setHighlighted:highlighted];
    [self.accessoryBtn setHighlighted:highlighted];
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}






//: @end
@end
