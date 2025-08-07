// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+KIImage.h
//  Kitalker
//
//  Created by 杨 烽 on 12-8-3.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (KIAdditions)
@interface UIImage (AttributeAdditions)

/*垂直翻转*/
//: - (UIImage *)flipVertical;
- (UIImage *)toss;

/*水平翻转*/
//: - (UIImage *)flipHorizontal;
- (UIImage *)selectedHorizontal;

/*改变size*/
//: - (UIImage *)resizeTo:(CGSize)size;
- (UIImage *)media:(CGSize)size;

//: - (UIImage *)resizeToWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)key:(CGFloat)width dateHeight:(CGFloat)height;

/*等比例缩小图片至该宽度*/
//: - (UIImage *)scaleWithWidth:(CGFloat)width;
- (UIImage *)path:(CGFloat)width;

/*等比例缩小图片至该高度*/
//: - (UIImage *)scaleWithHeight:(CGFloat)heigh;
- (UIImage *)contentHeight:(CGFloat)heigh;

/*裁切*/
//: - (UIImage *)cropImageWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (UIImage *)start:(CGFloat)x title:(CGFloat)y cut:(CGFloat)width smart:(CGFloat)height;

/*修正拍照图片方向*/
//: - (UIImage *)fixOrientation;
- (UIImage *)tag;

//: - (UIImage *)decoded;
- (UIImage *)handle;

//: - (UIImage *)addMark:(NSString *)mark textColor:(UIColor *)textColor font:(UIFont *)font point:(CGPoint)point;
- (UIImage *)snapPoint:(NSString *)mark size:(UIColor *)textColor title:(UIFont *)font current:(CGPoint)point;

//: - (UIImage *)addCreateTime;
- (UIImage *)reply;

//: - (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)must:(CGFloat)degrees;





//: + (NSString *) contentTypeExtensionForImageData:(NSData *)data;
+ (NSString *) pullMessage:(NSData *)data;

//: - (UIImage*)convertImageToScale:(double)scale;
- (UIImage*)dataUser:(double)scale;

//referWidth：压缩后的宽带，高等比压缩
//: + (UIImage *)scaleToSize:(UIImage *)img referWidth:(CGFloat)referWidth;
+ (UIImage *)view:(UIImage *)img dataConverter:(CGFloat)referWidth;

//图片压缩到指定大小
//: - (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage*)disableSize:(CGSize)targetSize;


//referSize：压缩后图片大小
//: + (UIImage *)scaleToSize:(UIImage *)img referSize:(CGFloat)referSize;
+ (UIImage *)tapQuick:(UIImage *)img message:(CGFloat)referSize;

//: + (UIImage *)scaleToNormalSize:(UIImage *)originImage;
+ (UIImage *)selected:(UIImage *)originImage;

//: + (UIImage *)checkImage:(UIImage *)originImage;
+ (UIImage *)input:(UIImage *)originImage;
//: + (UIImage *)compressionImage:(UIImage *)originImage;
+ (UIImage *)actionLineDate:(UIImage *)originImage;

//: - (UIImage *)compressImageWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)iconWithBubble:(NSUInteger)maxLength;

//: + (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)chromaticColourObject:(UIColor *)color option:(CGSize)size;

//: @end
@end