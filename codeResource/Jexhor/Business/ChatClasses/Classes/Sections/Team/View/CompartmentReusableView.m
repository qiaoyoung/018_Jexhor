
#import <Foundation/Foundation.h>

@interface MakeAFaceData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MakeAFaceData

+ (instancetype)sharedInstance {
    static MakeAFaceData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MakeAFaceDataToCache:(Byte *)data {
    int yinCommissionVersion = data[0];
    Byte extrapolate = data[1];
    int manager = data[2];
    for (int i = manager; i < manager + yinCommissionVersion; i++) {
        int value = data[i] + extrapolate;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[manager + yinCommissionVersion] = 0;
    return data + manager;
}

- (NSString *)StringFromMakeAFaceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MakeAFaceDataToCache:data]];
}

//: Group_Me
- (NSString *)mainVillagePath {
    /* static */ NSString *mainVillagePath = nil;
    if (!mainVillagePath) {
        Byte value[] = {8, 48, 11, 3, 223, 101, 163, 113, 211, 240, 68, 23, 66, 63, 69, 64, 47, 29, 53, 216};
        mainVillagePath = [self StringFromMakeAFaceData:value];
    }
    return mainVillagePath;
}

//: icon_avatar_del
- (NSString *)app_choiceKey {
    /* static */ NSString *app_choiceKey = nil;
    if (!app_choiceKey) {
        Byte value[] = {15, 94, 3, 11, 5, 17, 16, 1, 3, 24, 3, 22, 3, 20, 1, 6, 7, 14, 236};
        app_choiceKey = [self StringFromMakeAFaceData:value];
    }
    return app_choiceKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.m
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushCardHeaderCell.h"
#import "CompartmentReusableView.h"
//: #import "PushAvatarImageView.h"
#import "ImageView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "PushTeamHelper.h"
#import "ShowHelper.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"

//: @interface PushCardHeaderCell()
@interface CompartmentReusableView()

//: @property (nonatomic,strong) id<PushKitCardHeaderData> data;
@property (nonatomic,strong) id<PushKitCardHeaderData> data;

//: @end
@end

//: @implementation PushCardHeaderCell
@implementation CompartmentReusableView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _imageView = [[PushAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        _imageView = [[ImageView alloc] initWithFrame:CGRectMake(0, 0, 55, 55)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _removeBtn.hidden = YES;
        _removeBtn.hidden = YES;
        //: [_removeBtn setImage:[UIImage imageNamed:@"icon_avatar_del"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:[[MakeAFaceData sharedInstance] app_choiceKey]] forState:UIControlStateNormal];
        //: [_removeBtn sizeToFit];
        [_removeBtn sizeToFit];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(digitizerred:) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:_removeBtn];
        [self addSubview:_removeBtn];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(id<PushKitCardHeaderData>)data{
- (void)notParent:(id<PushKitCardHeaderData>)data{
    //: self.data = data;
    self.data = data;
    //: NSURL *url = [NSURL URLWithString:data.imageUrl];
    NSURL *url = [NSURL URLWithString:data.imageUrl];
    //: [self.imageView nim_setImageWithURL:url placeholderImage:data.imageNormal];
    [self.imageView everyBarImage:url messageColor:data.imageNormal];
    //: [self.imageView addTarget:self action:@selector(onSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.imageView addTarget:self action:@selector(collectionBackground:) forControlEvents:UIControlEventTouchUpInside];

    //: NSString *showName = data.title;
    NSString *showName = data.title;
    //: if ([data isMyUserId]) {
    if ([data isMyUserId]) {
        //: showName = [PushLanguageManager getTextWithKey:@"Group_Me"];
        showName = [BackgroundRandomAttribute content:[[MakeAFaceData sharedInstance] mainVillagePath]];//@"我".nim_localized;
    }
    //: self.titleLabel.text = showName;
    self.titleLabel.text = showName;
    //: self.roleImageView.image = [PushTeamHelper imageWithMemberType:data.userType];
    self.roleImageView.image = [ShowHelper notSpace:data.userType];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
}

//: - (void)onSelected:(id)sender{
- (void)collectionBackground:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellDidSelected:)]) {
    if ([self.delegate respondsToSelector:@selector(outsideAll:)]) {
        //: [self.delegate cellDidSelected:self];
        [self.delegate outsideAll:self];
    }
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)digitizerred:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(sendBottom:)]) {
        //: [self.delegate cellShouldBeRemoved:self];
        [self.delegate sendBottom:self];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.nim_centerX = self.nim_width * .5f;
    self.imageView.nim_centerX = self.nim_width * .5f;
    //: self.titleLabel.nim_width = self.nim_width + 10;
    self.titleLabel.nim_width = self.nim_width + 10;
    //: self.titleLabel.nim_bottom = self.nim_height;
    self.titleLabel.nim_bottom = self.nim_height;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: [self.roleImageView sizeToFit];
    [self.roleImageView sizeToFit];
    //: self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    self.roleImageView.nim_bottom = self.imageView.nim_bottom;
    //: self.roleImageView.nim_right = self.imageView.nim_right;
    self.roleImageView.nim_right = self.imageView.nim_right;
    //: self.removeBtn.nim_right = self.nim_width;
    self.removeBtn.nim_right = self.nim_width;

}

//: @end
@end
