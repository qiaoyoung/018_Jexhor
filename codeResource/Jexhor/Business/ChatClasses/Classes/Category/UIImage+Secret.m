
#import <Foundation/Foundation.h>

@interface ComputeData : NSObject

+ (instancetype)sharedInstance;

//: content
@property (nonatomic, copy) NSString *notiBalancedMessage;

//: default
@property (nonatomic, copy) NSString *appScienceName;

//: Chartlet
@property (nonatomic, copy) NSString *notiSatelliteIdent;

@end

@implementation ComputeData

+ (instancetype)sharedInstance {
    static ComputeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ComputeDataToCache:(Byte *)data {
    int doc = data[0];
    Byte constrainStatImage = data[1];
    int confident = data[2];
    for (int i = confident; i < confident + doc; i++) {
        int value = data[i] + constrainStatImage;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[confident + doc] = 0;
    return data + confident;
}

- (NSString *)StringFromComputeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ComputeDataToCache:data]];
}

//: content
- (NSString *)notiBalancedMessage {
    if (!_notiBalancedMessage) {
        Byte value[] = {7, 16, 9, 150, 251, 132, 198, 59, 42, 83, 95, 94, 100, 85, 94, 100, 66};
        _notiBalancedMessage = [self StringFromComputeData:value];
    }
    return _notiBalancedMessage;
}

//: Chartlet
- (NSString *)notiSatelliteIdent {
    if (!_notiSatelliteIdent) {
        Byte value[] = {8, 49, 5, 200, 16, 18, 55, 48, 65, 67, 59, 52, 67, 131};
        _notiSatelliteIdent = [self StringFromComputeData:value];
    }
    return _notiSatelliteIdent;
}

//: default
- (NSString *)appScienceName {
    if (!_appScienceName) {
        Byte value[] = {7, 93, 4, 245, 7, 8, 9, 4, 24, 15, 23, 107};
        _appScienceName = [self StringFromComputeData:value];
    }
    return _appScienceName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+NIMKit.m
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "FFFKitDevice.h"
#import "SizeBackground.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Secret.h"
//: #import "SSZipArchiveManager.h"
#import "SharedContentView.h"

//: @implementation UIImage (MyUserKit)
@implementation UIImage (Secret)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId{
+ (UIImage *)noRecording:(NSString *)imageName title:(NSString *)chartletId{
    //: if ([chartletId isEqualToString:@"default"]) {
    if ([chartletId isEqualToString:[ComputeData sharedInstance].appScienceName]) {
        //: return [UIImage imageNamed:imageName];
        return [UIImage imageNamed:imageName];
    }
    //: NSString *subDirectory = [NSString stringWithFormat:@"%@/%@/%@",@"Chartlet",chartletId,@"content"];
    NSString *subDirectory = [NSString stringWithFormat:@"%@/%@/%@",[ComputeData sharedInstance].notiSatelliteIdent,chartletId,[ComputeData sharedInstance].notiBalancedMessage];
    //先拿2倍图
    //: NSString *doubleImage = [imageName stringByAppendingString:@"@2x"];
    NSString *doubleImage = [imageName stringByAppendingString:@"@2x"];
    //: NSString *tribleImage = [imageName stringByAppendingString:@"@3x"];
    NSString *tribleImage = [imageName stringByAppendingString:@"@3x"];
    //: NSString *bundlePath = [[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:subDirectory];
    NSString *bundlePath = [[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:subDirectory];
    //: NSString *path = nil;
    NSString *path = nil;

    //: NSArray *array = [NSBundle pathsForResourcesOfType:nil inDirectory:bundlePath];
    NSArray *array = [NSBundle pathsForResourcesOfType:nil inDirectory:bundlePath];
    //: NSString *fileExt = [[array.firstObject lastPathComponent] pathExtension];
    NSString *fileExt = [[array.firstObject lastPathComponent] pathExtension];
    //: if ([UIScreen mainScreen].scale == 3.0) {
    if ([UIScreen mainScreen].scale == 3.0) {
        //: path = [NSBundle pathForResource:tribleImage ofType:fileExt inDirectory:bundlePath];
        path = [NSBundle pathForResource:tribleImage ofType:fileExt inDirectory:bundlePath];
    }
    //: path = path ? path : [NSBundle pathForResource:doubleImage ofType:fileExt inDirectory:bundlePath]; 
    path = path ? path : [NSBundle pathForResource:doubleImage ofType:fileExt inDirectory:bundlePath]; //取二倍图
    //: path = path ? path : [NSBundle pathForResource:imageName ofType:fileExt inDirectory:bundlePath]; 
    path = path ? path : [NSBundle pathForResource:imageName ofType:fileExt inDirectory:bundlePath]; //实在没了就去取一倍图
    //: return [UIImage imageWithContentsOfFile:path];
    return [UIImage imageWithContentsOfFile:path];
}


//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)max:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              crunchSize:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz{
                              secondText:(CGSize)imageMaxSiz{
    //: CGSize size;
    CGSize size;
    //: NSInteger imageWidth = originSize.width ,imageHeight = originSize.height;
    NSInteger imageWidth = originSize.width ,imageHeight = originSize.height;
    //: NSInteger imageMinWidth = imageMinSize.width, imageMinHeight = imageMinSize.height;
    NSInteger imageMinWidth = imageMinSize.width, imageMinHeight = imageMinSize.height;
    //: NSInteger imageMaxWidth = imageMaxSiz.width, imageMaxHeight = imageMaxSiz.height;
    NSInteger imageMaxWidth = imageMaxSiz.width, imageMaxHeight = imageMaxSiz.height;
    //: if (imageWidth > imageHeight) 
    if (imageWidth > imageHeight) //宽图
    {
        //: size.height = imageMinHeight; 
        size.height = imageMinHeight; //高度取最小高度
        //: size.width = imageWidth * imageMinHeight / imageHeight;
        size.width = imageWidth * imageMinHeight / imageHeight;
        //: if (size.width > imageMaxWidth)
        if (size.width > imageMaxWidth)
        {
            //: size.width = imageMaxWidth;
            size.width = imageMaxWidth;
        }
    }
    //: else if(imageWidth < imageHeight)
    else if(imageWidth < imageHeight)//高图
    {
        //: size.width = imageMinWidth;
        size.width = imageMinWidth;
        //: size.height = imageHeight *imageMinWidth / imageWidth;
        size.height = imageHeight *imageMinWidth / imageWidth;
        //: if (size.height > imageMaxHeight)
        if (size.height > imageMaxHeight)
        {
            //: size.height = imageMaxHeight;
            size.height = imageMaxHeight;
        }
    }
    //: else
    else//方图
    {
        //: if (imageWidth > imageMaxWidth)
        if (imageWidth > imageMaxWidth)
        {
            //: size.width = imageMaxWidth;
            size.width = imageMaxWidth;
            //: size.height = imageMaxHeight;
            size.height = imageMaxHeight;
        }
        //: else if(imageWidth > imageMinWidth)
        else if(imageWidth > imageMinWidth)
        {
            //: size.width = imageWidth;
            size.width = imageWidth;
            //: size.height = imageHeight;
            size.height = imageHeight;
        }
        //: else
        else
        {
            //: size.width = imageMinWidth;
            size.width = imageMinWidth;
            //: size.height = imageMinHeight;
            size.height = imageMinHeight;
        }
    }
    //: return size;
    return size;
}

//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName {
+ (UIImage *)info:(NSString *)imageName {
    //: if (!imageName) {
    if (!imageName) {
        //: return nil;
        return nil;
    }
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[SharedContentView manager] titleModel];
    //: NSString *imagePath = [emojiPath stringByAppendingPathComponent:imageName];
    NSString *imagePath = [emojiPath stringByAppendingPathComponent:imageName];
    //: UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    //: if (!image) {
    if (!image) {
        //: image = [[UIImage alloc] init];
        image = [[UIImage alloc] init];
    }

    //: return image;
    return image;
}

//: - (UIImage *)nim_imageForAvatarUpload
- (UIImage *)off
{
    //: CGFloat pixels = [[FFFKitDevice currentDevice] suggestImagePixels];
    CGFloat pixels = [[SizeBackground topDevice] searched];
    //: UIImage * image = [self nim_imageForUpload:pixels];
    UIImage * image = [self nim:pixels];
    //: return [image nim_fixOrientation];
    return [image blueMain];
}


//: #pragma mark - Private
#pragma mark - Private

//: - (UIImage *)nim_imageForUpload: (CGFloat)suggestPixels
- (UIImage *)nim: (CGFloat)suggestPixels
{
    //: CGFloat maxPixels = 4000000;
    CGFloat maxPixels = 4000000;
    //: CGFloat maxRatio = 3;
    CGFloat maxRatio = 3;

    //: CGFloat width = self.size.width;
    CGFloat width = self.size.width;
    //: CGFloat height= self.size.height;
    CGFloat height= self.size.height;

    //对于超过建议像素，且长宽比超过max ratio的图做特殊处理
    //: if (width * height > suggestPixels &&
    if (width * height > suggestPixels &&
        //: (width / height > maxRatio || height / width > maxRatio))
        (width / height > maxRatio || height / width > maxRatio))
    {
        //: return [self nim_scaleWithMaxPixels:maxPixels];
        return [self with:maxPixels];
    }
    //: else
    else
    {
        //: return [self nim_scaleWithMaxPixels:suggestPixels];
        return [self with:suggestPixels];
    }
}

//: - (UIImage *)nim_scaleWithMaxPixels: (CGFloat)maxPixels
- (UIImage *)with: (CGFloat)maxPixels
{
    //: CGFloat width = self.size.width;
    CGFloat width = self.size.width;
    //: CGFloat height= self.size.height;
    CGFloat height= self.size.height;
    //: if (width * height < maxPixels || maxPixels == 0)
    if (width * height < maxPixels || maxPixels == 0)
    {
        //: return self;
        return self;
    }
    //: CGFloat ratio = sqrt(width * height / maxPixels);
    CGFloat ratio = sqrt(width * height / maxPixels);
    //: if (fabs(ratio - 1) <= 0.01)
    if (fabs(ratio - 1) <= 0.01)
    {
        //: return self;
        return self;
    }
    //: CGFloat newSizeWidth = width / ratio;
    CGFloat newSizeWidth = width / ratio;
    //: CGFloat newSizeHeight= height/ ratio;
    CGFloat newSizeHeight= height/ ratio;
    //: return [self nim_scaleToSize:CGSizeMake(newSizeWidth, newSizeHeight)];
    return [self messageTitle:CGSizeMake(newSizeWidth, newSizeHeight)];
}

//内缩放，一条变等于最长边，另外一条小于等于最长边
//: - (UIImage *)nim_scaleToSize:(CGSize)newSize
- (UIImage *)messageTitle:(CGSize)newSize
{
    //: CGFloat width = self.size.width;
    CGFloat width = self.size.width;
    //: CGFloat height= self.size.height;
    CGFloat height= self.size.height;
    //: CGFloat newSizeWidth = newSize.width;
    CGFloat newSizeWidth = newSize.width;
    //: CGFloat newSizeHeight= newSize.height;
    CGFloat newSizeHeight= newSize.height;
    //: if (width <= newSizeWidth &&
    if (width <= newSizeWidth &&
        //: height <= newSizeHeight)
        height <= newSizeHeight)
    {
        //: return self;
        return self;
    }

    //: if (width == 0 || height == 0 || newSizeHeight == 0 || newSizeWidth == 0)
    if (width == 0 || height == 0 || newSizeHeight == 0 || newSizeWidth == 0)
    {
        //: return nil;
        return nil;
    }
    //: CGSize size;
    CGSize size;
    //: if (width / height > newSizeWidth / newSizeHeight)
    if (width / height > newSizeWidth / newSizeHeight)
    {
        //: size = CGSizeMake(newSizeWidth, newSizeWidth * height / width);
        size = CGSizeMake(newSizeWidth, newSizeWidth * height / width);
    }
    //: else
    else
    {
        //: size = CGSizeMake(newSizeHeight * width / height, newSizeHeight);
        size = CGSizeMake(newSizeHeight * width / height, newSizeHeight);
    }
    //: return [self nim_drawImageWithSize:size];
    return [self center:size];
}

//: - (UIImage *)nim_drawImageWithSize: (CGSize)size
- (UIImage *)center: (CGSize)size
{
    //: CGSize drawSize = CGSizeMake(floor(size.width), floor(size.height));
    CGSize drawSize = CGSizeMake(floor(size.width), floor(size.height));
    //: UIGraphicsBeginImageContext(drawSize);
    UIGraphicsBeginImageContext(drawSize);

    //: [self drawInRect:CGRectMake(0, 0, drawSize.width, drawSize.height)];
    [self drawInRect:CGRectMake(0, 0, drawSize.width, drawSize.height)];
    //: UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (UIImage *)nim_fixOrientation
- (UIImage *)blueMain
{

    // No-op if the orientation is already correct
    //: if (self.imageOrientation == UIImageOrientationUp)
    if (self.imageOrientation == UIImageOrientationUp)
        //: return self;
        return self;

    // We need to calculate the proper transformation to make the image upright.
    // We do it in 2 steps: Rotate if Left/Right/Down, and then flip if Mirrored.
    //: CGAffineTransform transform = CGAffineTransformIdentity;
    CGAffineTransform transform = CGAffineTransformIdentity;

    //: switch (self.imageOrientation) {
    switch (self.imageOrientation) {
        //: case UIImageOrientationDown:
        case UIImageOrientationDown:
        //: case UIImageOrientationDownMirrored:
        case UIImageOrientationDownMirrored:
            //: transform = CGAffineTransformTranslate(transform, self.size.width, self.size.height);
            transform = CGAffineTransformTranslate(transform, self.size.width, self.size.height);
            //: transform = CGAffineTransformRotate(transform, 3.14159265358979323846264338327950288);
            transform = CGAffineTransformRotate(transform, 3.14159265358979323846264338327950288);
            //: break;
            break;

        //: case UIImageOrientationLeft:
        case UIImageOrientationLeft:
        //: case UIImageOrientationLeftMirrored:
        case UIImageOrientationLeftMirrored:
            //: transform = CGAffineTransformTranslate(transform, self.size.width, 0);
            transform = CGAffineTransformTranslate(transform, self.size.width, 0);
            //: transform = CGAffineTransformRotate(transform, 1.57079632679489661923132169163975144);
            transform = CGAffineTransformRotate(transform, 1.57079632679489661923132169163975144);
            //: break;
            break;

        //: case UIImageOrientationRight:
        case UIImageOrientationRight:
        //: case UIImageOrientationRightMirrored:
        case UIImageOrientationRightMirrored:
            //: transform = CGAffineTransformTranslate(transform, 0, self.size.height);
            transform = CGAffineTransformTranslate(transform, 0, self.size.height);
            //: transform = CGAffineTransformRotate(transform, -1.57079632679489661923132169163975144);
            transform = CGAffineTransformRotate(transform, -1.57079632679489661923132169163975144);
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

    //: switch (self.imageOrientation) {
    switch (self.imageOrientation) {
        //: case UIImageOrientationUpMirrored:
        case UIImageOrientationUpMirrored:
        //: case UIImageOrientationDownMirrored:
        case UIImageOrientationDownMirrored:
            //: transform = CGAffineTransformTranslate(transform, self.size.width, 0);
            transform = CGAffineTransformTranslate(transform, self.size.width, 0);
            //: transform = CGAffineTransformScale(transform, -1, 1);
            transform = CGAffineTransformScale(transform, -1, 1);
            //: break;
            break;

        //: case UIImageOrientationLeftMirrored:
        case UIImageOrientationLeftMirrored:
        //: case UIImageOrientationRightMirrored:
        case UIImageOrientationRightMirrored:
            //: transform = CGAffineTransformTranslate(transform, self.size.height, 0);
            transform = CGAffineTransformTranslate(transform, self.size.height, 0);
            //: transform = CGAffineTransformScale(transform, -1, 1);
            transform = CGAffineTransformScale(transform, -1, 1);
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

    // Now we draw the underlying CGImage into a new context, applying the transform
    // calculated above.
    //: CGContextRef ctx = CGBitmapContextCreate(NULL, self.size.width, self.size.height,
    CGContextRef ctx = CGBitmapContextCreate(NULL, self.size.width, self.size.height,
                                             //: CGImageGetBitsPerComponent(self.CGImage), 0,
                                             CGImageGetBitsPerComponent(self.CGImage), 0,
                                             //: CGImageGetColorSpace(self.CGImage),
                                             CGImageGetColorSpace(self.CGImage),
                                             //: CGImageGetBitmapInfo(self.CGImage));
                                             CGImageGetBitmapInfo(self.CGImage));
    //: CGContextConcatCTM(ctx, transform);
    CGContextConcatCTM(ctx, transform);
    //: switch (self.imageOrientation) {
    switch (self.imageOrientation) {
        //: case UIImageOrientationLeft:
        case UIImageOrientationLeft:
        //: case UIImageOrientationLeftMirrored:
        case UIImageOrientationLeftMirrored:
        //: case UIImageOrientationRight:
        case UIImageOrientationRight:
        //: case UIImageOrientationRightMirrored:
        case UIImageOrientationRightMirrored:
            // Grr...
            //: CGContextDrawImage(ctx, CGRectMake(0,0,self.size.height,self.size.width), self.CGImage);
            CGContextDrawImage(ctx, CGRectMake(0,0,self.size.height,self.size.width), self.CGImage);
            //: break;
            break;

        //: default:
        default:
            //: CGContextDrawImage(ctx, CGRectMake(0,0,self.size.width,self.size.height), self.CGImage);
            CGContextDrawImage(ctx, CGRectMake(0,0,self.size.width,self.size.height), self.CGImage);
            //: break;
            break;
    }

    // And now we just create a new UIImage from the drawing context
    //: CGImageRef cgimg = CGBitmapContextCreateImage(ctx);
    CGImageRef cgimg = CGBitmapContextCreateImage(ctx);
    //: UIImage *img = [UIImage imageWithCGImage:cgimg];
    UIImage *img = [UIImage imageWithCGImage:cgimg];
    //: CGContextRelease(ctx);
    CGContextRelease(ctx);
    //: CGImageRelease(cgimg);
    CGImageRelease(cgimg);
    //: return img;
    return img;
}

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)targetSize
- (UIImage *)searched:(CGSize)targetSize
{
    // 裁剪两边
    //: CGSize sourceSize = self.size;
    CGSize sourceSize = self.size;
    //: CGFloat cropedWidth = sourceSize.width;
    CGFloat cropedWidth = sourceSize.width;
    //: CGFloat cropedHeight = sourceSize.height;
    CGFloat cropedHeight = sourceSize.height;

    //: if (__CGSizeEqualToSize(targetSize, CGSizeZero) ||
    if (__CGSizeEqualToSize(targetSize, CGSizeZero) ||
        //: __CGSizeEqualToSize(sourceSize, CGSizeZero) ||
        __CGSizeEqualToSize(sourceSize, CGSizeZero) ||
        //: targetSize.width == 0 ||
        targetSize.width == 0 ||
        //: targetSize.height == 0)
        targetSize.height == 0)
    {
        //: return self;
        return self;
    }

    //: if (targetSize.width / targetSize.height > sourceSize.width / sourceSize.height)
    if (targetSize.width / targetSize.height > sourceSize.width / sourceSize.height)
    {
        //: cropedHeight = cropedWidth * (targetSize.height / targetSize.width);
        cropedHeight = cropedWidth * (targetSize.height / targetSize.width);
    }
    //: else
    else
    {
        //: cropedWidth = cropedHeight * (targetSize.width / targetSize.height);
        cropedWidth = cropedHeight * (targetSize.width / targetSize.height);
    }

    //: CGRect cropRect = CGRectMake((sourceSize.width - cropedWidth) * .5f, (sourceSize.height - cropedHeight) * .5f, cropedWidth, cropedHeight);
    CGRect cropRect = CGRectMake((sourceSize.width - cropedWidth) * .5f, (sourceSize.height - cropedHeight) * .5f, cropedWidth, cropedHeight);
    //: CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, cropRect);
    CGImageRef imageRef = CGImageCreateWithImageInRect(self.CGImage, cropRect);
    //: UIImage *image = [UIImage imageWithCGImage:imageRef];
    UIImage *image = [UIImage imageWithCGImage:imageRef];
    //: CGImageRelease(imageRef);
    CGImageRelease(imageRef);

    // 缩放
    //: UIGraphicsBeginImageContextWithOptions(targetSize, YES, 0);
    UIGraphicsBeginImageContextWithOptions(targetSize, YES, 0);
    //: [image drawInRect:CGRectMake(0, 0, targetSize.width, targetSize.height)];
    [image drawInRect:CGRectMake(0, 0, targetSize.width, targetSize.height)];
    //: image = UIGraphicsGetImageFromCurrentImageContext();
    image = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    //: return image;
    return image;
}



//: @end
@end