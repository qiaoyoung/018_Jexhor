
#import <Foundation/Foundation.h>

@interface ItemHideData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ItemHideData

+ (instancetype)sharedInstance {
    static ItemHideData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ItemHideDataToCache:(Byte *)data {
    int bubbleChange = data[0];
    Byte mediaSize = data[1];
    int exaggerate = data[2];
    for (int i = exaggerate; i < exaggerate + bubbleChange; i++) {
        int value = data[i] + mediaSize;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[exaggerate + bubbleChange] = 0;
    return data + exaggerate;
}

- (NSString *)StringFromItemHideData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ItemHideDataToCache:data]];
}

//: #5D5F66
- (NSString *)showDisableText {
    /* static */ NSString *showDisableText = nil;
    if (!showDisableText) {
        Byte value[] = {7, 63, 10, 194, 86, 219, 73, 203, 247, 88, 228, 246, 5, 246, 7, 247, 247, 237};
        showDisableText = [self StringFromItemHideData:value];
    }
    return showDisableText;
}

//: _UITableViewCellSeparatorView
- (NSString *)main_fileText {
    /* static */ NSString *main_fileText = nil;
    if (!main_fileText) {
        Byte value[] = {29, 74, 6, 7, 27, 211, 21, 11, 255, 10, 23, 24, 34, 27, 12, 31, 27, 45, 249, 27, 34, 34, 9, 27, 38, 23, 40, 23, 42, 37, 40, 12, 31, 27, 45, 40};
        main_fileText = [self StringFromItemHideData:value];
    }
    return main_fileText;
}

//: #333333
- (NSString *)k_valueData {
    /* static */ NSString *k_valueData = nil;
    if (!k_valueData) {
        Byte value[] = {7, 22, 12, 108, 248, 207, 145, 152, 58, 227, 199, 223, 13, 29, 29, 29, 29, 29, 29, 9};
        k_valueData = [self StringFromItemHideData:value];
    }
    return k_valueData;
}

//: black_list_item_remove
- (NSString *)app_showValue {
    /* static */ NSString *app_showValue = nil;
    if (!app_showValue) {
        Byte value[] = {22, 62, 11, 12, 71, 96, 170, 94, 225, 191, 147, 36, 46, 35, 37, 45, 33, 46, 43, 53, 54, 33, 43, 54, 39, 47, 33, 52, 39, 47, 49, 56, 39, 197};
        app_showValue = [self StringFromItemHideData:value];
    }
    return app_showValue;
}

//: #EEEEEE
- (NSString *)mainCommentData {
    /* static */ NSString *mainCommentData = nil;
    if (!mainCommentData) {
        Byte value[] = {7, 8, 11, 16, 194, 2, 197, 189, 60, 121, 79, 27, 61, 61, 61, 61, 61, 61, 37};
        mainCommentData = [self StringFromItemHideData:value];
    }
    return mainCommentData;
}

//: #F6F6F6
- (NSString *)noti_endData {
    /* static */ NSString *noti_endData = nil;
    if (!noti_endData) {
        Byte value[] = {7, 30, 13, 180, 33, 202, 117, 212, 196, 74, 195, 133, 235, 5, 40, 24, 40, 24, 40, 24, 205};
        noti_endData = [self StringFromItemHideData:value];
    }
    return noti_endData;
}

//: head_default
- (NSString *)app_canData {
    /* static */ NSString *app_canData = nil;
    if (!app_canData) {
        Byte value[] = {12, 28, 3, 76, 73, 69, 72, 67, 72, 73, 74, 69, 89, 80, 88, 241};
        app_canData = [self StringFromItemHideData:value];
    }
    return app_canData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBlackListTableViewCell.h"
#import "FileView.h"
//: #import "WorkAvatarImageView.h"
#import "ButtonControl.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESContactDataMember.h"
#import "PresentItem.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"

//: @implementation NTESBlackListTableViewCell
@implementation FileView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

//        self.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
//        self.layer.cornerRadius = 16;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initMenu];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)color:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESBlackListTableViewCell";
    static NSString *identifier = @"FileView";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    FileView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[FileView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initMenu {

    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    bodyView.backgroundColor = [UIColor ground:[[ItemHideData sharedInstance] noti_endData]];
    //: bodyView.layer.cornerRadius = 16;
    bodyView.layer.cornerRadius = 16;
    //: [self.contentView addSubview:bodyView];
    [self.contentView addSubview:bodyView];

    //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _avatarImageView.layer.cornerRadius = 24;
    _avatarImageView.layer.cornerRadius = 24;
    //: _avatarImageView.layer.masksToBounds = YES;
    _avatarImageView.layer.masksToBounds = YES;
    //: [bodyView addSubview:_avatarImageView];
    [bodyView addSubview:_avatarImageView];
//    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//    [_avatarImageView addGestureRecognizer:panGesture];


    //: _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
    _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
//         _cancleBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    //: _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_cancleBtn setTitle:[WorkLanguageManager getTextWithKey:@"black_list_item_remove"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitle:[InputRed preserve:[[ItemHideData sharedInstance] app_showValue]] forState:(UIControlStateNormal)];//移除
    //: [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn addTarget:self action:@selector(cellTo) forControlEvents:(UIControlEventTouchUpInside)];
    //: [_cancleBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitleColor:[UIColor ground:[[ItemHideData sharedInstance] showDisableText]] forState:(UIControlStateNormal)];
    //: _cancleBtn.layer.cornerRadius = 16;
    _cancleBtn.layer.cornerRadius = 16;
    //: _cancleBtn.layer.borderWidth = 1;
    _cancleBtn.layer.borderWidth = 1;
    //: _cancleBtn.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
    _cancleBtn.layer.borderColor = [UIColor ground:[[ItemHideData sharedInstance] mainCommentData]].CGColor;
    //: _cancleBtn.layer.masksToBounds = YES;
    _cancleBtn.layer.masksToBounds = YES;
    //: [bodyView addSubview:_cancleBtn];
    [bodyView addSubview:_cancleBtn];


    //: [bodyView addSubview:self.labName];
    [bodyView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
    self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
}

//: - (void)refreshWithMember:(NTESContactDataMember *)member{
- (void)reload:(PresentItem *)member{
    //: self.member = member;
    self.member = member;
    //: self.labName.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
    self.labName.text = [SessionUtil name:member.info.infoId progressSession:nil];
//    [self.textLabel sizeToFit];
    //: NSURL *url;
    NSURL *url;
    //: if (member.info.avatarUrlString.length) {
    if (member.info.avatarUrlString.length) {
        //: url = [NSURL URLWithString:member.info.avatarUrlString];
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    //: [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
    [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
}

//: - (void)refreshData:(NIMTeamMember *)data
- (void)doingShow:(NIMTeamMember *)data
{
    //: self.data = data;
    self.data = data;
    //: self.isteam = YES;
    self.isteam = YES;
//    userId
//    [_avatarImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:nil];
//    self.labName.text = data.nickname;

    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:data.userId option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:data.userId blue:nil];
    //: self.labName.text = info.showName;
    self.labName.text = info.showName;
    //: [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[[ItemHideData sharedInstance] app_canData]]];
}


//: - (void)onTouchButton {
- (void)cellTo {
    //: if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)] || [self.delegate respondsToSelector:@selector(didTouchTeamCancleButton:)]) {
    if ([self.delegate respondsToSelector:@selector(accenting:)] || [self.delegate respondsToSelector:@selector(notTouch:)]) {

        //: if (self.isteam) {
        if (self.isteam) {
            //: [self.delegate didTouchTeamCancleButton:self.data];
            [self.delegate notTouch:self.data];
        //: }else{
        }else{
            //: [self.delegate didTouchCancleButton:self.member];
            [self.delegate accenting:self.member];
        }

    }
}


//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([[ItemHideData sharedInstance] main_fileText]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}


//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor colorWithHexString:@"#333333"];
        _labName.textColor = [UIColor ground:[[ItemHideData sharedInstance] k_valueData]];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labName;
    return _labName;
}





//: @end
@end
