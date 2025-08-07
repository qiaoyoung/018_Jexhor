
#import <Foundation/Foundation.h>

@interface DisplayData : NSObject

+ (instancetype)sharedInstance;

//: Tamma Kirtner
@property (nonatomic, copy) NSString *m_userFormat;

//: avatar
@property (nonatomic, copy) NSString *mSizeAtText;

//: contact_user_default_header
@property (nonatomic, copy) NSString *app_marginName;

//: #FAF8FD
@property (nonatomic, copy) NSString *notiCoverInfoStr;

//: nickname
@property (nonatomic, copy) NSString *main_viewId;

//: ic_add_friend
@property (nonatomic, copy) NSString *mImageValue;

@end

@implementation DisplayData

+ (instancetype)sharedInstance {
    static DisplayData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DisplayDataToCache:(Byte *)data {
    int infoSession = data[0];
    Byte keyStyle = data[1];
    int twentyFourHours = data[2];
    for (int i = twentyFourHours; i < twentyFourHours + infoSession; i++) {
        int value = data[i] - keyStyle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[twentyFourHours + infoSession] = 0;
    return data + twentyFourHours;
}

- (NSString *)StringFromDisplayData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DisplayDataToCache:data]];
}

//: ic_add_friend
- (NSString *)mImageValue {
    if (!_mImageValue) {
        Byte value[] = {13, 96, 12, 102, 114, 163, 3, 125, 227, 202, 109, 131, 201, 195, 191, 193, 196, 196, 191, 198, 210, 201, 197, 206, 196, 141};
        _mImageValue = [self StringFromDisplayData:value];
    }
    return _mImageValue;
}

//: contact_user_default_header
- (NSString *)app_marginName {
    if (!_app_marginName) {
        Byte value[] = {27, 42, 10, 114, 162, 143, 161, 67, 80, 47, 141, 153, 152, 158, 139, 141, 158, 137, 159, 157, 143, 156, 137, 142, 143, 144, 139, 159, 150, 158, 137, 146, 143, 139, 142, 143, 156, 209};
        _app_marginName = [self StringFromDisplayData:value];
    }
    return _app_marginName;
}

//: #FAF8FD
- (NSString *)notiCoverInfoStr {
    if (!_notiCoverInfoStr) {
        Byte value[] = {7, 46, 4, 4, 81, 116, 111, 116, 102, 116, 114, 220};
        _notiCoverInfoStr = [self StringFromDisplayData:value];
    }
    return _notiCoverInfoStr;
}

//: Tamma Kirtner
- (NSString *)m_userFormat {
    if (!_m_userFormat) {
        Byte value[] = {13, 4, 9, 160, 99, 4, 236, 216, 159, 88, 101, 113, 113, 101, 36, 79, 109, 118, 120, 114, 105, 118, 197};
        _m_userFormat = [self StringFromDisplayData:value];
    }
    return _m_userFormat;
}

//: avatar
- (NSString *)mSizeAtText {
    if (!_mSizeAtText) {
        Byte value[] = {6, 96, 8, 235, 9, 55, 208, 36, 193, 214, 193, 212, 193, 210, 171};
        _mSizeAtText = [self StringFromDisplayData:value];
    }
    return _mSizeAtText;
}

//: nickname
- (NSString *)main_viewId {
    if (!_main_viewId) {
        Byte value[] = {8, 98, 13, 35, 136, 240, 99, 116, 15, 5, 91, 145, 175, 208, 203, 197, 205, 208, 195, 207, 199, 142};
        _main_viewId = [self StringFromDisplayData:value];
    }
    return _main_viewId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxViewCell.m
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RecommendfriendTableViewCell.h"
#import "MaxViewCell.h"

//: @implementation RecommendfriendTableViewCell
@implementation MaxViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        self.backgroundColor = [UIColor user:[DisplayData sharedInstance].notiCoverInfoStr];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;

        //: [self initSubviews];
        [self initView];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews
- (void)initView
{
    //: [self.contentView addSubview:self.avaterImg];
    [self.contentView addSubview:self.avaterImg];
    //: self.avaterImg.frame = CGRectMake(15, 12, 48, 48);
    self.avaterImg.frame = CGRectMake(15, 12, 48, 48);

    //: [self.contentView addSubview:self.labName];
    [self.contentView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);
    self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);

    //: [self.contentView addSubview:self.btnAdd];
    [self.contentView addSubview:self.btnAdd];
    //: self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
    self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
}

//: - (void)refreshWithModel:(NSDictionary *)userItem
- (void)modelText:(NSDictionary *)userItem
{
    //: self.userId = [userItem newStringValueForKey:@"id"];
    self.userId = [userItem index:@"id"];
    //: NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *avatar = [userItem index:[DisplayData sharedInstance].mSizeAtText];
    //: NSString *nickname = [userItem newStringValueForKey:@"nickname"];
    NSString *nickname = [userItem index:[DisplayData sharedInstance].main_viewId];

    //: [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    //: self.labName.text = nickname;
    self.labName.text = nickname;

}

//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor blackColor];
        _labName.textColor = [UIColor blackColor];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
        //: _labName.text = @"Tamma Kirtner";
        _labName.text = [DisplayData sharedInstance].m_userFormat;
    }
    //: return _labName;
    return _labName;
}

//: - (UIImageView *)avaterImg
- (UIImageView *)avaterImg
{
    //: if (!_avaterImg) {
    if (!_avaterImg) {
        //: _avaterImg = [[UIImageView alloc] init];
        _avaterImg = [[UIImageView alloc] init];
        //: _avaterImg.layer.cornerRadius = 24;
        _avaterImg.layer.cornerRadius = 24;
        //: _avaterImg.layer.masksToBounds = YES;
        _avaterImg.layer.masksToBounds = YES;
        //: _avaterImg.image = [UIImage imageNamed:@"contact_user_default_header"];
        _avaterImg.image = [UIImage imageNamed:[DisplayData sharedInstance].app_marginName];
    }
    //: return _avaterImg;
    return _avaterImg;
}

//: - (UIButton *)btnAdd
- (UIButton *)btnAdd
{
    //: if (!_btnAdd) {
    if (!_btnAdd) {
        //: _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_btnAdd addTarget:self action:@selector(handleAdd) forControlEvents:UIControlEventTouchUpInside];
        [_btnAdd addTarget:self action:@selector(handleValue) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
        [_btnAdd setImage:[UIImage imageNamed:[DisplayData sharedInstance].mImageValue] forState:UIControlStateNormal];
    }
    //: return _btnAdd;
    return _btnAdd;
}

//: - (void)handleAdd{
- (void)handleValue{
    //: if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
    if ([self.delegate respondsToSelector:@selector(eyeglasses:)]) {
        //: [self.delegate didTouchAdddButton:self.userId];
        [self.delegate eyeglasses:self.userId];
    }
}

//: @end
@end