
#import <Foundation/Foundation.h>

typedef struct {
    Byte seawater;
    Byte *sittingTing;
    unsigned int ethnicWithOur;
	int unluckily;
} StructEnableFireData;

@interface EnableFireData : NSObject

@end

@implementation EnableFireData

+ (Byte *)EnableFireDataToByte:(StructEnableFireData *)data {
    for (int i = 0; i < data->ethnicWithOur; i++) {
        data->sittingTing[i] ^= data->seawater;
    }
    data->sittingTing[data->ethnicWithOur] = 0;
	if (data->ethnicWithOur >= 1) {
		data->unluckily = data->sittingTing[0];
	}
    return data->sittingTing;
}

+ (NSString *)StringFromEnableFireData:(StructEnableFireData *)data {
    return [NSString stringWithUTF8String:(char *)[self EnableFireDataToByte:data]];
}

//: #A148FF
+ (NSString *)k_emotionData {
    /* static */ NSString *k_emotionData = nil;
    if (!k_emotionData) {
        StructEnableFireData value = (StructEnableFireData){65, (Byte []){98, 0, 112, 117, 121, 7, 7, 228}, 7, 88};
        k_emotionData = [self StringFromEnableFireData:&value];
    }
    return k_emotionData;
}

//: icon_cell_blue_normal
+ (NSString *)showStatusPath {
    /* static */ NSString *showStatusPath = nil;
    if (!showStatusPath) {
        StructEnableFireData value = (StructEnableFireData){138, (Byte []){227, 233, 229, 228, 213, 233, 239, 230, 230, 213, 232, 230, 255, 239, 213, 228, 229, 248, 231, 235, 230, 63}, 21, 227};
        showStatusPath = [self StringFromEnableFireData:&value];
    }
    return showStatusPath;
}

//: contact_tag_fragment_sure
+ (NSString *)mCellPath {
    /* static */ NSString *mCellPath = nil;
    if (!mCellPath) {
        StructEnableFireData value = (StructEnableFireData){179, (Byte []){208, 220, 221, 199, 210, 208, 199, 236, 199, 210, 212, 236, 213, 193, 210, 212, 222, 214, 221, 199, 236, 192, 198, 193, 214, 113}, 25, 176};
        mCellPath = [self StringFromEnableFireData:&value];
    }
    return mCellPath;
}

//: #ffffff
+ (NSString *)showMessageContent {
    /* static */ NSString *showMessageContent = nil;
    if (!showMessageContent) {
        StructEnableFireData value = (StructEnableFireData){42, (Byte []){9, 76, 76, 76, 76, 76, 76, 29}, 7, 69};
        showMessageContent = [self StringFromEnableFireData:&value];
    }
    return showMessageContent;
}

//: #EEEEEE
+ (NSString *)app_standingWakeContent {
    /* static */ NSString *app_standingWakeContent = nil;
    if (!app_standingWakeContent) {
        StructEnableFireData value = (StructEnableFireData){249, (Byte []){218, 188, 188, 188, 188, 188, 188, 101}, 7, 170};
        app_standingWakeContent = [self StringFromEnableFireData:&value];
    }
    return app_standingWakeContent;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeView.m
// Secret
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectTabView.h"
#import "MakeView.h"
//: #import "FFFContactPickedView.h"
#import "MissiveView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @implementation FFFContactSelectTabView
@implementation MakeView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[FFFContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[MissiveView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage overColor:[EnableFireData showStatusPath] path:[UIColor user:[EnableFireData k_emotionData]]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage overColor:[EnableFireData showStatusPath] path:[UIColor user:[EnableFireData k_emotionData]]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[BackgroundRandomAttribute content:[EnableFireData mCellPath]] forState:UIControlStateNormal];
        //: [_doneButton sizeToFit];
        [_doneButton sizeToFit];
        //: _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
        _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
                                          //: doneButtonNormal.size.height);
                                          doneButtonNormal.size.height);
        //: [self addSubview:_doneButton];
        [self addSubview:_doneButton];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"contact_bg"]];
        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor user:[EnableFireData showMessageContent]];

        //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        line.backgroundColor = [UIColor user:[EnableFireData app_standingWakeContent]];
        //: [self addSubview:line];
        [self addSubview:line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 15.f;
    CGFloat spacing = 15.f;
    //: _pickedView.nim_height = self.nim_height;
    _pickedView.nim_height = self.nim_height;
    //: _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    //: CGFloat doneButtonRight = 15.f;
    CGFloat doneButtonRight = 15.f;
    //: _doneButton.nim_right = self.nim_width - doneButtonRight;
    _doneButton.nim_right = self.nim_width - doneButtonRight;
    //: _doneButton.nim_centerY = self.nim_height * .5f;
    _doneButton.nim_centerY = self.nim_height * .5f;
}

//: @end
@end