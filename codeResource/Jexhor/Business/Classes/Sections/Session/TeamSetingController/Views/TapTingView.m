
#import <Foundation/Foundation.h>

NSString *StringFromIconData(Byte *data);        


//: group_mute_no
Byte main_dramaticallyKey[] = {66, 13, 18, 6, 128, 149, 85, 96, 93, 99, 94, 77, 91, 99, 98, 83, 77, 92, 93, 116};

//: group_remove
Byte userSkyTitle[] = {98, 12, 62, 7, 73, 143, 162, 41, 52, 49, 55, 50, 33, 52, 39, 47, 49, 56, 39, 161};

//: #F6F6F6
Byte m_wooValue[] = {37, 7, 41, 7, 85, 93, 222, 250, 29, 13, 29, 13, 29, 13, 234};

//: group_mute
Byte notiJustifyCostlyTitle[] = {96, 10, 67, 10, 194, 18, 215, 6, 228, 58, 36, 47, 44, 50, 45, 28, 42, 50, 49, 34, 95};

//: #000000
Byte m_povertyName[] = {3, 7, 27, 12, 181, 108, 133, 22, 170, 249, 45, 82, 8, 21, 21, 21, 21, 21, 21, 70};

//: 5D5F66
Byte dreamTheaterStr[] = {22, 6, 5, 8, 77, 64, 94, 20, 48, 63, 48, 65, 49, 49, 250};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TapTingView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushGroupMemberTableViewCell.h"
#import "TapTingView.h"
//: #import "PushAvatarImageView.h"
#import "ImageView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "PushTeamHelper.h"
#import "ShowHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"

//: @interface PushGroupMemberTableViewCell()
@interface TapTingView()

//: @property (nonatomic,strong) id<PushKitCardHeaderData> data;
@property (nonatomic,strong) id<PushKitCardHeaderData> data;

//: @end
@end

//: @implementation PushGroupMemberTableViewCell
@implementation TapTingView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

//        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;


        //: [self initSubviews];
        [self initTillKeySubviews];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)present:(UITableView *)tableView
{
    //: static NSString *identifier = @"PushGroupMemberTableViewCell";
    static NSString *identifier = @"TapTingView";
    //: PushGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    TapTingView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[PushGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[TapTingView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        cell.backgroundColor = [UIColor user:StringFromIconData(m_wooValue)];
        //: cell.layer.cornerRadius = 16;
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initTillKeySubviews {

    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [self.contentView addSubview:_roleImageView];
    [self.contentView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor user:StringFromIconData(m_povertyName)];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    _subtitleLabel.textColor = [UIColor user:StringFromIconData(dreamTheaterStr)];
    //: _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: _subtitleLabel.hidden = YES;
    _subtitleLabel.hidden = YES;
    //: [self.contentView addSubview:_subtitleLabel];
    [self.contentView addSubview:_subtitleLabel];

    //: [self.contentView addSubview:self.muteBtn];
    [self.contentView addSubview:self.muteBtn];
    //: [self.contentView addSubview:self.removeBtn];
    [self.contentView addSubview:self.removeBtn];

}

//: - (void)reloadWithUserId:(NSString *)UserId
- (void)nameTag:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)setUserInfo:(PushKitInfo *)userInfo
- (void)setUserInfo:(DataTeam *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)digitizerred:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(sendBottom:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate sendBottom:self.userId];
    }
}
//: - (void)onTouchMuteBtn:(id)sender{
- (void)texts:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(sendBottom:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate send:self.userId valueAcross:YES];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    //: self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);
    self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);

}
//: - (UIButton *)removeBtn{
- (UIButton *)removeBtn{
    //: if (!_removeBtn) {
    if (!_removeBtn) {
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(digitizerred:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:StringFromIconData(userSkyTitle)] forState:UIControlStateNormal];

    }
    //: return _removeBtn;
    return _removeBtn;
}

//: - (UIButton *)muteBtn{
- (UIButton *)muteBtn{
    //: if (!_muteBtn) {
    if (!_muteBtn) {
        //: _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn addTarget:self action:@selector(texts:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:StringFromIconData(main_dramaticallyKey)] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:StringFromIconData(notiJustifyCostlyTitle)] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}


//: @end
@end

Byte * IconDataToCache(Byte *data) {
    int referent = data[0];
    int save = data[1];
    Byte horrorGoing = data[2];
    int downWake = data[3];
    if (!referent) return data + downWake;
    for (int i = downWake; i < downWake + save; i++) {
        int value = data[i] + horrorGoing;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[downWake + save] = 0;
    return data + downWake;
}

NSString *StringFromIconData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)IconDataToCache(data)];
}
