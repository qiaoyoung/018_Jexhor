
#import <Foundation/Foundation.h>

@interface ImageKeyData : NSObject

@end

@implementation ImageKeyData

+ (Byte *)ImageKeyDataToCache:(Byte *)data {
    int mage = data[0];
    Byte sound = data[1];
    int yin = data[2];
    for (int i = yin; i < yin + mage; i++) {
        int value = data[i] - sound;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[yin + mage] = 0;
    return data + yin;
}

+ (NSString *)StringFromImageKeyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ImageKeyDataToCache:data]];
}

//: icon_arrow
+ (NSString *)m_tingValue {
    /* static */ NSString *m_tingValue = nil;
    if (!m_tingValue) {
        Byte value[] = {10, 94, 12, 5, 157, 181, 215, 51, 112, 219, 12, 43, 199, 193, 205, 204, 189, 191, 208, 208, 205, 213, 197};
        m_tingValue = [self StringFromImageKeyData:value];
    }
    return m_tingValue;
}

//: icon_muti_clients
+ (NSString *)userVilePath {
    /* static */ NSString *userVilePath = nil;
    if (!userVilePath) {
        Byte value[] = {17, 77, 11, 45, 19, 22, 94, 84, 238, 97, 11, 182, 176, 188, 187, 172, 186, 194, 193, 182, 172, 176, 185, 182, 178, 187, 193, 192, 105};
        userVilePath = [self StringFromImageKeyData:value];
    }
    return userVilePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DoingControl.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMutiClientsHeaderView.h"
#import "DoingControl.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"

//: @interface NTESMutiClientsHeaderView()
@interface DoingControl()

//: @property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UIImageView *icon;

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @property (nonatomic,strong) UIButton *accessoryBtn;
@property (nonatomic,strong) UIButton *accessoryBtn;

//: @end
@end

//: @implementation NTESMutiClientsHeaderView
@implementation DoingControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_muti_clients"]];
        _icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[ImageKeyData userVilePath]]];
        //: [self addSubview:_icon];
        [self addSubview:_icon];

        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        _label.textColor = [UIColor colorWithRed:((float)((0x888888 & 0xFF0000) >> 16))/255.0 green:((float)((0x888888 & 0x00FF00) >> 8))/255.0 blue:((float)(0x888888 & 0x0000FF))/255.0 alpha:1.0];
        //: _label.font = [UIFont boldSystemFontOfSize:14.f];
        _label.font = [UIFont boldSystemFontOfSize:14.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_arrow"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[ImageKeyData m_tingValue]] forState:UIControlStateNormal];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: [self addSubview:_accessoryBtn];
        [self addSubview:_accessoryBtn];
    }
    //: return self;
    return self;
}

//: CGFloat TextPadding = 17.f;
CGFloat userModelMakeUrl = 17.f;
//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + TextPadding * 2);
    return CGSizeMake(self.width, contentSize.height + userModelMakeUrl * 2);
}


//: #pragma mark - NTESSessionListHeaderView
#pragma mark - NTESSessionListHeaderView
//: - (void)setContentText:(NSString *)content{
- (void)setView:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: CGFloat IconLeft = 10.f;
CGFloat noti_insideIdent = 10.f;
//: CGFloat IconAndContentSpacing = 10.f;
CGFloat mFromName = 10.f;
//: CGFloat ArrowRight = 12.f;
CGFloat showSingleMessage = 12.f;
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.icon.left = IconLeft;
    self.icon.left = noti_insideIdent;
    //: self.icon.centerY = self.height * .5f;
    self.icon.centerY = self.height * .5f;
    //: self.label.left = self.icon.right + IconAndContentSpacing;
    self.label.left = self.icon.right + mFromName;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.accessoryBtn.right = self.width - ArrowRight;
    self.accessoryBtn.right = self.width - showSingleMessage;
    //: self.accessoryBtn.centerY = self.height * .5f;
    self.accessoryBtn.centerY = self.height * .5f;
}

//: @end
@end