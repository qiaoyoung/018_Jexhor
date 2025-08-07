
#import <Foundation/Foundation.h>

@interface RegularPolygonData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RegularPolygonData

+ (instancetype)sharedInstance {
    static RegularPolygonData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RegularPolygonDataToCache:(Byte *)data {
    int uniteBattery = data[0];
    int datePic = data[1];
    for (int i = 0; i < uniteBattery / 2; i++) {
        int begin = datePic + i;
        int end = datePic + uniteBattery - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[datePic + uniteBattery] = 0;
    return data + datePic;
}

- (NSString *)StringFromRegularPolygonData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RegularPolygonDataToCache:data]];
}  

//: user
- (NSString *)userConvinceContent {
    /* static */ NSString *userConvinceContent = nil;
    if (!userConvinceContent) {
        Byte value[] = {4, 8, 227, 179, 185, 167, 113, 178, 114, 101, 115, 117, 238};
        userConvinceContent = [self StringFromRegularPolygonData:value];
    }
    return userConvinceContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PunchCardView.m
// MessageContent
//
//  Created by chris on 16/5/10.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMemberCardHeaderCell.h"
#import "PunchCardView.h"
//: #import "FFFAvatarImageView.h"
#import "ButtonControl.h"
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitUtil.h"
#import "WantUtil.h"

//: @interface FFFTeamMemberCardHeaderCell()
@interface PunchCardView()

//: @property (nonatomic,strong) FFFAvatarImageView *avatarView;
@property (nonatomic,strong) ButtonControl *avatarView;

//: @property (nonatomic,strong) UILabel *nickLabel;
@property (nonatomic,strong) UILabel *nickLabel;

//: @end
@end

//: @implementation FFFTeamMemberCardHeaderCell
@implementation PunchCardView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarView];
        [self.contentView addSubview:self.avatarView];
        //: [self.contentView addSubview:self.nickLabel];
        [self.contentView addSubview:self.nickLabel];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;{
- (void)demonstrate:(ConstituentRow *)rowData gray:(UITableView *)tableView;{
    //: FFFKitInfo *userInfo = rowData.extraInfo[@"user"];
    ConfirmationInfo *userInfo = rowData.extraInfo[[[RegularPolygonData sharedInstance] userConvinceContent]];
    //: NSLog(@"userInfo===%@",userInfo);
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (userInfo.avatarUrlString.length) {
    if (userInfo.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
        avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
    }
    //: [self.avatarView nim_setImageWithURL:avatarURL placeholderImage:userInfo.avatarImage];
    [self.avatarView media:avatarURL docketWithinImage:userInfo.avatarImage];
    //: self.nickLabel.text = userInfo.showName;
    self.nickLabel.text = userInfo.showName;
    //: [self.nickLabel sizeToFit];
    [self.nickLabel sizeToFit];
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatarView.nim_top = 52.f;
    self.avatarView.nim_top = 52.f;
    //: self.avatarView.nim_centerX = self.nim_width * .5f;
    self.avatarView.nim_centerX = self.nim_width * .5f;
    //: self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    //: self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
    self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
}


//: - (FFFAvatarImageView *)avatarView
- (ButtonControl *)avatarView
{
    //: if (!_avatarView) {
    if (!_avatarView) {
        //: _avatarView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        _avatarView = [[ButtonControl alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        //: _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    //: return _avatarView;
    return _avatarView;
}

//: - (UILabel *)nickLabel
- (UILabel *)nickLabel
{
    //: if (!_nickLabel) {
    if (!_nickLabel) {
        //: _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        //: _nickLabel.font = [UIFont systemFontOfSize:17];
        _nickLabel.font = [UIFont systemFontOfSize:17];
        //: _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
        _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
    }
    //: return _nickLabel;
    return _nickLabel;
}


//: @end
@end