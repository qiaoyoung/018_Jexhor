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
@interface UIImage (Eyeglasses)

/*垂直翻转*/
//: - (UIImage *)flipVertical;
- (UIImage *)upended;

/*水平翻转*/
//: - (UIImage *)flipHorizontal;
- (UIImage *)streetwise;

/*改变size*/
//: - (UIImage *)resizeTo:(CGSize)size;
- (UIImage *)rawData:(CGSize)size;

//: - (UIImage *)resizeToWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)message:(CGFloat)width blowScale:(CGFloat)height;

/*等比例缩小图片至该宽度*/
//: - (UIImage *)scaleWithWidth:(CGFloat)width;
- (UIImage *)incapacitate:(CGFloat)width;

/*等比例缩小图片至该高度*/
//: - (UIImage *)scaleWithHeight:(CGFloat)heigh;
- (UIImage *)heightEnable:(CGFloat)heigh;

/*裁切*/
//: - (UIImage *)cropImageWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (UIImage *)withHeight:(CGFloat)x add:(CGFloat)y speedy:(CGFloat)width inside:(CGFloat)height;

/*修正拍照图片方向*/
//: - (UIImage *)fixOrientation;
- (UIImage *)view;

//: - (UIImage *)decoded;
- (UIImage *)secret;

//: - (UIImage *)addMark:(NSString *)mark textColor:(UIColor *)textColor font:(UIFont *)font point:(CGPoint)point;
- (UIImage *)can:(NSString *)mark showPoint:(UIColor *)textColor littleLeagueTeam:(UIFont *)font by:(CGPoint)point;

//: - (UIImage *)addCreateTime;
- (UIImage *)window;

//: - (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)light:(CGFloat)degrees;





//: + (NSString *) contentTypeExtensionForImageData:(NSData *)data;
+ (NSString *) nameWithInformation:(NSData *)data;

//: - (UIImage*)convertImageToScale:(double)scale;
- (UIImage*)utiliser:(double)scale;

//referWidth：压缩后的宽带，高等比压缩
//: + (UIImage *)scaleToSize:(UIImage *)img referWidth:(CGFloat)referWidth;
+ (UIImage *)space:(UIImage *)img send:(CGFloat)referWidth;

//图片压缩到指定大小
//: - (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage*)byName:(CGSize)targetSize;


//referSize：压缩后图片大小
//: + (UIImage *)scaleToSize:(UIImage *)img referSize:(CGFloat)referSize;
+ (UIImage *)scale:(UIImage *)img quantitativeRelation:(CGFloat)referSize;

//: + (UIImage *)scaleToNormalSize:(UIImage *)originImage;
+ (UIImage *)content:(UIImage *)originImage;

//: + (UIImage *)checkImage:(UIImage *)originImage;
+ (UIImage *)text:(UIImage *)originImage;
//: + (UIImage *)compressionImage:(UIImage *)originImage;
+ (UIImage *)month:(UIImage *)originImage;

//: - (UIImage *)compressImageWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)passage:(NSUInteger)maxLength;

//: + (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)link:(UIColor *)color toChild:(CGSize)size;

//: @end
@end