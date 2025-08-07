// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "UIImage+ZipArchive.h"
#import "UIImage+Assemblage.h"
//: #import "SSZipArchiveManager.h"
#import "SharedContentView.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @implementation UIImage (ZipArchive)
@implementation UIImage (Assemblage)

//: + (void)load {
+ (void)load {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        // 交换 imageNamed: 方法的实现
        //: Method originalMethod = class_getClassMethod([UIImage class], @selector(imageNamed:));
        Method originalMethod = class_getClassMethod([UIImage class], @selector(imageNamed:));
        //: Method swizzledMethod = class_getClassMethod([UIImage class], @selector(zip_imageNamed:));
        Method swizzledMethod = class_getClassMethod([UIImage class], @selector(enabling:));
        //: method_exchangeImplementations(originalMethod, swizzledMethod);
        method_exchangeImplementations(originalMethod, swizzledMethod);
    //: });
    });
}

//: + (UIImage *)zip_imageNamed:(NSString *)name {
+ (UIImage *)enabling:(NSString *)name {
    // 先尝试从压缩包中加载
    //: UIImage *image = [[SSZipArchiveManager sharedManager] zip_imageNamed:name];
    UIImage *image = [[SharedContentView manager] enabling:name];
    //: if (image) {
    if (image) {
        //: return image;
        return image;
    }

    // 如果压缩包中没有，则使用原始的 imageNamed: 方法
    //: return [self zip_imageNamed:name]; 
    return [self enabling:name]; // 这里会调用原始的 imageNamed: 方法，因为已经交换了实现
}

//: @end
@end