
#import <Foundation/Foundation.h>

typedef struct {
    Byte saveTeam;
    Byte *statusDisappointed;
    unsigned int signalingMessage;
} StructNameParticipateData;

@interface NameParticipateData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation NameParticipateData

+ (instancetype)sharedInstance {
    static NameParticipateData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)NameParticipateDataToByte:(StructNameParticipateData *)data {
    for (int i = 0; i < data->signalingMessage; i++) {
        data->statusDisappointed[i] ^= data->saveTeam;
    }
    data->statusDisappointed[data->signalingMessage] = 0;
    return data->statusDisappointed;
}

- (NSString *)StringFromNameParticipateData:(StructNameParticipateData *)data {
    return [NSString stringWithUTF8String:(char *)[self NameParticipateDataToByte:data]];
}

//: activity_comment_setting_exit
- (NSString *)user_participateData {
    /* static */ NSString *user_participateData = nil;
    if (!user_participateData) {
        StructNameParticipateData value = (StructNameParticipateData){65, (Byte []){32, 34, 53, 40, 55, 40, 53, 56, 30, 34, 46, 44, 44, 36, 47, 53, 30, 50, 36, 53, 53, 40, 47, 38, 30, 36, 57, 40, 53, 113}, 29};
        user_participateData = [self StringFromNameParticipateData:&value];
    }
    return user_participateData;
}

//: _UITableViewCellSeparatorView
- (NSString *)showColdName {
    /* static */ NSString *showColdName = nil;
    if (!showColdName) {
        StructNameParticipateData value = (StructNameParticipateData){158, (Byte []){193, 203, 215, 202, 255, 252, 242, 251, 200, 247, 251, 233, 221, 251, 242, 242, 205, 251, 238, 255, 236, 255, 234, 241, 236, 200, 247, 251, 233, 22}, 29};
        showColdName = [self StringFromNameParticipateData:&value];
    }
    return showColdName;
}

//: icon_me_arrow
- (NSString *)userRoughTitle {
    /* static */ NSString *userRoughTitle = nil;
    if (!userRoughTitle) {
        StructNameParticipateData value = (StructNameParticipateData){233, (Byte []){128, 138, 134, 135, 182, 132, 140, 182, 136, 155, 155, 134, 158, 240}, 13};
        userRoughTitle = [self StringFromNameParticipateData:&value];
    }
    return userRoughTitle;
}

//: #5D5F66
- (NSString *)m_sessionTitle {
    /* static */ NSString *m_sessionTitle = nil;
    if (!m_sessionTitle) {
        StructNameParticipateData value = (StructNameParticipateData){253, (Byte []){222, 200, 185, 200, 187, 203, 203, 225}, 7};
        m_sessionTitle = [self StringFromNameParticipateData:&value];
    }
    return m_sessionTitle;
}

//: #A148FF
- (NSString *)show_imagePath {
    /* static */ NSString *show_imagePath = nil;
    if (!show_imagePath) {
        StructNameParticipateData value = (StructNameParticipateData){133, (Byte []){166, 196, 180, 177, 189, 195, 195, 61}, 7};
        show_imagePath = [self StringFromNameParticipateData:&value];
    }
    return show_imagePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlockView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSafetyTableViewCell.h"
#import "BlockView.h"

//: @implementation NTESSafetyTableViewCell
@implementation BlockView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initCellKey];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)message:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESSafetyTableViewCell";
    static NSString *identifier = @"BlockView";
    //: NTESSafetyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    BlockView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESSafetyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[BlockView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initCellKey {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];
    //: [self.contentView addSubview:self.labGoout];
    [self.contentView addSubview:self.labGoout];
    //: [self.contentView addSubview:self.pushSwitch];
    [self.contentView addSubview:self.pushSwitch];
    //: [self.contentView addSubview:self.labSubtitle];
    [self.contentView addSubview:self.labSubtitle];
    //: self.labGoout.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 56);
    self.labGoout.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 56);
    //: self.iconImageView.frame = CGRectMake(15, 16, 24, 24);
    self.iconImageView.frame = CGRectMake(15, 16, 24, 24);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 0, 12, 12);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 12, 0, 12, 12);

    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 150, 21);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 150, 21);
    //: self.labSubtitle.frame = CGRectMake(self.titleLabel.right-40, 0, self.arrowsImageView.left - self.titleLabel.right+30, 20);
    self.labSubtitle.frame = CGRectMake(self.titleLabel.right-40, 0, self.arrowsImageView.left - self.titleLabel.right+30, 20);

    //: self.pushSwitch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 50, 12, 50, 30);
    self.pushSwitch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width - 30 - 15 - 50, 12, 50, 30);
    //: self.titleLabel.centerY = self.arrowsImageView.centerY = self.labSubtitle.centerY = self.iconImageView.centerY;
    self.titleLabel.centerY = self.arrowsImageView.centerY = self.labSubtitle.centerY = self.iconImageView.centerY;

}


//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)with:(NSDictionary *)information {
    //: return 56.f;
    return 56.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([[NameParticipateData sharedInstance] showColdName]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_me_arrow"];
        _arrowsImageView.image = [UIImage imageNamed:[[NameParticipateData sharedInstance] userRoughTitle]];
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}


//: - (UILabel *)labGoout {
- (UILabel *)labGoout {
    //: if (!_labGoout) {
    if (!_labGoout) {
        //: _labGoout = [[UILabel alloc] init];
        _labGoout = [[UILabel alloc] init];
        //: _labGoout.font = [UIFont systemFontOfSize:16.f];
        _labGoout.font = [UIFont systemFontOfSize:16.f];
        //: _labGoout.textColor = [UIColor colorWithAlpha:1.0 red:255/255.0 green:72/255.0 blue:61/255.0];
        _labGoout.textColor = [UIColor record:1.0 green:255/255.0 showOff:72/255.0 tag:61/255.0];
//        _labGoout.textColor = [UIColor redColor];
        //: _labGoout.textAlignment = NSTextAlignmentCenter;
        _labGoout.textAlignment = NSTextAlignmentCenter;
        //: _labGoout.text = [PushLanguageManager getTextWithKey:@"activity_comment_setting_exit"];
        _labGoout.text = [BackgroundRandomAttribute content:[[NameParticipateData sharedInstance] user_participateData]];
        //: _labGoout.hidden = YES;
        _labGoout.hidden = YES;
    }
    //: return _labGoout;
    return _labGoout;
}

//: - (UILabel *)labSubtitle {
- (UILabel *)labSubtitle {
    //: if (!_labSubtitle) {
    if (!_labSubtitle) {
        //: _labSubtitle = [[UILabel alloc] init];
        _labSubtitle = [[UILabel alloc] init];
        //: _labSubtitle.font = [UIFont systemFontOfSize:14.f];
        _labSubtitle.font = [UIFont systemFontOfSize:14.f];
        //: _labSubtitle.textColor = [UIColor colorWithHexString:@"#5D5F66"];
        _labSubtitle.textColor = [UIColor user:[[NameParticipateData sharedInstance] m_sessionTitle]];
        //: _labSubtitle.textAlignment = NSTextAlignmentRight;
        _labSubtitle.textAlignment = NSTextAlignmentRight;
        //: _labSubtitle.hidden = YES;
        _labSubtitle.hidden = YES;
    }
    //: return _labSubtitle;
    return _labSubtitle;
}

//: - (UISwitch *)pushSwitch {
- (UISwitch *)pushSwitch {
    //: if (!_pushSwitch) {
    if (!_pushSwitch) {
        //: _pushSwitch = [[UISwitch alloc] init];
        _pushSwitch = [[UISwitch alloc] init];
        //: [_pushSwitch setOnTintColor: [UIColor colorWithHexString:@"#A148FF"]];
        [_pushSwitch setOnTintColor: [UIColor user:[[NameParticipateData sharedInstance] show_imagePath]]];
        //: _pushSwitch.hidden = YES;
        _pushSwitch.hidden = YES;
    }
    //: return _pushSwitch;
    return _pushSwitch;
}


//: @end
@end
