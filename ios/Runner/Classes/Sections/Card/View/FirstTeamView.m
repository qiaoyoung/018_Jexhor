
#import <Foundation/Foundation.h>

@interface ButtonVideoData : NSObject

@end

@implementation ButtonVideoData

+ (Byte *)ButtonVideoDataToCache:(Byte *)data {
    int titleMessage = data[0];
    Byte matter = data[1];
    int imageShow = data[2];
    for (int i = imageShow; i < imageShow + titleMessage; i++) {
        int value = data[i] - matter;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[imageShow + titleMessage] = 0;
    return data + imageShow;
}

+ (NSString *)StringFromButtonVideoData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ButtonVideoDataToCache:data]];
}

//: icon_gender_female
+ (NSString *)dreamSuccessName {
    /* static */ NSString *dreamSuccessName = nil;
    if (!dreamSuccessName) {
        Byte value[] = {18, 45, 7, 61, 249, 188, 214, 150, 144, 156, 155, 140, 148, 146, 155, 145, 146, 159, 140, 147, 146, 154, 142, 153, 146, 158};
        dreamSuccessName = [self StringFromButtonVideoData:value];
    }
    return dreamSuccessName;
}

//: /user/detail
+ (NSString *)appColorParentName {
    /* static */ NSString *appColorParentName = nil;
    if (!appColorParentName) {
        Byte value[] = {12, 68, 5, 127, 228, 115, 185, 183, 169, 182, 115, 168, 169, 184, 165, 173, 176, 248};
        appColorParentName = [self StringFromButtonVideoData:value];
    }
    return appColorParentName;
}

//: data
+ (NSString *)k_commentName {
    /* static */ NSString *k_commentName = nil;
    if (!k_commentName) {
        Byte value[] = {4, 20, 8, 114, 102, 39, 111, 40, 120, 117, 136, 117, 62};
        k_commentName = [self StringFromButtonVideoData:value];
    }
    return k_commentName;
}

//: user_id
+ (NSString *)kOmitTitle {
    /* static */ NSString *kOmitTitle = nil;
    if (!kOmitTitle) {
        Byte value[] = {7, 49, 6, 138, 22, 226, 166, 164, 150, 163, 144, 154, 149, 25};
        kOmitTitle = [self StringFromButtonVideoData:value];
    }
    return kOmitTitle;
}

//: register_avtivity_account
+ (NSString *)appColorName {
    /* static */ NSString *appColorName = nil;
    if (!appColorName) {
        Byte value[] = {25, 20, 13, 195, 223, 74, 176, 174, 237, 89, 159, 57, 50, 134, 121, 123, 125, 135, 136, 121, 134, 115, 117, 138, 136, 125, 138, 125, 136, 141, 115, 117, 119, 119, 131, 137, 130, 136, 91};
        appColorName = [self StringFromButtonVideoData:value];
    }
    return appColorName;
}

//: account
+ (NSString *)m_lengthAtName {
    /* static */ NSString *m_lengthAtName = nil;
    if (!m_lengthAtName) {
        Byte value[] = {7, 85, 8, 26, 63, 118, 35, 226, 182, 184, 184, 196, 202, 195, 201, 143};
        m_lengthAtName = [self StringFromButtonVideoData:value];
    }
    return m_lengthAtName;
}

//: icon_gender_male
+ (NSString *)userAddText {
    /* static */ NSString *userAddText = nil;
    if (!userAddText) {
        Byte value[] = {16, 40, 13, 74, 27, 120, 205, 201, 216, 170, 1, 119, 228, 145, 139, 151, 150, 135, 143, 141, 150, 140, 141, 154, 135, 149, 137, 148, 141, 29};
        userAddText = [self StringFromButtonVideoData:value];
    }
    return userAddText;
}

//: code
+ (NSString *)user_thanData {
    /* static */ NSString *user_thanData = nil;
    if (!user_thanData) {
        Byte value[] = {4, 39, 13, 131, 8, 105, 30, 170, 230, 97, 110, 220, 102, 138, 150, 139, 140, 189};
        user_thanData = [self StringFromButtonVideoData:value];
    }
    return user_thanData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FirstTeamView.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardPortraitCell.h"
#import "FirstTeamView.h"
//: #import "WorkAvatarImageView.h"
#import "ButtonControl.h"
//: #import "WorkCommonTableData.h"
#import "WorkCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"

//: @interface NTESCardPortraitCell()
@interface FirstTeamView()

//: @property (nonatomic,strong) WorkAvatarImageView *avatar;
@property (nonatomic,strong) ButtonControl *avatar;

//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;

//: @property (nonatomic,strong) UILabel *nickNameLabel;
@property (nonatomic,strong) UILabel *nickNameLabel;

//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *genderIcon;
@property (nonatomic,strong) UIImageView *genderIcon;

//: @end
@end

//: @implementation NTESCardPortraitCell
@implementation FirstTeamView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: CGFloat avatarWidth = 55.f;
        CGFloat avatarWidth = 55.f;
        //: _avatar = [[WorkAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        _avatar = [[ButtonControl alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.font = [UIFont systemFontOfSize:18.f];
        _nameLabel.font = [UIFont systemFontOfSize:18.f];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];
        //: _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        //: _nickNameLabel.textColor = [UIColor grayColor];
        _nickNameLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_nickNameLabel];
        [self.contentView addSubview:_nickNameLabel];
        //: _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _accountLabel.font = [UIFont systemFontOfSize:13.f];
        _accountLabel.font = [UIFont systemFontOfSize:13.f];
        //: _accountLabel.textColor = [UIColor grayColor];
        _accountLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_accountLabel];
        [self.contentView addSubview:_accountLabel];
        //: _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: [self.contentView addSubview:_genderIcon];
        [self.contentView addSubview:_genderIcon];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)demonstrate:(ConstituentRow *)rowData gray:(UITableView *)tableView{

    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: if ([uid isKindOfClass:[NSString class]]) {
    if ([uid isKindOfClass:[NSString class]]) {
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        ConfirmationInfo *info = [[MessageContent secretResolution] recent:uid blue:nil];
        //: self.nameLabel.text = info.showName ;
        self.nameLabel.text = info.showName ;
        //: NSString *register_avtivity_account = [WorkLanguageManager getTextWithKey:@"register_avtivity_account"];
        NSString *register_avtivity_account = [InputRed preserve:[ButtonVideoData appColorName]];
        //: self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        //: [self.accountLabel sizeToFit];
        [self.accountLabel sizeToFit];
        //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        [self.avatar title:[NSURL URLWithString:info.avatarUrlString] myPin:info.avatarImage image:SDWebImageRetryFailed];
        //: if (user.userInfo.gender == NIMUserGenderMale) {
        if (user.userInfo.gender == NIMUserGenderMale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.image = [UIImage imageNamed:[ButtonVideoData userAddText]];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else if(user.userInfo.gender == NIMUserGenderFemale) {
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.image = [UIImage imageNamed:[ButtonVideoData dreamSuccessName]];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else {
        else {
            //: _genderIcon.hidden = YES;
            _genderIcon.hidden = YES;
        }
        //: NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        //: _nickNameLabel.hidden = !user.alias.length;
        _nickNameLabel.hidden = !user.alias.length;

        //: _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        //: [_nickNameLabel sizeToFit];
        [_nickNameLabel sizeToFit];
    }
    //: self.accountLabel.hidden = YES;
    self.accountLabel.hidden = YES;
    //: [self refreshData:rowData account:@""];
    [self link:rowData max:@""];

}

//: -(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
-(void)link:(ConstituentRow *)rowData max:(NSString *)account{

    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = uid;
    dict[[ButtonVideoData kOmitTitle]] = uid;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManager exhibitBackground:[NSString stringWithFormat:[ButtonVideoData appColorParentName]] queryedBlockOf:dict managerToObject:YES presentResponseSuccess:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[ButtonVideoData user_thanData]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict objectColor:[ButtonVideoData k_commentName]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data route:[ButtonVideoData m_lengthAtName]];
            //: self.accountLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            //: NSString *register_avtivity_account = [WorkLanguageManager getTextWithKey:@"register_avtivity_account"];
            NSString *register_avtivity_account = [InputRed preserve:[ButtonVideoData appColorName]];

            //: self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            //: [self.accountLabel sizeToFit];
            [self.accountLabel sizeToFit];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } jump:^(id responseObject, NSError *error) {

    //: }];
    }];

}
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.left = 30;
    self.avatar.left = 30;
    //: self.avatar.centerY = self.height * .5f;
    self.avatar.centerY = self.height * .5f;

    //: CGFloat scale = self.width / 320;
    CGFloat scale = self.width / 320;
    //: CGFloat maxTextLabelWidth = 180 * scale;
    CGFloat maxTextLabelWidth = 180 * scale;
    //: [self.nameLabel sizeToFit];
    [self.nameLabel sizeToFit];
    //: self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    //: self.nameLabel.left = self.avatar.right + 12;
    self.nameLabel.left = self.avatar.right + 12;
    //: self.nameLabel.top = 22;
    self.nameLabel.top = 22;

    //: if (self.nickNameLabel.hidden) {
    if (self.nickNameLabel.hidden) {
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.bottom = self.height - 22;
        self.accountLabel.bottom = self.height - 22;
    //: }else{
    }else{
        //: self.nickNameLabel.left = self.nameLabel.left;
        self.nickNameLabel.left = self.nameLabel.left;
        //: self.nickNameLabel.bottom = self.height - 22;
        self.nickNameLabel.bottom = self.height - 22;
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
        self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
    }

    //: self.genderIcon.left = self.nameLabel.right + 12;
    self.genderIcon.left = self.nameLabel.right + 12;
    //: self.genderIcon.centerY = self.nameLabel.centerY;
    self.genderIcon.centerY = self.nameLabel.centerY;
}

//: @end
@end
