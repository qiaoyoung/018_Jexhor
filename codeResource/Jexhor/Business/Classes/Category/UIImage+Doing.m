
#import <Foundation/Foundation.h>

@interface SubData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SubData

+ (instancetype)sharedInstance {
    static SubData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SubDataToCache:(Byte *)data {
    int disappearWing = data[0];
    Byte setUp = data[1];
    int quip = data[2];
    for (int i = quip; i < quip + disappearWing; i++) {
        int value = data[i] + setUp;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[quip + disappearWing] = 0;
    return data + quip;
}

- (NSString *)StringFromSubData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SubDataToCache:data]];
}

//: Clear_color_image
- (NSString *)dream_justifyName {
    /* static */ NSString *dream_justifyName = nil;
    if (!dream_justifyName) {
        Byte value[] = {17, 16, 8, 55, 199, 191, 107, 159, 51, 92, 85, 81, 98, 79, 83, 95, 92, 95, 98, 79, 89, 93, 81, 87, 85, 140};
        dream_justifyName = [self StringFromSubData:value];
    }
    return dream_justifyName;
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
#import "UIImage+Doing.h"

//: @interface UIColorCache : NSObject
@interface DeviceRead : NSObject
//: @property (nonatomic,strong) NSCache *colorImageCache;
@property (nonatomic,strong) NSCache *colorImageCache;
//: @end
@end

//: @implementation UIColorCache
@implementation DeviceRead
//: + (instancetype)sharedCache
+ (instancetype)name
{
    //: static UIColorCache *instance = nil;
    static DeviceRead *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[UIColorCache alloc] init];
        instance = [[DeviceRead alloc] init];
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
- (UIImage *)sole:(UIColor *)color
{
    //: return color ? [_colorImageCache objectForKey:[color description]] : nil;
    return color ? [_colorImageCache objectForKey:[color description]] : nil;
}

//: - (void)setImage:(UIImage *)image
- (void)lid:(UIImage *)image
        //: forColor:(UIColor *)color
        should:(UIColor *)color
{
    //: [_colorImageCache setObject:image
    [_colorImageCache setObject:image
                         //: forKey:[color description]];
                         forKey:[color description]];
}
//: @end
@end

//: @implementation UIImage (NTESColor)
@implementation UIImage (Doing)

//: + (UIImage *)clearColorImage {
+ (UIImage *)range {
    //: return [UIImage imageNamed:@"Clear_color_image"];
    return [UIImage imageNamed:[[SubData sharedInstance] dream_justifyName]];
}

//: + (UIImage *)imageWithColor:(UIColor *)color {
+ (UIImage *)domainName:(UIColor *)color {
    //: if (color == nil)
    if (color == nil)
    {
        //: assert(0);
        assert(0);
        //: return nil;
        return nil;
    }
    //: UIImage *image = [[UIColorCache sharedCache] image:color];
    UIImage *image = [[DeviceRead name] sole:color];
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
        [[DeviceRead name] lid:image
                                    //: forColor:color];
                                    should:color];
    }
    //: return image;
    return image;
}


//: @end
@end