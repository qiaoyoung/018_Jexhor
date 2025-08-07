
#import <Foundation/Foundation.h>

@interface CrowdedData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CrowdedData

+ (instancetype)sharedInstance {
    static CrowdedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CrowdedDataToCache:(Byte *)data {
    int earlFinding = data[0];
    int itsWarn = data[1];
    for (int i = 0; i < earlFinding / 2; i++) {
        int begin = itsWarn + i;
        int end = itsWarn + earlFinding - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[itsWarn + earlFinding] = 0;
    return data + itsWarn;
}

- (NSString *)StringFromCrowdedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CrowdedDataToCache:data]];
}  

//: Clear_color_image
- (NSString *)userLabelValue {
    /* static */ NSString *userLabelValue = nil;
    if (!userLabelValue) {
        Byte value[] = {17, 11, 103, 136, 112, 134, 215, 37, 10, 159, 242, 101, 103, 97, 109, 105, 95, 114, 111, 108, 111, 99, 95, 114, 97, 101, 108, 67, 195};
        userLabelValue = [self StringFromCrowdedData:value];
    }
    return userLabelValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Color.m
//  yixin_iphone
//
//  Created by Xuhui on 14-3-17.
//  Copyright (c) 2014年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "UIImage+NTESColor.h"
#import "UIImage+Fixing.h"

//: @interface UIColorCache : NSObject
@interface ClickWith : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation ClickWith
//: + (instancetype)sharedCache
+ (instancetype)corporateCache
{
    //: static UIColorCache *instance = nil;
    static ClickWith *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[ClickWith alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _colorImageCache = [[NSCache alloc] init];
        _colorImageCache = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (UIImage *)image:(UIColor *)color
- (UIImage *)worldView:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)nonsolidColour:(UIImage *)image
        //: forColor:(UIColor *)color
        container:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (NTESColor)
@implementation UIImage (Fixing)

//: + (UIImage *)clearColorImage {
+ (UIImage *)request {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:[[CrowdedData sharedInstance] userLabelValue]];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)tone:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[ClickWith corporateCache] worldView:color];
    //: if (image == nil)
    if (image == nil)
    {
        //: CGFloat alphaChannel;
        CGFloat alphaChannel;
        //: [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        [color getRed:NULL green:NULL blue:NULL alpha:&alphaChannel];
        //: BOOL opaqueImage = (alphaChannel == 1.0);
        BOOL opaqueImage = (alphaChannel == 1.0);
        //: CGRect rect = CGRectMake(0, 0, 1, 1);
        CGRect rect = CGRectMake(0, 0, 1, 1);
        //: UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        UIGraphicsBeginImageContextWithOptions(rect.size, opaqueImage, [UIScreen mainScreen].scale);
        //: [color setFill];
        [color setFill];
        //: UIRectFill(rect);
        UIRectFill(rect);
        //: image = UIGraphicsGetImageFromCurrentImageContext();
        image = UIGraphicsGetImageFromCurrentImageContext();
        //: UIGraphicsEndImageContext();
        UIGraphicsEndImageContext();
        //: [[UIColorCache sharedCache] setImage:image
        [[ClickWith corporateCache] nonsolidColour:image
                                    //: forColor:color];
                                    container:color];
    }
    //: return image;
    return image;
}


//: @end
@end