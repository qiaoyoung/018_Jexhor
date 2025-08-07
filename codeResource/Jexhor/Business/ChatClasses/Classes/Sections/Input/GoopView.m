
#import <Foundation/Foundation.h>

@interface SizeDrawData : NSObject

@end

@implementation SizeDrawData

+ (Byte *)SizeDrawDataToCache:(Byte *)data {
    int oreGreet = data[0];
    Byte buddyView = data[1];
    int fall = data[2];
    for (int i = fall; i < fall + oreGreet; i++) {
        int value = data[i] - buddyView;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[fall + oreGreet] = 0;
    return data + fall;
}

+ (NSString *)StringFromSizeDrawData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SizeDrawDataToCache:data]];
}

//: B391FF
+ (NSString *)show_dramaticallyKey {
    /* static */ NSString *show_dramaticallyKey = nil;
    if (!show_dramaticallyKey) {
        Byte value[] = {6, 46, 8, 62, 39, 150, 128, 182, 112, 97, 103, 95, 116, 116, 106};
        show_dramaticallyKey = [self StringFromSizeDrawData:value];
    }
    return show_dramaticallyKey;
}

//: #fffPush
+ (NSString *)show_guiltyTouchIdent {
    /* static */ NSString *show_guiltyTouchIdent = nil;
    if (!show_guiltyTouchIdent) {
        Byte value[] = {7, 76, 7, 26, 53, 148, 225, 111, 178, 178, 178, 178, 178, 178, 126};
        show_guiltyTouchIdent = [self StringFromSizeDrawData:value];
    }
    return show_guiltyTouchIdent;
}

//: F6F7FA
+ (NSString *)noti_quipStr {
    /* static */ NSString *noti_quipStr = nil;
    if (!noti_quipStr) {
        Byte value[] = {6, 88, 3, 158, 142, 158, 143, 158, 153, 139};
        noti_quipStr = [self StringFromSizeDrawData:value];
    }
    return noti_quipStr;
}

//: icon_reply_close
+ (NSString *)noti_strangeData {
    /* static */ NSString *noti_strangeData = nil;
    if (!noti_strangeData) {
        Byte value[] = {16, 49, 6, 9, 9, 186, 154, 148, 160, 159, 144, 163, 150, 161, 157, 170, 144, 148, 157, 160, 164, 150, 163};
        noti_strangeData = [self StringFromSizeDrawData:value];
    }
    return noti_strangeData;
}

//: #2B2F36
+ (NSString *)main_constrainMsg {
    /* static */ NSString *main_constrainMsg = nil;
    if (!main_constrainMsg) {
        Byte value[] = {7, 33, 3, 68, 83, 99, 83, 103, 84, 87, 48};
        main_constrainMsg = [self StringFromSizeDrawData:value];
    }
    return main_constrainMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GoopView.m
// Secret
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushReplyContentView.h"
#import "GoopView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Secret.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"

//: @interface PushReplyContentView ()
@interface GoopView ()

//: @end
@end

//: @implementation PushReplyContentView
@implementation GoopView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffPush"];
        self.backgroundColor = [UIColor user:[SizeDrawData show_guiltyTouchIdent]];

        //: UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        //: bg.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
        bg.backgroundColor = [UIColor user:[SizeDrawData noti_quipStr]];
        //: bg.layer.cornerRadius = 8;
        bg.layer.cornerRadius = 8;
        //: [self addSubview:bg];
        [self addSubview:bg];

        //: _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: [bg addSubview:_picView];
        [bg addSubview:_picView];
        //: _picView.hidden = YES;
        _picView.hidden = YES;

        //: _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"B391FF"];
        _fromUser.textColor = [UIColor user:[SizeDrawData show_dramaticallyKey]];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [bg addSubview:_fromUser];
        [bg addSubview:_fromUser];

        //: _label = [[UILabel alloc] init];
        _label = [[UILabel alloc] init];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
        //: _label.textAlignment = NSTextAlignmentLeft;
        _label.textAlignment = NSTextAlignmentLeft;
        //: _label.lineBreakMode = NSLineBreakByTruncatingTail;
        _label.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _label.font = [UIFont systemFontOfSize:12];
        _label.font = [UIFont systemFontOfSize:12];
        //: _label.textColor = [UIColor colorWithHexString:@"#2B2F36"];
        _label.textColor = [UIColor user:[SizeDrawData main_constrainMsg]];
        //: [bg addSubview:_label];
        [bg addSubview:_label];

        //: _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        //: [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
        [_closeButton setImage:[UIImage imageNamed:[SizeDrawData noti_strangeData]]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_closeButton addTarget:self action:@selector(centerClicked:) forControlEvents:UIControlEventTouchUpInside];
        //: [bg addSubview:_closeButton];
        [bg addSubview:_closeButton];

//        _divider = [[UIView alloc] initWithFrame:CGRectMake(15, self.height-1, SCREEN_WIDTH-30, 1)];
//        _divider.backgroundColor = [UIColor colorWithWhite:1 alpha:0.1];
//        [self addSubview:_divider];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);
//    
//    self.divider.nim_left = self.closeButton.nim_right + 2;
//    
//    self.label.nim_height = self.label.intrinsicContentSize.height + 5;
//    self.label.nim_width = self.nim_width - self.closeButton.nim_right;
//    self.label.nim_left = self.divider.nim_right + 2;
//    self.label.nim_centerY = self.nim_height * 0.5;
//    
//    self.divider.nim_height = self.label.nim_height;
//    self.divider.nim_centerY = self.nim_height * .5f;
}

//: - (void)dismiss
- (void)off
{
    //: [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


//: - (void)onClicked:(id)sender
- (void)centerClicked:(id)sender
{
    //: self.hidden = YES;
    self.hidden = YES;
    //: if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    if ([self.delegate respondsToSelector:@selector(indoorsed:)])
    {
        //: [self.delegate onClearReplyContent:sender];
        [self.delegate indoorsed:sender];
    }
}

//: @end
@end
