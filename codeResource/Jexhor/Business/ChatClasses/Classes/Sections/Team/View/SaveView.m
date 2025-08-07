
#import <Foundation/Foundation.h>

NSString *StringFromItLeaveData(Byte *data);


//: #05D481
Byte kChoiceText[] = {42, 7, 5, 105, 243, 49, 56, 52, 68, 53, 48, 35, 66};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamSwitchTableViewCell.m
//  NIM
//
//  Created by amao on 5/29/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushTeamSwitchTableViewCell.h"
#import "SaveView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation PushTeamSwitchTableViewCell
@implementation SaveView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#05D481"];
        _switcher.onTintColor = [UIColor user:StringFromItLeaveData(kChoiceText)];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(hockeyTeam:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)hockeyTeam:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(collection:margin:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate collection:self margin:_switcher.isOn];
    }
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat right = 20.f;
    CGFloat right = 20.f;
    //: self.switcher.nim_right = self.nim_width - right;
    self.switcher.nim_right = self.nim_width - right;
    //: self.switcher.nim_centerY = self.nim_height * .5;
    self.switcher.nim_centerY = self.nim_height * .5;
}


//: @end
@end

Byte * ItLeaveDataToCache(Byte *data) {
    int dear = data[0];
    int repletion = data[1];
    int average = data[2];
    if (!dear) return data + average;
    for (int i = 0; i < repletion / 2; i++) {
        int begin = average + i;
        int end = average + repletion - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[average + repletion] = 0;
    return data + average;
}

NSString *StringFromItLeaveData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ItLeaveDataToCache(data)];
}  
