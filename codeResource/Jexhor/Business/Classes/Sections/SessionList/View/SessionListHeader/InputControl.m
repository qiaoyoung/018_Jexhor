
#import <Foundation/Foundation.h>

@interface VeteranData : NSObject

+ (instancetype)sharedInstance;

//: ic-waring
@property (nonatomic, copy) NSString *userIconEliteMessage;

//: #FF483D
@property (nonatomic, copy) NSString *kVileKey;

@end

@implementation VeteranData

+ (instancetype)sharedInstance {
    static VeteranData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)VeteranDataToCache:(Byte *)data {
    int stat = data[0];
    Byte retention = data[1];
    int maxSnap = data[2];
    for (int i = maxSnap; i < maxSnap + stat; i++) {
        int value = data[i] - retention;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[maxSnap + stat] = 0;
    return data + maxSnap;
}

- (NSString *)StringFromVeteranData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VeteranDataToCache:data]];
}

//: #FF483D
- (NSString *)kVileKey {
    if (!_kVileKey) {
        Byte value[] = {7, 48, 4, 153, 83, 118, 118, 100, 104, 99, 116, 195};
        _kVileKey = [self StringFromVeteranData:value];
    }
    return _kVileKey;
}

//: ic-waring
- (NSString *)userIconEliteMessage {
    if (!_userIconEliteMessage) {
        Byte value[] = {9, 31, 12, 143, 116, 205, 219, 95, 16, 36, 217, 230, 136, 130, 76, 150, 128, 145, 136, 141, 134, 255};
        _userIconEliteMessage = [self StringFromVeteranData:value];
    }
    return _userIconEliteMessage;
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
#import "InputControl.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"

//: @implementation NTESTextHeaderView
@implementation InputControl

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
        _label.textColor = [UIColor user:[VeteranData sharedInstance].kVileKey];
        //: _label.font = [UIFont systemFontOfSize:12.f];
        _label.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_label];
        [self addSubview:_label];

        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic-waring"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[VeteranData sharedInstance].userIconEliteMessage]];
        //: [self addSubview:_img];
        [self addSubview:_img];
    }
    //: return self;
    return self;
}

//: - (void)setContentText:(NSString *)content{
- (void)setView:(NSString *)content{
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