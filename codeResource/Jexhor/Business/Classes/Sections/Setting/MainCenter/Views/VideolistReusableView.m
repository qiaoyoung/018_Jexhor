
#import <Foundation/Foundation.h>

@interface StatData : NSObject

@end

@implementation StatData

+ (Byte *)StatDataToCache:(Byte *)data {
    int picture = data[0];
    Byte coloured = data[1];
    int storage = data[2];
    for (int i = storage; i < storage + picture; i++) {
        int value = data[i] - coloured;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[storage + picture] = 0;
    return data + storage;
}

+ (NSString *)StringFromStatData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StatDataToCache:data]];
}

//: #5D5F66
+ (NSString *)show_withData {
    /* static */ NSString *show_withData = nil;
    if (!show_withData) {
        Byte value[] = {7, 11, 8, 183, 202, 56, 51, 26, 46, 64, 79, 64, 81, 65, 65, 48};
        show_withData = [self StringFromStatData:value];
    }
    return show_withData;
}

//: 来一个摇滚表演
+ (NSString *)mainDateText {
    /* static */ NSString *mainDateText = nil;
    if (!mainDateText) {
        Byte value[] = {21, 24, 7, 183, 184, 42, 99, 254, 181, 189, 252, 208, 152, 252, 208, 194, 254, 169, 159, 254, 211, 178, 0, 185, 192, 254, 212, 172, 132};
        mainDateText = [self StringFromStatData:value];
    }
    return mainDateText;
}

//: #333333
+ (NSString *)main_buttonPath {
    /* static */ NSString *main_buttonPath = nil;
    if (!main_buttonPath) {
        Byte value[] = {7, 31, 7, 24, 27, 207, 235, 66, 82, 82, 82, 82, 82, 82, 63};
        main_buttonPath = [self StringFromStatData:value];
    }
    return main_buttonPath;
}

//: login_logo
+ (NSString *)k_coverTitle {
    /* static */ NSString *k_coverTitle = nil;
    if (!k_coverTitle) {
        Byte value[] = {10, 58, 4, 73, 166, 169, 161, 163, 168, 153, 166, 169, 161, 169, 135};
        k_coverTitle = [self StringFromStatData:value];
    }
    return k_coverTitle;
}

//: login_bg
+ (NSString *)app_contentAlienValue {
    /* static */ NSString *app_contentAlienValue = nil;
    if (!app_contentAlienValue) {
        Byte value[] = {8, 90, 5, 124, 53, 198, 201, 193, 195, 200, 185, 188, 193, 215};
        app_contentAlienValue = [self StringFromStatData:value];
    }
    return app_contentAlienValue;
}

//: 中东小王子
+ (NSString *)mErrMessage {
    /* static */ NSString *mErrMessage = nil;
    if (!mErrMessage) {
        Byte value[] = {15, 74, 6, 189, 192, 94, 46, 2, 247, 46, 2, 230, 47, 250, 217, 49, 216, 213, 47, 247, 218, 146};
        mErrMessage = [self StringFromStatData:value];
    }
    return mErrMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideolistReusableView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideolistCollectionViewCell.h"
#import "VideolistReusableView.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"

//: @implementation NTESVideolistCollectionViewCell
@implementation VideolistReusableView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self meanSolarDay];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)meanSolarDay
{
    //: CGFloat spacing = 15;
    CGFloat spacing = 15;//行、列 间距
    //: int totalloc = 2;
    int totalloc = 2;//列数
    //: CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;
    CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;

    //: _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    //: _picImg.image = [UIImage imageNamed:@"login_bg"];
    _picImg.image = [UIImage imageNamed:[StatData app_contentAlienValue]];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor user:[StatData main_buttonPath]];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = [StatData mainDateText];
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:[StatData k_coverTitle]];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _labname.textColor = [UIColor user:[StatData show_withData]];
    //: _labname.text = @"中东小王子";
    _labname.text = [StatData mErrMessage];
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end