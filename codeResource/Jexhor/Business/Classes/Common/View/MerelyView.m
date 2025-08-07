
#import <Foundation/Foundation.h>

@interface ConstitutionData : NSObject

@end

@implementation ConstitutionData

+ (Byte *)ConstitutionDataToCache:(Byte *)data {
    int eating = data[0];
    Byte spacePin = data[1];
    int destitution = data[2];
    for (int i = destitution; i < destitution + eating; i++) {
        int value = data[i] + spacePin;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[destitution + eating] = 0;
    return data + destitution;
}

+ (NSString *)StringFromConstitutionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ConstitutionDataToCache:data]];
}

//: %d FPS
+ (NSString *)user_saleValue {
    /* static */ NSString *user_saleValue = nil;
    if (!user_saleValue) {
        Byte value[] = {6, 86, 7, 48, 71, 169, 231, 207, 14, 202, 240, 250, 253, 189};
        user_saleValue = [self StringFromConstitutionData:value];
    }
    return user_saleValue;
}

//: Menlo
+ (NSString *)main_distractData {
    /* static */ NSString *main_distractData = nil;
    if (!main_distractData) {
        Byte value[] = {5, 62, 8, 131, 39, 141, 57, 28, 15, 39, 48, 46, 49, 83};
        main_distractData = [self StringFromConstitutionData:value];
    }
    return main_distractData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  MerelyView.m
//  NIM
//
//  Created by chris on 15/11/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFPSLabel.h"
#import "MerelyView.h"

//: @implementation NTESFPSLabel{
@implementation MerelyView{
    //: CADisplayLink *_link;
    CADisplayLink *_link;
    //: NSUInteger _count;
    NSUInteger _count;
    //: NSTimeInterval _lastTime;
    NSTimeInterval _lastTime;
    //: UIFont *_font;
    UIFont *_font;
}


//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (frame.size.width == 0 && frame.size.height == 0) {
    if (frame.size.width == 0 && frame.size.height == 0) {
        //: frame.size = CGSizeMake(70, 20);
        frame.size = CGSizeMake(70, 20);
    }
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];

    //: self.textAlignment = NSTextAlignmentCenter;
    self.textAlignment = NSTextAlignmentCenter;
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: _font = [UIFont fontWithName:@"Menlo" size:13];
    _font = [UIFont fontWithName:[ConstitutionData main_distractData] size:13];
    //: _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(replyStatus:)];
    //: [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    //: return self;
    return self;
}

//: - (void)invalidate
- (void)pin
{
    //: [_link invalidate];
    [_link invalidate];
}

//: - (CGSize)sizeThatFits:(CGSize)size {
- (CGSize)sizeThatFits:(CGSize)size {
    //: return CGSizeMake(70, 20);;
    return CGSizeMake(70, 20);;
}

//: - (void)tick:(CADisplayLink *)link {
- (void)replyStatus:(CADisplayLink *)link {
    //: if (_lastTime == 0) {
    if (_lastTime == 0) {
        //: _lastTime = link.timestamp;
        _lastTime = link.timestamp;
        //: return;
        return;
    }

    //: _count++;
    _count++;
    //: NSTimeInterval delta = link.timestamp - _lastTime;
    NSTimeInterval delta = link.timestamp - _lastTime;
    //: if (delta < 1) return;
    if (delta < 1) return;
    //: _lastTime = link.timestamp;
    _lastTime = link.timestamp;
    //: float fps = _count / delta;
    float fps = _count / delta;
    //: _count = 0;
    _count = 0;


    //: self.text = [NSString stringWithFormat:@"%d FPS",(int)round(fps)];
    self.text = [NSString stringWithFormat:[ConstitutionData user_saleValue],(int)round(fps)];
}

//: @end
@end