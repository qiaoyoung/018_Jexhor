
#import <Foundation/Foundation.h>
typedef struct {
    Byte collar;
    Byte *exposeQuip;
    unsigned int cord;
    Byte elaborateness;
	int insideDifficult;
	int choiceColor;
} SeizeData;

NSString *StringFromSeizeData(SeizeData *data);


//: yyyy/MM/dd
SeizeData appPenaltyShowUrl = (SeizeData){247, (Byte []){142, 142, 142, 142, 216, 186, 186, 216, 147, 147, 187}, 10, 184, 124, 202};

//: head_default
SeizeData main_justifyId = (SeizeData){141, (Byte []){229, 232, 236, 233, 210, 233, 232, 235, 236, 248, 225, 249, 197}, 12, 173, 31, 74};

//: 未知时间创建
SeizeData main_milkFormat = (SeizeData){126, (Byte []){152, 226, 212, 153, 225, 219, 152, 233, 200, 151, 233, 202, 155, 246, 229, 155, 197, 196, 123}, 18, 188, 81, 166};

//: 创建于%@
SeizeData main_economicalPath = (SeizeData){175, (Byte []){74, 39, 52, 74, 20, 21, 75, 21, 33, 138, 239, 164}, 11, 185, 73, 69};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PushMessageView.m
// Secret
//
//  Created by Netease on 2019/6/10.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushTeamCardHeaderView.h"
#import "PushMessageView.h"
//: #import "PushAvatarImageView.h"
#import "ImageView.h"
//: #import "PushKitUtil.h"
#import "KitUtil.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"

//: @interface PushTeamCardHeaderView ()
@interface PushMessageView ()

//: @property (nonatomic,strong) PushAvatarImageView *avatar;
@property (nonatomic,strong) ImageView *avatar;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *numberLabel;
@property (nonatomic,strong) UILabel *numberLabel;

//: @property (nonatomic,strong) UILabel *createTimeLabel;
@property (nonatomic,strong) UILabel *createTimeLabel;

//: @end
@end

//: @implementation PushTeamCardHeaderView
@implementation PushMessageView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self addSubview:self.avatar];
        [self addSubview:self.avatar];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.numberLabel];
        [self addSubview:self.numberLabel];
        //: [self addSubview:self.createTimeLabel];
        [self addSubview:self.createTimeLabel];
        //: self.backgroundColor = [UIColor colorWithRed:((float)((0xecf1f5 & 0xFF0000) >> 16))/255.0 green:((float)((0xecf1f5 & 0x00FF00) >> 8))/255.0 blue:((float)(0xecf1f5 & 0x0000FF))/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:((float)((0xecf1f5 & 0xFF0000) >> 16))/255.0 green:((float)((0xecf1f5 & 0x00FF00) >> 8))/255.0 blue:((float)(0xecf1f5 & 0x0000FF))/255.0 alpha:1.0];
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: _titleLabel.nim_width = _titleLabel.nim_width > 200 ? 200 : self.titleLabel.nim_width;
    _titleLabel.nim_width = _titleLabel.nim_width > 200 ? 200 : self.titleLabel.nim_width;
    //: _avatar.nim_left = 20;
    _avatar.nim_left = 20;
    //: _avatar.nim_top = 25;
    _avatar.nim_top = 25;
    //: _titleLabel.nim_left = _avatar.nim_right + 10;
    _titleLabel.nim_left = _avatar.nim_right + 10;
    //: _titleLabel.nim_top = _avatar.nim_top;
    _titleLabel.nim_top = _avatar.nim_top;
    //: _numberLabel.nim_left = _titleLabel.nim_left;
    _numberLabel.nim_left = _titleLabel.nim_left;
    //: _numberLabel.nim_bottom = _avatar.nim_bottom;
    _numberLabel.nim_bottom = _avatar.nim_bottom;
    //: _createTimeLabel.nim_left = _numberLabel.nim_right + 10;
    _createTimeLabel.nim_left = _numberLabel.nim_right + 10;
    //: _createTimeLabel.nim_bottom = _numberLabel.nim_bottom;
    _createTimeLabel.nim_bottom = _numberLabel.nim_bottom;
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(size.width, 89);
    return CGSizeMake(size.width, 89);
}

//: #pragma mark - Public
#pragma mark - Public
//: - (void)setTeam:(NIMTeam *)team {
- (void)setTeam:(NIMTeam *)team {
    //: _team = team;
    _team = team;

    //avatar
    //: NSURL *avatarUrl = team.avatarUrl.length? [NSURL URLWithString:team.avatarUrl] : nil;
    NSURL *avatarUrl = team.avatarUrl.length? [NSURL URLWithString:team.avatarUrl] : nil;
    //: [_avatar nim_setImageWithURL:avatarUrl placeholderImage:[UIImage imageNamed:@"head_default"]];
    [_avatar everyBarImage:avatarUrl messageColor:[UIImage imageNamed:StringFromSeizeData(&main_justifyId)]];

    //title
    //: _titleLabel.text = team.teamName;
    _titleLabel.text = team.teamName;
    //: [_titleLabel sizeToFit];
    [_titleLabel sizeToFit];

    //teamId
    //: _numberLabel.text = team.teamId;
    _numberLabel.text = team.teamId;
    //: [_numberLabel sizeToFit];
    [_numberLabel sizeToFit];

    //create time
    //: _createTimeLabel.text = [self formatTime:team.createTime];
    _createTimeLabel.text = [self characteristicRootOfASquareMatrix:team.createTime];
    //: [_createTimeLabel sizeToFit];
    [_createTimeLabel sizeToFit];

    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: #pragma mark - Private
#pragma mark - Private
//: - (NSString*)formatTime:(NSTimeInterval)time {
- (NSString*)characteristicRootOfASquareMatrix:(NSTimeInterval)time {
    //: NSTimeInterval timestamp = time;
    NSTimeInterval timestamp = time;
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: [dateFormatter setDateFormat:@"yyyy/MM/dd"];
    [dateFormatter setDateFormat:StringFromSeizeData(&appPenaltyShowUrl)];
    //: NSString *dateString = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timestamp]];
    NSString *dateString = [dateFormatter stringFromDate:[NSDate dateWithTimeIntervalSince1970:timestamp]];
    //: if (!dateString.length) {
    if (!dateString.length) {
        //: return @"未知时间创建".nim_localized;
        return StringFromSeizeData(&main_milkFormat).minIn;
    }
    //: return [NSString stringWithFormat:@"创建于%@".nim_localized,dateString];
    return [NSString stringWithFormat:StringFromSeizeData(&main_economicalPath).minIn,dateString];
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)onTouchAvatar:(id)sender
- (void)mobiled:(id)sender
{
    //: if (_delegate && [_delegate respondsToSelector:@selector(onTouchAvatar:)]) {
    if (_delegate && [_delegate respondsToSelector:@selector(mobiled:)]) {
        //: [_delegate onTouchAvatar:sender];
        [_delegate mobiled:sender];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (PushAvatarImageView *)avatar {
- (ImageView *)avatar {
    //: if (!_avatar) {
    if (!_avatar) {
        //: _avatar = [[PushAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _avatar = [[ImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [_avatar addTarget:self
        [_avatar addTarget:self
                    //: action:@selector(onTouchAvatar:)
                    action:@selector(mobiled:)
          //: forControlEvents:UIControlEventTouchUpInside];
          forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _avatar;
    return _avatar;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.font = [UIFont systemFontOfSize:17.f];
        _titleLabel.font = [UIFont systemFontOfSize:17.f];
        //: _titleLabel.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
        _titleLabel.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)numberLabel {
- (UILabel *)numberLabel {
    //: if (!_numberLabel) {
    if (!_numberLabel) {
        //: _numberLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _numberLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _numberLabel.backgroundColor = [UIColor clearColor];
        _numberLabel.backgroundColor = [UIColor clearColor];
        //: _numberLabel.font = [UIFont systemFontOfSize:14.f];
        _numberLabel.font = [UIFont systemFontOfSize:14.f];
        //: _numberLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
        _numberLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _numberLabel;
    return _numberLabel;
}

//: - (UILabel *)createTimeLabel {
- (UILabel *)createTimeLabel {
    //: if (!_createTimeLabel) {
    if (!_createTimeLabel) {
        //: _createTimeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _createTimeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        //: _createTimeLabel.backgroundColor = [UIColor clearColor];
        _createTimeLabel.backgroundColor = [UIColor clearColor];
        //: _createTimeLabel.font = [UIFont systemFontOfSize:14.f];
        _createTimeLabel.font = [UIFont systemFontOfSize:14.f];
        //: _createTimeLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
        _createTimeLabel.textColor = [UIColor colorWithRed:((float)((0x999999 & 0xFF0000) >> 16))/255.0 green:((float)((0x999999 & 0x00FF00) >> 8))/255.0 blue:((float)(0x999999 & 0x0000FF))/255.0 alpha:1.0];
    }
    //: return _createTimeLabel;
    return _createTimeLabel;
}

//: @end
@end

Byte *SeizeDataToByte(SeizeData *data) {
    if (data->elaborateness < 130) return data->exposeQuip;
    for (int i = 0; i < data->cord; i++) {
        data->exposeQuip[i] ^= data->collar;
    }
    data->exposeQuip[data->cord] = 0;
    data->elaborateness = 27;
	if (data->cord >= 2) {
		data->insideDifficult = data->exposeQuip[0];
		data->choiceColor = data->exposeQuip[1];
	}
    return data->exposeQuip;
}

NSString *StringFromSeizeData(SeizeData *data) {
    return [NSString stringWithUTF8String:(char *)SeizeDataToByte(data)];
}
