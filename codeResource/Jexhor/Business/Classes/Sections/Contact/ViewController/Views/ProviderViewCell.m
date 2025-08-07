
#import <Foundation/Foundation.h>

@interface TargetData : NSObject

+ (instancetype)sharedInstance;

//: ic_add_friend
@property (nonatomic, copy) NSString *notiColorData;

//: nickname
@property (nonatomic, copy) NSString *mainImageTitle;

//: Tamma Kirtner
@property (nonatomic, copy) NSString *k_countName;

//: #FAF8FD
@property (nonatomic, copy) NSString *main_infoFileName;

//: avatar
@property (nonatomic, copy) NSString *appTargetName;

//: contact_user_default_header
@property (nonatomic, copy) NSString *kItemName;

@end

@implementation TargetData

+ (instancetype)sharedInstance {
    static TargetData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TargetDataToCache:(Byte *)data {
    int sound = data[0];
    Byte byName = data[1];
    int colored = data[2];
    for (int i = colored; i < colored + sound; i++) {
        int value = data[i] + byName;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[colored + sound] = 0;
    return data + colored;
}

- (NSString *)StringFromTargetData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TargetDataToCache:data]];
}

//: Tamma Kirtner
- (NSString *)k_countName {
    if (!_k_countName) {
        Byte value[] = {13, 23, 4, 188, 61, 74, 86, 86, 74, 9, 52, 82, 91, 93, 87, 78, 91, 86};
        _k_countName = [self StringFromTargetData:value];
    }
    return _k_countName;
}

//: nickname
- (NSString *)mainImageTitle {
    if (!_mainImageTitle) {
        Byte value[] = {8, 36, 8, 207, 197, 233, 59, 8, 74, 69, 63, 71, 74, 61, 73, 65, 2};
        _mainImageTitle = [self StringFromTargetData:value];
    }
    return _mainImageTitle;
}

//: ic_add_friend
- (NSString *)notiColorData {
    if (!_notiColorData) {
        Byte value[] = {13, 54, 7, 212, 223, 240, 158, 51, 45, 41, 43, 46, 46, 41, 48, 60, 51, 47, 56, 46, 180};
        _notiColorData = [self StringFromTargetData:value];
    }
    return _notiColorData;
}

//: avatar
- (NSString *)appTargetName {
    if (!_appTargetName) {
        Byte value[] = {6, 49, 5, 129, 165, 48, 69, 48, 67, 48, 65, 100};
        _appTargetName = [self StringFromTargetData:value];
    }
    return _appTargetName;
}

//: #FAF8FD
- (NSString *)main_infoFileName {
    if (!_main_infoFileName) {
        Byte value[] = {7, 52, 5, 126, 170, 239, 18, 13, 18, 4, 18, 16, 6};
        _main_infoFileName = [self StringFromTargetData:value];
    }
    return _main_infoFileName;
}

//: contact_user_default_header
- (NSString *)kItemName {
    if (!_kItemName) {
        Byte value[] = {27, 48, 7, 124, 205, 15, 22, 51, 63, 62, 68, 49, 51, 68, 47, 69, 67, 53, 66, 47, 52, 53, 54, 49, 69, 60, 68, 47, 56, 53, 49, 52, 53, 66, 57};
        _kItemName = [self StringFromTargetData:value];
    }
    return _kItemName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProviderViewCell.m
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RecommendfriendTableViewCell.h"
#import "ProviderViewCell.h"

//: @implementation RecommendfriendTableViewCell
@implementation ProviderViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        self.backgroundColor = [UIColor ground:[TargetData sharedInstance].main_infoFileName];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;

        //: [self initSubviews];
        [self initPlaceIn];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews
- (void)initPlaceIn
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
- (void)cleanMessage:(NSDictionary *)userItem
{
    //: self.userId = [userItem newStringValueForKey:@"id"];
    self.userId = [userItem route:@"id"];
    //: NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *avatar = [userItem route:[TargetData sharedInstance].appTargetName];
    //: NSString *nickname = [userItem newStringValueForKey:@"nickname"];
    NSString *nickname = [userItem route:[TargetData sharedInstance].mainImageTitle];

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
        _labName.text = [TargetData sharedInstance].k_countName;
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
        _avaterImg.image = [UIImage imageNamed:[TargetData sharedInstance].kItemName];
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
        [_btnAdd addTarget:self action:@selector(sessionShould) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
        [_btnAdd setImage:[UIImage imageNamed:[TargetData sharedInstance].notiColorData] forState:UIControlStateNormal];
    }
    //: return _btnAdd;
    return _btnAdd;
}

//: - (void)handleAdd{
- (void)sessionShould{
    //: if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
    if ([self.delegate respondsToSelector:@selector(inserted:)]) {
        //: [self.delegate didTouchAdddButton:self.userId];
        [self.delegate inserted:self.userId];
    }
}

//: @end
@end