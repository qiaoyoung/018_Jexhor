
#import <Foundation/Foundation.h>

typedef struct {
    Byte spaceCram;
    Byte *dateLuck;
    unsigned int shootTechnical;
	int treatyForeign;
	int anonymousTerms;
} StructEmpireWingData;

@interface EmpireWingData : NSObject

+ (instancetype)sharedInstance;

//: #24E8B9
@property (nonatomic, copy) NSString *m_termName;

//: scan_scanline_wc
@property (nonatomic, copy) NSString *noti_storageFormat;

@end

@implementation EmpireWingData

+ (instancetype)sharedInstance {
    static EmpireWingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EmpireWingDataToByte:(StructEmpireWingData *)data {
    for (int i = 0; i < data->shootTechnical; i++) {
        data->dateLuck[i] ^= data->spaceCram;
    }
    data->dateLuck[data->shootTechnical] = 0;
	if (data->shootTechnical >= 2) {
		data->treatyForeign = data->dateLuck[0];
		data->anonymousTerms = data->dateLuck[1];
	}
    return data->dateLuck;
}

- (NSString *)StringFromEmpireWingData:(StructEmpireWingData *)data {
    return [NSString stringWithUTF8String:(char *)[self EmpireWingDataToByte:data]];
}

//: scan_scanline_wc
- (NSString *)noti_storageFormat {
    if (!_noti_storageFormat) {
        StructEmpireWingData value = (StructEmpireWingData){241, (Byte []){130, 146, 144, 159, 174, 130, 146, 144, 159, 157, 152, 159, 148, 174, 134, 146, 251}, 16, 32, 122};
        _noti_storageFormat = [self StringFromEmpireWingData:&value];
    }
    return _noti_storageFormat;
}

//: #24E8B9
- (NSString *)m_termName {
    if (!_m_termName) {
        StructEmpireWingData value = (StructEmpireWingData){58, (Byte []){25, 8, 14, 127, 2, 120, 3, 250}, 7, 25, 188};
        _m_termName = [self StringFromEmpireWingData:&value];
    }
    return _m_termName;
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
#import "MustConfigure.h"

//: @implementation SGScanViewConfigure
@implementation MustConfigure

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
+ (instancetype)name {
    //: return [[self alloc] init];
    return [[self alloc] init];
}

//: - (NSString *)scanline {
- (NSString *)scanline {
    //: if (!_scanline) {
    if (!_scanline) {
        //: return @"scan_scanline_wc";
        return [EmpireWingData sharedInstance].noti_storageFormat;
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
        _cornerColor = [UIColor user:[EmpireWingData sharedInstance].m_termName];
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