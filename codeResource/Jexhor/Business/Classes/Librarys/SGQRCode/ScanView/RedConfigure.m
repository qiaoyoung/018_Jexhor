
#import <Foundation/Foundation.h>

@interface BorderlandData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation BorderlandData

+ (instancetype)sharedInstance {
    static BorderlandData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BorderlandDataToCache:(Byte *)data {
    int hemeReason = data[0];
    Byte titleLimit = data[1];
    int pursuitWorry = data[2];
    for (int i = pursuitWorry; i < pursuitWorry + hemeReason; i++) {
        int value = data[i] + titleLimit;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[pursuitWorry + hemeReason] = 0;
    return data + pursuitWorry;
}

- (NSString *)StringFromBorderlandData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BorderlandDataToCache:data]];
}

//: #24E8B9
- (NSString *)noti_emergencyValue {
    /* static */ NSString *noti_emergencyValue = nil;
    if (!noti_emergencyValue) {
        Byte value[] = {7, 11, 9, 210, 40, 250, 93, 183, 227, 24, 39, 41, 58, 45, 55, 46, 248};
        noti_emergencyValue = [self StringFromBorderlandData:value];
    }
    return noti_emergencyValue;
}

//: scan_scanline_wc
- (NSString *)main_sessionEnableendData {
    /* static */ NSString *main_sessionEnableendData = nil;
    if (!main_sessionEnableendData) {
        Byte value[] = {16, 59, 6, 165, 5, 75, 56, 40, 38, 51, 36, 56, 40, 38, 51, 49, 46, 51, 42, 36, 60, 40, 141};
        main_sessionEnableendData = [self StringFromBorderlandData:value];
    }
    return main_sessionEnableendData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGScanViewConfigure.h"
#import "RedConfigure.h"

//: @implementation SGScanViewConfigure
@implementation RedConfigure

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
//        _isShowBorder = NO;
        //: _isShowBorder = YES;
        _isShowBorder = YES;
    }
    //: return self;
    return self;
}

//: + (instancetype)configure {
+ (instancetype)infoContent {
    //: return [[self alloc] init];
    return [[self alloc] init];
}

//: - (NSString *)scanline {
- (NSString *)scanline {
    //: if (!_scanline) {
    if (!_scanline) {
        //: return @"scan_scanline_wc";
        return [[BorderlandData sharedInstance] main_sessionEnableendData];
    }
    //: return _scanline;
    return _scanline;
}

//: - (CGFloat)scanlineStep {
- (CGFloat)scanlineStep {
    //: if (!_scanlineStep) {
    if (!_scanlineStep) {
        //: return 3.5;
        return 3.5;
    }
    //: return _scanlineStep;
    return _scanlineStep;
}

//: - (UIColor *)color {
- (UIColor *)color {
    //: if (!_color) {
    if (!_color) {
        //: return [[UIColor blackColor] colorWithAlphaComponent:0.5];
        return [[UIColor blackColor] colorWithAlphaComponent:0.5];
    }
    //: return _color;
    return _color;
}

//: - (UIColor *)borderColor {
- (UIColor *)borderColor {
    //: if (!_borderColor) {
    if (!_borderColor) {
        //: return [UIColor whiteColor];
        return [UIColor whiteColor];
    }
    //: return _borderColor;
    return _borderColor;
}

//: - (CGFloat)borderWidth {
- (CGFloat)borderWidth {
    //: if (!_borderWidth) {
    if (!_borderWidth) {
        //: return 0.2;
        return 0.2;
    }
    //: return _borderWidth;
    return _borderWidth;
}

//: - (SGCornerLoaction)cornerLocation {
- (SGCornerLoaction)cornerLocation {
    //: if (!_cornerLocation) {
    if (!_cornerLocation) {
        //: return SGCornerLoactionDefault;
        return SGCornerLoactionDefault;
    }
    //: return _cornerLocation;
    return _cornerLocation;
}

//: - (UIColor *)cornerColor {
- (UIColor *)cornerColor {
    //: if (!_cornerColor) {
    if (!_cornerColor) {
//        _cornerColor = [UIColor greenColor];
        //: _cornerColor = [UIColor colorWithHexString:@"#24E8B9"];
        _cornerColor = [UIColor ground:[[BorderlandData sharedInstance] noti_emergencyValue]];
    }
    //: return _cornerColor;
    return _cornerColor;
}

//: - (CGFloat)cornerWidth {
- (CGFloat)cornerWidth {
    //: if (!_cornerWidth) {
    if (!_cornerWidth) {
        //: return 2.0;
        return 2.0;
    }
    //: return _cornerWidth;
    return _cornerWidth;
}

//: - (CGFloat)cornerLength {
- (CGFloat)cornerLength {
    //: if (!_cornerLength) {
    if (!_cornerLength) {
//        return 20.0;
        //: return 40.0;
        return 40.0;
    }
    //: return _cornerLength;
    return _cornerLength;
}

//: @end
@end