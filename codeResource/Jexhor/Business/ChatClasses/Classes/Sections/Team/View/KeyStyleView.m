
#import <Foundation/Foundation.h>

@interface SchoolData : NSObject

@end

@implementation SchoolData

+ (Byte *)SchoolDataToCache:(Byte *)data {
    int impose = data[0];
    Byte economics = data[1];
    int hebdomadAssault = data[2];
    for (int i = hebdomadAssault; i < hebdomadAssault + impose; i++) {
        int value = data[i] - economics;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[hebdomadAssault + impose] = 0;
    return data + hebdomadAssault;
}

+ (NSString *)StringFromSchoolData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SchoolDataToCache:data]];
}

//: #05D481
+ (NSString *)kWillingnessData {
    /* static */ NSString *kWillingnessData = nil;
    if (!kWillingnessData) {
        Byte value[] = {7, 33, 3, 68, 81, 86, 101, 85, 89, 82, 62};
        kWillingnessData = [self StringFromSchoolData:value];
    }
    return kWillingnessData;
}

@end

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
//: #import "FFFTeamSwitchTableViewCell.h"
#import "KeyStyleView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @implementation FFFTeamSwitchTableViewCell
@implementation KeyStyleView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#05D481"];
        _switcher.onTintColor = [UIColor ground:[SchoolData kWillingnessData]];
        //: [_switcher addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        [_switcher addTarget:self action:@selector(valueTingChanged:) forControlEvents:UIControlEventValueChanged];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}

//: - (void)valueChanged:(id)sender {
- (void)valueTingChanged:(id)sender {
    //: if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(cell:onStateChanged:)])
    if (_switchDelegate && [_switchDelegate respondsToSelector:@selector(successBy:line:)])
    {
        //: [_switchDelegate cell:self onStateChanged:_switcher.isOn];
        [_switchDelegate successBy:self line:_switcher.isOn];
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