
#import <Foundation/Foundation.h>

typedef struct {
    Byte critical;
    Byte *destinationInput;
    unsigned int totalma;
	int islet;
	int legislation;
} StructParquetData;

@interface ParquetData : NSObject

+ (instancetype)sharedInstance;

//: user
@property (nonatomic, copy) NSString *kTextMessage;

@end

@implementation ParquetData

+ (instancetype)sharedInstance {
    static ParquetData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ParquetDataToByte:(StructParquetData *)data {
    for (int i = 0; i < data->totalma; i++) {
        data->destinationInput[i] ^= data->critical;
    }
    data->destinationInput[data->totalma] = 0;
	if (data->totalma >= 2) {
		data->islet = data->destinationInput[0];
		data->legislation = data->destinationInput[1];
	}
    return data->destinationInput;
}

- (NSString *)StringFromParquetData:(StructParquetData *)data {
    return [NSString stringWithUTF8String:(char *)[self ParquetDataToByte:data]];
}

//: user
- (NSString *)kTextMessage {
    if (!_kTextMessage) {
        StructParquetData value = (StructParquetData){220, (Byte []){169, 175, 185, 174, 44}, 4, 120, 243};
        _kTextMessage = [self StringFromParquetData:&value];
    }
    return _kTextMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BuildView.m
// Secret
//
//  Created by chris on 16/5/10.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamMemberCardHeaderCell.h"
#import "BuildView.h"
//: #import "FFFAvatarImageView.h"
#import "ImageView.h"
//: #import "FFFUsrInfoData.h"
#import "FFFUsrInfoData.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitUtil.h"
#import "KitUtil.h"

//: @interface FFFTeamMemberCardHeaderCell()
@interface BuildView()

//: @property (nonatomic,strong) FFFAvatarImageView *avatarView;
@property (nonatomic,strong) ImageView *avatarView;

//: @property (nonatomic,strong) UILabel *nickLabel;
@property (nonatomic,strong) UILabel *nickLabel;

//: @end
@end

//: @implementation FFFTeamMemberCardHeaderCell
@implementation BuildView

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
- (void)receive:(DeviceRow *)rowData extra:(UITableView *)tableView;{
    //: FFFKitInfo *userInfo = rowData.extraInfo[@"user"];
    DataTeam *userInfo = rowData.extraInfo[[ParquetData sharedInstance].kTextMessage];
    //: NSLog(@"userInfo===%@",userInfo);
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (userInfo.avatarUrlString.length) {
    if (userInfo.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
        avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
    }
    //: [self.avatarView nim_setImageWithURL:avatarURL placeholderImage:userInfo.avatarImage];
    [self.avatarView everyBarImage:avatarURL messageColor:userInfo.avatarImage];
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
- (ImageView *)avatarView
{
    //: if (!_avatarView) {
    if (!_avatarView) {
        //: _avatarView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        _avatarView = [[ImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
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