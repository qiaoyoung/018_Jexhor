
#import <Foundation/Foundation.h>

NSString *StringFromTinctureData(Byte *data);


//: %d FPS
Byte userAcheTitle[] = {12, 6, 84, 4, 121, 184, 116, 154, 164, 167, 203};

//: Menlo
Byte kLengthData[] = {97, 5, 64, 4, 141, 165, 174, 172, 175, 209};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentLabel.m
//  NIM
//
//  Created by chris on 15/11/16.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFPSLabel.h"
#import "ContentLabel.h"

//: @implementation NTESFPSLabel{
@implementation ContentLabel{
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
    _font = [UIFont fontWithName:StringFromTinctureData(kLengthData) size:13];
    //: _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(tick:)];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(labelName:)];
    //: [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    //: return self;
    return self;
}

//: - (void)invalidate
- (void)dateTitle
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
- (void)labelName:(CADisplayLink *)link {
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
    self.text = [NSString stringWithFormat:StringFromTinctureData(userAcheTitle),(int)round(fps)];
}

//: @end
@end

Byte * TinctureDataToCache(Byte *data) {
    int day = data[0];
    int intervalellectual = data[1];
    Byte silkwormMoth = data[2];
    int sizeScarCommentBirthday = data[3];
    if (!day) return data + sizeScarCommentBirthday;
    for (int i = sizeScarCommentBirthday; i < sizeScarCommentBirthday + intervalellectual; i++) {
        int value = data[i] - silkwormMoth;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[sizeScarCommentBirthday + intervalellectual] = 0;
    return data + sizeScarCommentBirthday;
}

NSString *StringFromTinctureData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TinctureDataToCache(data)];
}
