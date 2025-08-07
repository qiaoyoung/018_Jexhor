
#import <Foundation/Foundation.h>

NSString *StringFromItsReadData(Byte *data);        


//: #A148FF
Byte userCareName[] = {86, 7, 41, 10, 172, 236, 176, 184, 197, 44, 250, 24, 8, 11, 15, 29, 29, 253};

//: #ffffff
Byte mainVariationData[] = {11, 7, 53, 10, 71, 253, 211, 61, 35, 90, 238, 49, 49, 49, 49, 49, 49, 130};

//: icon_cell_blue_normal
Byte appViewAriaAtValue[] = {4, 21, 22, 4, 83, 77, 89, 88, 73, 77, 79, 86, 86, 73, 76, 86, 95, 79, 73, 88, 89, 92, 87, 75, 86, 248};

//: contact_tag_fragment_sure
Byte mFortunateTitle[] = {32, 25, 40, 12, 74, 82, 150, 39, 50, 56, 121, 195, 59, 71, 70, 76, 57, 59, 76, 55, 76, 57, 63, 55, 62, 74, 57, 63, 69, 61, 70, 76, 55, 75, 77, 74, 61, 32};

//: #EEEEEE
Byte userCigData[] = {15, 7, 91, 6, 170, 136, 200, 234, 234, 234, 234, 234, 234, 156};

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithColorView.m
// MessageContent
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectTabView.h"
#import "WithColorView.h"
//: #import "FFFContactPickedView.h"
#import "SameView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation FFFContactSelectTabView
@implementation WithColorView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[FFFContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[SameView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage interval:StringFromItsReadData(appViewAriaAtValue) image:[UIColor ground:StringFromItsReadData(userCareName)]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage interval:StringFromItsReadData(appViewAriaAtValue) image:[UIColor ground:StringFromItsReadData(userCareName)]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[InputRed preserve:StringFromItsReadData(mFortunateTitle)] forState:UIControlStateNormal];
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
        self.backgroundColor = [UIColor ground:StringFromItsReadData(mainVariationData)];

        //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        line.backgroundColor = [UIColor ground:StringFromItsReadData(userCigData)];
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

Byte * ItsReadDataToCache(Byte *data) {
    int tsarBubble = data[0];
    int lingRip = data[1];
    Byte quest = data[2];
    int viseShower = data[3];
    if (!tsarBubble) return data + viseShower;
    for (int i = viseShower; i < viseShower + lingRip; i++) {
        int value = data[i] + quest;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[viseShower + lingRip] = 0;
    return data + viseShower;
}

NSString *StringFromItsReadData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ItsReadDataToCache(data)];
}
