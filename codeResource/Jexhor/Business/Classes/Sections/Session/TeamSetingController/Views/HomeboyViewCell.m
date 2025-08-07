
#import <Foundation/Foundation.h>

@interface TicketData : NSObject

+ (instancetype)sharedInstance;

//: group_mute_no
@property (nonatomic, copy) NSString *m_premiumName;

//: 5D5F66
@property (nonatomic, copy) NSString *mainMessageContent;

//: #F6F6F6
@property (nonatomic, copy) NSString *notiEmergencyMediaName;

//: #000000
@property (nonatomic, copy) NSString *dreamLabelValue;

//: group_mute
@property (nonatomic, copy) NSString *notiMustQuickTitle;

//: group_remove
@property (nonatomic, copy) NSString *mBarrelAcheTrueName;

@end

@implementation TicketData

+ (instancetype)sharedInstance {
    static TicketData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TicketDataToCache:(Byte *)data {
    int youthFile = data[0];
    Byte inventoryAccounting = data[1];
    int givingBarrel = data[2];
    for (int i = givingBarrel; i < givingBarrel + youthFile; i++) {
        int value = data[i] - inventoryAccounting;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[givingBarrel + youthFile] = 0;
    return data + givingBarrel;
}

- (NSString *)StringFromTicketData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TicketDataToCache:data]];
}

//: group_mute
- (NSString *)notiMustQuickTitle {
    if (!_notiMustQuickTitle) {
        Byte value[] = {10, 25, 3, 128, 139, 136, 142, 137, 120, 134, 142, 141, 126, 137};
        _notiMustQuickTitle = [self StringFromTicketData:value];
    }
    return _notiMustQuickTitle;
}

//: group_remove
- (NSString *)mBarrelAcheTrueName {
    if (!_mBarrelAcheTrueName) {
        Byte value[] = {12, 65, 8, 172, 21, 172, 132, 226, 168, 179, 176, 182, 177, 160, 179, 166, 174, 176, 183, 166, 74};
        _mBarrelAcheTrueName = [self StringFromTicketData:value];
    }
    return _mBarrelAcheTrueName;
}

//: #F6F6F6
- (NSString *)notiEmergencyMediaName {
    if (!_notiEmergencyMediaName) {
        Byte value[] = {7, 91, 4, 135, 126, 161, 145, 161, 145, 161, 145, 236};
        _notiEmergencyMediaName = [self StringFromTicketData:value];
    }
    return _notiEmergencyMediaName;
}

//: #000000
- (NSString *)dreamLabelValue {
    if (!_dreamLabelValue) {
        Byte value[] = {7, 44, 9, 212, 204, 195, 234, 200, 149, 79, 92, 92, 92, 92, 92, 92, 136};
        _dreamLabelValue = [self StringFromTicketData:value];
    }
    return _dreamLabelValue;
}

//: 5D5F66
- (NSString *)mainMessageContent {
    if (!_mainMessageContent) {
        Byte value[] = {6, 6, 6, 24, 122, 49, 59, 74, 59, 76, 60, 60, 241};
        _mainMessageContent = [self StringFromTicketData:value];
    }
    return _mainMessageContent;
}

//: group_mute_no
- (NSString *)m_premiumName {
    if (!_m_premiumName) {
        Byte value[] = {13, 19, 12, 2, 56, 104, 76, 209, 68, 78, 143, 140, 122, 133, 130, 136, 131, 114, 128, 136, 135, 120, 114, 129, 130, 74};
        _m_premiumName = [self StringFromTicketData:value];
    }
    return _m_premiumName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  HomeboyViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFGroupMemberTableViewCell.h"
#import "HomeboyViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ButtonControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "FFFTeamHelper.h"
#import "NameSendStyle.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"

//: @interface FFFGroupMemberTableViewCell()
@interface HomeboyViewCell()

//: @property (nonatomic,strong) id<FFFKitCardHeaderData> data;
@property (nonatomic,strong) id<FFFKitCardHeaderData> data;

//: @end
@end

//: @implementation FFFGroupMemberTableViewCell
@implementation HomeboyViewCell

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
        [self initChange];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)byColor:(UITableView *)tableView
{
    //: static NSString *identifier = @"FFFGroupMemberTableViewCell";
    static NSString *identifier = @"HomeboyViewCell";
    //: FFFGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    HomeboyViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[FFFGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[HomeboyViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        cell.backgroundColor = [UIColor ground:[TicketData sharedInstance].notiEmergencyMediaName];
        //: cell.layer.cornerRadius = 16;
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initChange {

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
    _titleLabel.textColor = [UIColor ground:[TicketData sharedInstance].dreamLabelValue];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    _subtitleLabel.textColor = [UIColor ground:[TicketData sharedInstance].mainMessageContent];
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
- (void)characteristicRootOfASquareMatrix:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)setUserInfo:(FFFKitInfo *)userInfo
- (void)setUserInfo:(ConfirmationInfo *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)maturityDate:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(untilImage:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate untilImage:self.userId];
    }
}
//: - (void)onTouchMuteBtn:(id)sender{
- (void)indicators:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(untilImage:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate text:self.userId analyze:YES];
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
        [_removeBtn addTarget:self action:@selector(maturityDate:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:[TicketData sharedInstance].mBarrelAcheTrueName] forState:UIControlStateNormal];

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
        [_muteBtn addTarget:self action:@selector(indicators:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:[TicketData sharedInstance].m_premiumName] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:[TicketData sharedInstance].notiMustQuickTitle] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}


//: @end
@end