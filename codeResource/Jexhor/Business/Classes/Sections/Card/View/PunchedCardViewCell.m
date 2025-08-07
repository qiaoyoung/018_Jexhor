
#import <Foundation/Foundation.h>

typedef struct {
    Byte move;
    Byte *deviceContainer;
    unsigned int horror;
	int light;
} StructTeamData;

@interface TeamData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TeamData

+ (instancetype)sharedInstance {
    static TeamData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TeamDataToByte:(StructTeamData *)data {
    for (int i = 0; i < data->horror; i++) {
        data->deviceContainer[i] ^= data->move;
    }
    data->deviceContainer[data->horror] = 0;
	if (data->horror >= 1) {
		data->light = data->deviceContainer[0];
	}
    return data->deviceContainer;
}

- (NSString *)StringFromTeamData:(StructTeamData *)data {
    return [NSString stringWithUTF8String:(char *)[self TeamDataToByte:data]];
}

//: register_avtivity_account
- (NSString *)dreamDeviceStr {
    /* static */ NSString *dreamDeviceStr = nil;
    if (!dreamDeviceStr) {
        StructTeamData value = (StructTeamData){70, (Byte []){52, 35, 33, 47, 53, 50, 35, 52, 25, 39, 48, 50, 47, 48, 47, 50, 63, 25, 39, 37, 37, 41, 51, 40, 50, 252}, 25, 150};
        dreamDeviceStr = [self StringFromTeamData:&value];
    }
    return dreamDeviceStr;
}

//: icon_gender_male
- (NSString *)m_textCellIdent {
    /* static */ NSString *m_textCellIdent = nil;
    if (!m_textCellIdent) {
        StructTeamData value = (StructTeamData){74, (Byte []){35, 41, 37, 36, 21, 45, 47, 36, 46, 47, 56, 21, 39, 43, 38, 47, 255}, 16, 14};
        m_textCellIdent = [self StringFromTeamData:&value];
    }
    return m_textCellIdent;
}

//: data
- (NSString *)kWonderfulKey {
    /* static */ NSString *kWonderfulKey = nil;
    if (!kWonderfulKey) {
        StructTeamData value = (StructTeamData){98, (Byte []){6, 3, 22, 3, 97}, 4, 84};
        kWonderfulKey = [self StringFromTeamData:&value];
    }
    return kWonderfulKey;
}

//: account
- (NSString *)kDateValue {
    /* static */ NSString *kDateValue = nil;
    if (!kDateValue) {
        StructTeamData value = (StructTeamData){79, (Byte []){46, 44, 44, 32, 58, 33, 59, 81}, 7, 188};
        kDateValue = [self StringFromTeamData:&value];
    }
    return kDateValue;
}

//: code
- (NSString *)dream_professionId {
    /* static */ NSString *dream_professionId = nil;
    if (!dream_professionId) {
        StructTeamData value = (StructTeamData){197, (Byte []){166, 170, 161, 160, 26}, 4, 182};
        dream_professionId = [self StringFromTeamData:&value];
    }
    return dream_professionId;
}

//: icon_gender_female
- (NSString *)k_deadUrl {
    /* static */ NSString *k_deadUrl = nil;
    if (!k_deadUrl) {
        StructTeamData value = (StructTeamData){27, (Byte []){114, 120, 116, 117, 68, 124, 126, 117, 127, 126, 105, 68, 125, 126, 118, 122, 119, 126, 125}, 18, 216};
        k_deadUrl = [self StringFromTeamData:&value];
    }
    return k_deadUrl;
}

//: /user/detail
- (NSString *)mainItemGoingStr {
    /* static */ NSString *mainItemGoingStr = nil;
    if (!mainItemGoingStr) {
        StructTeamData value = (StructTeamData){111, (Byte []){64, 26, 28, 10, 29, 64, 11, 10, 27, 14, 6, 3, 212}, 12, 235};
        mainItemGoingStr = [self StringFromTeamData:&value];
    }
    return mainItemGoingStr;
}

//: user_id
- (NSString *)appGovernTickData {
    /* static */ NSString *appGovernTickData = nil;
    if (!appGovernTickData) {
        StructTeamData value = (StructTeamData){200, (Byte []){189, 187, 173, 186, 151, 161, 172, 187}, 7, 217};
        appGovernTickData = [self StringFromTeamData:&value];
    }
    return appGovernTickData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PunchedCardViewCell.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardPortraitCell.h"
#import "PunchedCardViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "ImageView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"

//: @interface NTESCardPortraitCell()
@interface PunchedCardViewCell()

//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) ImageView *avatar;

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
@implementation PunchedCardViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: CGFloat avatarWidth = 55.f;
        CGFloat avatarWidth = 55.f;
        //: _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        _avatar = [[ImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
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
- (void)receive:(DeviceRow *)rowData extra:(UITableView *)tableView{

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
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        DataTeam *info = [[Secret highlight] infoAndStraddleOption:uid item:nil];
        //: self.nameLabel.text = info.showName ;
        self.nameLabel.text = info.showName ;
        //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
        NSString *register_avtivity_account = [BackgroundRandomAttribute content:[[TeamData sharedInstance] dreamDeviceStr]];
        //: self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        //: [self.accountLabel sizeToFit];
        [self.accountLabel sizeToFit];
        //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        [self.avatar image:[NSURL URLWithString:info.avatarUrlString] set:info.avatarImage version:SDWebImageRetryFailed];
        //: if (user.userInfo.gender == NIMUserGenderMale) {
        if (user.userInfo.gender == NIMUserGenderMale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.image = [UIImage imageNamed:[[TeamData sharedInstance] m_textCellIdent]];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else if(user.userInfo.gender == NIMUserGenderFemale) {
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.image = [UIImage imageNamed:[[TeamData sharedInstance] k_deadUrl]];
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
    [self sub:rowData view:@""];

}

//: -(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
-(void)sub:(DeviceRow *)rowData view:(NSString *)account{

    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = uid;
    dict[[[TeamData sharedInstance] appGovernTickData]] = uid;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:YES success:^(id responseObject) {
    [TouchShowMessage gestureMessage:[NSString stringWithFormat:[[TeamData sharedInstance] mainItemGoingStr]] view:dict fort:YES generate:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[[TeamData sharedInstance] dream_professionId]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict already:[[TeamData sharedInstance] kWonderfulKey]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data index:[[TeamData sharedInstance] kDateValue]];
            //: self.accountLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
            NSString *register_avtivity_account = [BackgroundRandomAttribute content:[[TeamData sharedInstance] dreamDeviceStr]];

            //: self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            //: [self.accountLabel sizeToFit];
            [self.accountLabel sizeToFit];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } file:^(id responseObject, NSError *error) {

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