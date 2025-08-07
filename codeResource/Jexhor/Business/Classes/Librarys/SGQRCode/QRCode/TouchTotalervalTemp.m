
#import <Foundation/Foundation.h>

@interface ProvedPhotographyData : NSObject

@end

@implementation ProvedPhotographyData

+ (Byte *)ProvedPhotographyDataToCache:(Byte *)data {
    int voiceAbase = data[0];
    Byte whichPosition = data[1];
    int vileContainer = data[2];
    for (int i = vileContainer; i < vileContainer + voiceAbase; i++) {
        int value = data[i] - whichPosition;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[vileContainer + voiceAbase] = 0;
    return data + vileContainer;
}

+ (NSString *)StringFromProvedPhotographyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ProvedPhotographyDataToCache:data]];
}

//: inputImage
+ (NSString *)app_emotionStr {
    /* static */ NSString *app_emotionStr = nil;
    if (!app_emotionStr) {
        Byte value[] = {10, 50, 10, 202, 114, 250, 40, 88, 66, 95, 155, 160, 162, 167, 166, 123, 159, 147, 153, 151, 170};
        app_emotionStr = [self StringFromProvedPhotographyData:value];
    }
    return app_emotionStr;
}

//: inputMessage
+ (NSString *)mMayCancelText {
    /* static */ NSString *mMayCancelText = nil;
    if (!mMayCancelText) {
        Byte value[] = {12, 22, 4, 66, 127, 132, 134, 139, 138, 99, 123, 137, 137, 119, 125, 123, 248};
        mMayCancelText = [self StringFromProvedPhotographyData:value];
    }
    return mMayCancelText;
}

//: inputColor0
+ (NSString *)dreamShowDownIdent {
    /* static */ NSString *dreamShowDownIdent = nil;
    if (!dreamShowDownIdent) {
        Byte value[] = {11, 57, 3, 162, 167, 169, 174, 173, 124, 168, 165, 168, 171, 105, 147};
        dreamShowDownIdent = [self StringFromProvedPhotographyData:value];
    }
    return dreamShowDownIdent;
}

//: inputCorrectionLevel
+ (NSString *)m_votingName {
    /* static */ NSString *m_votingName = nil;
    if (!m_votingName) {
        Byte value[] = {20, 49, 13, 79, 121, 229, 11, 206, 192, 73, 232, 21, 91, 154, 159, 161, 166, 165, 116, 160, 163, 163, 150, 148, 165, 154, 160, 159, 125, 150, 167, 150, 157, 24};
        m_votingName = [self StringFromProvedPhotographyData:value];
    }
    return m_votingName;
}

//: inputColor1
+ (NSString *)dream_spaceText {
    /* static */ NSString *dream_spaceText = nil;
    if (!dream_spaceText) {
        Byte value[] = {11, 5, 7, 122, 92, 189, 187, 110, 115, 117, 122, 121, 72, 116, 113, 116, 119, 54, 78};
        dream_spaceText = [self StringFromProvedPhotographyData:value];
    }
    return dream_spaceText;
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
#import "TouchTotalervalTemp.h"

//: @implementation SGGenerateQRCode
@implementation TouchTotalervalTemp

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size {
+ (UIImage *)titleSize:(NSString *)data content:(CGFloat)size {
    //: return [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    return [self image:data input:size empty:[UIColor blackColor] inheritance_strong:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size color:(UIColor *)color backgroundColor:(UIColor *)backgroundColor {
+ (UIImage *)image:(NSString *)data input:(CGFloat)size empty:(UIColor *)color inheritance_strong:(UIColor *)backgroundColor {
    //: NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    NSData *string_data = [data dataUsingEncoding:NSUTF8StringEncoding];
    // 1、二维码滤镜
    //: CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    CIFilter *fileter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    //: [fileter setValue:string_data forKey:@"inputMessage"];
    [fileter setValue:string_data forKey:[ProvedPhotographyData mMayCancelText]];
    //: [fileter setValue:@"H" forKey:@"inputCorrectionLevel"];
    [fileter setValue:@"H" forKey:[ProvedPhotographyData m_votingName]];
    //: CIImage *ciImage = fileter.outputImage;
    CIImage *ciImage = fileter.outputImage;
    // 2、颜色滤镜
    //: CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    CIFilter *color_filter = [CIFilter filterWithName:@"CIFalseColor"];
    //: [color_filter setValue:ciImage forKey:@"inputImage"];
    [color_filter setValue:ciImage forKey:[ProvedPhotographyData app_emotionStr]];
    //: [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:@"inputColor0"];
    [color_filter setValue:[CIColor colorWithCGColor:color.CGColor] forKey:[ProvedPhotographyData dreamShowDownIdent]];
    //: [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:@"inputColor1"];
    [color_filter setValue:[CIColor colorWithCGColor:backgroundColor.CGColor] forKey:[ProvedPhotographyData dream_spaceText]];
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
+ (UIImage *)should:(NSString *)data objectName:(CGFloat)size smart:(UIImage *)logoImage nim:(CGFloat)ratio {
    //: return [self generateQRCodeWithData:data size:size logoImage:logoImage ratio:ratio logoImageCornerRadius:5 logoImageBorderWidth:5 logoImageBorderColor:[UIColor whiteColor]];
    return [self ting:data message:size dateConfirm:logoImage disableTip:ratio data:5 button:5 notItem:[UIColor whiteColor]];
}

//: + (UIImage *)generateQRCodeWithData:(NSString *)data size:(CGFloat)size logoImage:(UIImage *)logoImage ratio:(CGFloat)ratio logoImageCornerRadius:(CGFloat)logoImageCornerRadius logoImageBorderWidth:(CGFloat)logoImageBorderWidth logoImageBorderColor:(UIColor *)logoImageBorderColor {
+ (UIImage *)ting:(NSString *)data message:(CGFloat)size dateConfirm:(UIImage *)logoImage disableTip:(CGFloat)ratio data:(CGFloat)logoImageCornerRadius button:(CGFloat)logoImageBorderWidth notItem:(UIColor *)logoImageBorderColor {
    //: UIImage *image = [self generateQRCodeWithData:data size:size color:[UIColor blackColor] backgroundColor:[UIColor whiteColor]];
    UIImage *image = [self image:data input:size empty:[UIColor blackColor] inheritance_strong:[UIColor whiteColor]];
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