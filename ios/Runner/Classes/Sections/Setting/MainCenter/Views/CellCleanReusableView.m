
#import <Foundation/Foundation.h>

NSString *StringFromTabularMatterData(Byte *data);        


//: #333333
Byte userContentSessionTitle[] = {67, 7, 94, 7, 87, 196, 87, 197, 213, 213, 213, 213, 213, 213, 220};

//: 中东小王子
Byte appThanText[] = {66, 15, 5, 7, 114, 16, 124, 223, 179, 168, 223, 179, 151, 224, 171, 138, 226, 137, 134, 224, 168, 139, 107};

//: login_logo
Byte show_targetName[] = {18, 10, 23, 13, 244, 35, 169, 76, 231, 52, 171, 88, 178, 85, 88, 80, 82, 87, 72, 85, 88, 80, 88, 181};

//: 来一个摇滚表演
Byte notiScaleValueName[] = {10, 21, 7, 13, 186, 122, 53, 126, 140, 219, 241, 238, 218, 223, 150, 158, 221, 177, 121, 221, 177, 163, 223, 138, 128, 223, 180, 147, 225, 154, 161, 223, 181, 141, 11};

//: login_bg
Byte app_addFileReadTitle[] = {36, 8, 10, 11, 122, 175, 174, 231, 63, 113, 194, 98, 101, 93, 95, 100, 85, 88, 93, 127};

//: #5D5F66
Byte mSessionData[] = {44, 7, 83, 5, 188, 208, 226, 241, 226, 243, 227, 227, 27};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellCleanReusableView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideolistCollectionViewCell.h"
#import "CellCleanReusableView.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"

//: @implementation NTESVideolistCollectionViewCell
@implementation CellCleanReusableView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self text];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)text
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
    _picImg.image = [UIImage imageNamed:StringFromTabularMatterData(app_addFileReadTitle)];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor ground:StringFromTabularMatterData(userContentSessionTitle)];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = StringFromTabularMatterData(notiScaleValueName);
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:StringFromTabularMatterData(show_targetName)];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _labname.textColor = [UIColor ground:StringFromTabularMatterData(mSessionData)];
    //: _labname.text = @"中东小王子";
    _labname.text = StringFromTabularMatterData(appThanText);
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end

Byte * TabularMatterDataToCache(Byte *data) {
    int appearSession = data[0];
    int changeInfo = data[1];
    Byte labelView = data[2];
    int sizeHandle = data[3];
    if (!appearSession) return data + sizeHandle;
    for (int i = sizeHandle; i < sizeHandle + changeInfo; i++) {
        int value = data[i] + labelView;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sizeHandle + changeInfo] = 0;
    return data + sizeHandle;
}

NSString *StringFromTabularMatterData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TabularMatterDataToCache(data)];
}
