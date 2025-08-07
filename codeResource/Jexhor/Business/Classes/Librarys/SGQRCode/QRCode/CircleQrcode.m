
#import <Foundation/Foundation.h>

@interface OccupyData : NSObject

+ (instancetype)sharedInstance;

//: inputImage
@property (nonatomic, copy) NSString *show_medicalTagBindValue;

//: inputCorrectionLevel
@property (nonatomic, copy) NSString *dream_balanceData;

//: inputColor1
@property (nonatomic, copy) NSString *notiAddName;

//: inputColor0
@property (nonatomic, copy) NSString *dreamVoiceCliffData;

//: inputMessage
@property (nonatomic, copy) NSString *showCussLeastName;

@end

@implementation OccupyData

+ (instancetype)sharedInstance {
    static OccupyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)OccupyDataToCache:(Byte *)data {
    int get = data[0];
    Byte sizeGym = data[1];
    int soleBe = data[2];
    for (int i = soleBe; i < soleBe + get; i++) {
        int value = data[i] - sizeGym;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[soleBe + get] = 0;
    return data + soleBe;
}

- (NSString *)StringFromOccupyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OccupyDataToCache:data]];
}

//: inputImage
- (NSString *)show_medicalTagBindValue {
    if (!_show_medicalTagBindValue) {
        Byte value[] = {10, 38, 10, 201, 182, 34, 127, 203, 131, 87, 143, 148, 150, 155, 154, 111, 147, 135, 141, 139, 168};
        _show_medicalTagBindValue = [self StringFromOccupyData:value];
    }
    return _show_medicalTagBindValue;
}

//: inputColor0
- (NSString *)dreamVoiceCliffData {
    if (!_dreamVoiceCliffData) {
        Byte value[] = {11, 99, 4, 169, 204, 209, 211, 216, 215, 166, 210, 207, 210, 213, 147, 99};
        _dreamVoiceCliffData = [self StringFromOccupyData:value];
    }
    return _dreamVoiceCliffData;
}

//: inputCorrectionLevel
- (NSString *)dream_balanceData {
    if (!_dream_balanceData) {
        Byte value[] = {20, 29, 7, 38, 226, 74, 142, 134, 139, 141, 146, 145, 96, 140, 143, 143, 130, 128, 145, 134, 140, 139, 105, 130, 147, 130, 137, 1};
        _dream_balanceData = [self StringFromOccupyData:value];
    }
    return _dream_balanceData;
}

//: inputColor1
- (NSString *)notiAddName {
    if (!_notiAddName) {
        Byte value[] = {11, 21, 7, 223, 29, 144, 221, 126, 131, 133, 138, 137, 88, 132, 129, 132, 135, 70, 94};
        _notiAddName = [self StringFromOccupyData:value];
    }
    return _notiAddName;
}

//: inputMessage
- (NSString *)showCussLeastName {
    if (!_showCussLeastName) {
        Byte value[] = {12, 91, 3, 196, 201, 203, 208, 207, 168, 192, 206, 206, 188, 194, 192, 46};
        _showCussLeastName = [self StringFromOccupyData:value];
    }
    return _showCussLeastName;
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
//: #import "SGGenerateQRCode.h"
#import "CircleQrcode.h"

//: @implementation SGGenerateQRCode
@implementation CircleQrcode

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size {
+ (UIImage *)link:(NSString *)data nimBlackAndWhite:(CGFloat)size {
    //: return [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    return [self with:data everyLast:size member:[UIColor blackColor] file:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size color:(UIColor *)color backgroundColor:(UIColor *)backgroundColor {
+ (UIImage *)with:(NSString *)data everyLast:(CGFloat)size member:(UIColor *)color file:(UIColor *)backgroundColor {
    //: NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    // 1、二维码滤镜
    //: CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    //: [fileter setValue:string_data forKey:@"inputMessage"];
    [fileter setValue:string_data forKey:[OccupyData sharedInstance].showCussLeastName];
    //: [fileter setValue:@"H" forKey:@"inputCorrectionLevel"];
    [fileter setValue:@"H" forKey:[OccupyData sharedInstance].dream_balanceData];
    //: CIImage *ciImage = fileter.outputImage;
    CIImage *ciImage = fileter.outputImage;
    // 2、颜色滤镜
    //: CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    //: [color_filter setValue:ciImage forKey:@"inputImage"];
    [color_filter setValue:ciImage forKey:[OccupyData sharedInstance].show_medicalTagBindValue];
    //: [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor0"];
    [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:[OccupyData sharedInstance].dreamVoiceCliffData];
    //: [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:@"inputColor1"];
    [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:[OccupyData sharedInstance].notiAddName];
    // 3、生成处理
    //: CIImage *outImage = color_filter.outputImage;
    CIImage *outImage = color_filter.outputImage;
    //: CGFloat scale = size / outImage.extent.size.width;
    CGFloat scale = size / outImage.extent.size.width;
    //: outImage = [outImage imageByApplyingTransform:CGAffineTransformMakeScale(scale, scale)];
    outImage = [outImage imageByApplyingTransform:CGAffineTransformMakeScale(scale, scale)];
    //: return [UIImage imageWithCIImage:outImage];
    return [UIImage imageWithCIImage:outImage];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio {
+ (UIImage *)sinceWith:(NSString *)data light:(CGFloat)size beginDoingUser:(UIImage *)logoImage bottom:(CGFloat)ratio {
    //: return [self generateQRCodeWithData:data size:size logoImage:logoImage ratio:ratio logoImageCornerRadius:5 logoImageBorderWidth:5 logoImageBorderColor:[UIColor whiteColor]];
    return [self with:data toFloat:size selectColor:logoImage text:ratio toolDataShow:5 doing:5 language:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio logoImageCornerRadius:(CGFloat)logoImageCornerRadius logoImageBorderWidth:(CGFloat)logoImageBorderWidth logoImageBorderColor:(UIColor *)logoImageBorderColor {
+ (UIImage *)with:(NSString *)data toFloat:(CGFloat)size selectColor:(UIImage *)logoImage text:(CGFloat)ratio toolDataShow:(CGFloat)logoImageCornerRadius doing:(CGFloat)logoImageBorderWidth language:(UIColor *)logoImageBorderColor {
    //: UIImage *image = [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    UIImage *image = [self with:data everyLast:size member:[UIColor blackColor] file:[UIColor whiteColor]];
    //: if (logoImage == nil) return image;
    if (logoImage == nil) return image;
    //: if (ratio < 0.0 || ratio > 0.5) {
    if (ratio < 0.0 || ratio > 0.5) {
        //: ratio = 0.25;
        ratio = 0.25;
    }
    //: CGFloat logoImageW = ratio * size;
    CGFloat logoImageW = ratio * size;
    //: CGFloat logoImageH = logoImageW;
    CGFloat logoImageH = logoImageW;
    //: CGFloat logoImageX = 0.5 * (image.size.width - logoImageW);
    CGFloat logoImageX = 0.5 * (image.size.width - logoImageW);
    //: CGFloat logoImageY = 0.5 * (image.size.height - logoImageH);
    CGFloat logoImageY = 0.5 * (image.size.height - logoImageH);
    //: CGRect logoImageRect = CGRectMake(logoImageX, logoImageY, logoImageW, logoImageH);
    CGRect logoImageRect = CGRectMake(logoImageX, logoImageY, logoImageW, logoImageH);
    // 绘制logo
    //: UIGraphicsBeginImageContextWithOptions(image.size, false, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(image.size, false, [UIScreen mainScreen].scale);
    //: [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];

    //: logoImageCornerRadius = logoImageW/2.f;
    logoImageCornerRadius = logoImageW/2.f;

    //: UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:logoImageRect cornerRadius:logoImageCornerRadius];
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:logoImageRect cornerRadius:logoImageCornerRadius];
    //: if (logoImageBorderWidth < 0.0 || logoImageBorderWidth > 10) {
    if (logoImageBorderWidth < 0.0 || logoImageBorderWidth > 10) {
        //: logoImageBorderWidth = 5;
        logoImageBorderWidth = 5;
    }
    //: path.lineWidth = logoImageBorderWidth;
    path.lineWidth = logoImageBorderWidth;
    //: [logoImageBorderColor setStroke];
    [logoImageBorderColor setStroke];
    //: [path stroke];
    [path stroke];
    //: [path addClip];
    [path addClip];
    //: [logoImage drawInRect:logoImageRect];
    [logoImage drawInRect:logoImageRect];
    //: UIImage *QRCodeImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *QRCodeImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return QRCodeImage;
    return QRCodeImage;
}

//: @end
@end