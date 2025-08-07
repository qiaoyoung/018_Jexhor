
#import <Foundation/Foundation.h>

typedef struct {
    Byte blueEmotion;
    Byte *view;
    unsigned int cancel;
	int ironed;
	int margin;
	int pull;
} StructWithTitleData;

@interface WithTitleData : NSObject

+ (instancetype)sharedInstance;

//: user_id
@property (nonatomic, copy) NSString *mTingId;

@end

@implementation WithTitleData

+ (instancetype)sharedInstance {
    static WithTitleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WithTitleDataToByte:(StructWithTitleData *)data {
    for (int i = 0; i < data->cancel; i++) {
        data->view[i] ^= data->blueEmotion;
    }
    data->view[data->cancel] = 0;
	if (data->cancel >= 3) {
		data->ironed = data->view[0];
		data->margin = data->view[1];
		data->pull = data->view[2];
	}
    return data->view;
}

- (NSString *)StringFromWithTitleData:(StructWithTitleData *)data {
    return [NSString stringWithUTF8String:(char *)[self WithTitleDataToByte:data]];
}

//: user_id
- (NSString *)mTingId {
    if (!_mTingId) {
        StructWithTitleData value = (StructWithTitleData){251, (Byte []){142, 136, 158, 137, 164, 146, 159, 94}, 7, 89, 224, 130};
        _mTingId = [self StringFromWithTitleData:&value];
    }
    return _mTingId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DetermineViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactGroupCell.h"
#import "DetermineViewCell.h"

//: @implementation NTESContactGroupCell
@implementation DetermineViewCell

//: - (void)initSubviews{
- (void)initFrom{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[FFFAvatarImageView alloc] init];
    _avatar = [[ImageView alloc] init];
    //: [self addSubview:_avatar];
    [self addSubview:_avatar];
    //: [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
    [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_equalTo(10);
        make.left.mas_equalTo(10);
        //: make.width.mas_equalTo(40);
        make.width.mas_equalTo(40);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textColor = [UIColor blackColor];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_offset(60);
        make.left.mas_offset(60);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)information:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information index:[WithTitleData sharedInstance].mTingId];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:user_id option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:user_id item:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar image:[NSURL URLWithString:info.avatarUrlString] set:info.avatarImage version:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: @end
@end