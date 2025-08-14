
#import <Foundation/Foundation.h>

@interface SuccessPressData : NSObject

@end

@implementation SuccessPressData

+ (Byte *)SuccessPressDataToCache:(Byte *)data {
    int viewComment = data[0];
    int report = data[1];
    for (int i = 0; i < viewComment / 2; i++) {
        int begin = report + i;
        int end = report + viewComment - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[report + viewComment] = 0;
    return data + report;
}

+ (NSString *)StringFromSuccessPressData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SuccessPressDataToCache:data]];
}  

//: ic-waring
+ (NSString *)noti_showContent {
    /* static */ NSString *noti_showContent = nil;
    if (!noti_showContent) {
        Byte value[] = {9, 8, 168, 203, 223, 46, 153, 184, 103, 110, 105, 114, 97, 119, 45, 99, 105, 97};
        noti_showContent = [self StringFromSuccessPressData:value];
    }
    return noti_showContent;
}

//: #FF483D
+ (NSString *)user_mediaAtValue {
    /* static */ NSString *user_mediaAtValue = nil;
    if (!user_mediaAtValue) {
        Byte value[] = {7, 4, 1, 62, 68, 51, 56, 52, 70, 70, 35, 31};
        user_mediaAtValue = [self StringFromSuccessPressData:value];
    }
    return user_mediaAtValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESNetStatusHeaderView.m
//  NIM
//
//  Created by chris on 15/7/22.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTextHeaderView.h"
#import "ValueControl.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"

//: @implementation NTESTextHeaderView
@implementation ValueControl

//: - (instancetype) initWithFrame:(CGRect)frame{
- (instancetype) initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor colorWithHexString:@"#FF483D"];
        _label.textColor = [UIColor ground:[SuccessPressData user_mediaAtValue]];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[SuccessPressData noti_showContent]]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (void)setContentText:(NSString *)content{
- (void)setReceive:(NSString *)content{
    //: self.label.text = content;
    self.label.text = content;
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: [self.label sizeToFit];
    [self.label sizeToFit];
    //: CGSize contentSize = self.label.frame.size;
    CGSize contentSize = self.label.frame.size;
    //: return CGSizeMake(self.width, contentSize.height + 10 * 2);
    return CGSizeMake(self.width, contentSize.height + 10 * 2);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.label.centerX = self.width * .5f;
    self.label.centerX = self.width * .5f;
    //: self.label.centerY = self.height * .5f;
    self.label.centerY = self.height * .5f;
    //: self.img.centerY = self.height * .5f;
    self.img.centerY = self.height * .5f;
    //: self.img.right = self.label.left -10;
    self.img.right = self.label.left -10;
}

//: @end
@end