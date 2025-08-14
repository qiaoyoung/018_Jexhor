
#import <Foundation/Foundation.h>

@interface ListenerSwitchendData : NSObject

@end

@implementation ListenerSwitchendData

+ (Byte *)ListenerSwitchendDataToCache:(Byte *)data {
    int organizer = data[0];
    Byte congressionalPollution = data[1];
    int bronze = data[2];
    for (int i = bronze; i < bronze + organizer; i++) {
        int value = data[i] - congressionalPollution;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[bronze + organizer] = 0;
    return data + bronze;
}

+ (NSString *)StringFromListenerSwitchendData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ListenerSwitchendDataToCache:data]];
}

//: icon_accessory_normal
+ (NSString *)userPursuitContent {
    /* static */ NSString *userPursuitContent = nil;
    if (!userPursuitContent) {
        Byte value[] = {21, 65, 7, 46, 215, 24, 172, 170, 164, 176, 175, 160, 162, 164, 164, 166, 180, 180, 176, 179, 186, 160, 175, 176, 179, 174, 162, 173, 88};
        userPursuitContent = [self StringFromListenerSwitchendData:value];
    }
    return userPursuitContent;
}

//: icon_accessory_selected
+ (NSString *)appPdaName {
    /* static */ NSString *appPdaName = nil;
    if (!appPdaName) {
        Byte value[] = {23, 28, 10, 110, 151, 253, 207, 132, 250, 104, 133, 127, 139, 138, 123, 125, 127, 127, 129, 143, 143, 139, 142, 149, 123, 143, 129, 136, 129, 127, 144, 129, 128, 227};
        appPdaName = [self StringFromListenerSwitchendData:value];
    }
    return appPdaName;
}

//: f6f6f6
+ (NSString *)noti_sessionData {
    /* static */ NSString *noti_sessionData = nil;
    if (!noti_sessionData) {
        Byte value[] = {6, 96, 5, 191, 178, 198, 150, 198, 150, 198, 150, 234};
        noti_sessionData = [self StringFromListenerSwitchendData:value];
    }
    return noti_sessionData;
}

//: head_default
+ (NSString *)mainUniteValue {
    /* static */ NSString *mainUniteValue = nil;
    if (!mainUniteValue) {
        Byte value[] = {12, 84, 6, 177, 72, 49, 188, 185, 181, 184, 179, 184, 185, 186, 181, 201, 192, 200, 19};
        mainUniteValue = [self StringFromListenerSwitchendData:value];
    }
    return mainUniteValue;
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
//: #import "WorkContactDataCell.h"
#import "AccountingDataViewCell.h"
//: #import "WorkAvatarImageView.h"
#import "ButtonControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"

//: @interface WorkContactDataCell()
@interface AccountingDataViewCell()

//: @end
@end

//: @implementation WorkContactDataCell
@implementation AccountingDataViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
        bgView.backgroundColor = [UIColor ground:[ListenerSwitchendData noti_sessionData]];
        //: bgView.layer.cornerRadius = 16;
        bgView.layer.cornerRadius = 16;
        //: [self.contentView addSubview:bgView];
        [self.contentView addSubview:bgView];


        //: _avatarImageView = [[WorkAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        _avatarImageView = [[ButtonControl alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(alongsed:) forControlEvents:UIControlEventTouchUpInside];
        //: [bgView addSubview:_avatarImageView];
        [bgView addSubview:_avatarImageView];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[ListenerSwitchendData userPursuitContent]] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:[ListenerSwitchendData appPdaName]] forState:UIControlStateSelected];
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
- (void)showWith:(id<MemberProtocol>)member {
    //: [self refreshTitle:member.showName];
    [self item:member.showName];
    //: self.memberId = member.memberId;
    self.memberId = member.memberId;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.belowGlobal ? [NSURL URLWithString:member.belowGlobal] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView title:url myPin:[UIImage imageNamed:[ListenerSwitchendData mainUniteValue]] image:SDWebImageRetryFailed];
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)celluloidUser:(id<MemberProtocol>)member{
    //: [self refreshTitle:member.showName];
    [self item:member.showName];
    //: self.memberId = [member memberId];
    self.memberId = [member memberId];
    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:self.memberId blue:nil];
    //: [self refreshAvatar:info];
    [self parameter:info];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)cell:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self item:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] info:self.memberId comment:nil];
    //: [self refreshAvatar:info];
    [self parameter:info];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)item:(NSString *)title{
    //: self.labName.text = title;
    self.labName.text = title;
}

//: - (void)refreshAvatar:(WorkKitInfo *)info{
- (void)parameter:(ConfirmationInfo *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView title:url myPin:info.avatarImage image:SDWebImageRetryFailed];
}

//: - (void)onPressAvatar:(id)sender{
- (void)alongsed:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(alongsed:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate alongsed:self.memberId];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)endDelegate:(id)delegate{
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
