
#import <Foundation/Foundation.h>

typedef struct {
    Byte titlePremium;
    Byte *expansive;
    unsigned int buttonMax;
	int switchend;
} StructUniteData;

@interface UniteData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation UniteData

+ (instancetype)sharedInstance {
    static UniteData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)UniteDataToByte:(StructUniteData *)data {
    for (int i = 0; i < data->buttonMax; i++) {
        data->expansive[i] ^= data->titlePremium;
    }
    data->expansive[data->buttonMax] = 0;
	if (data->buttonMax >= 1) {
		data->switchend = data->expansive[0];
	}
    return data->expansive;
}

- (NSString *)StringFromUniteData:(StructUniteData *)data {
    return [NSString stringWithUTF8String:(char *)[self UniteDataToByte:data]];
}

//: head_default_group
- (NSString *)m_oldData {
    /* static */ NSString *m_oldData = nil;
    if (!m_oldData) {
        StructUniteData value = (StructUniteData){241, (Byte []){153, 148, 144, 149, 174, 149, 148, 151, 144, 132, 157, 133, 174, 150, 131, 158, 132, 129, 166}, 18, 109};
        m_oldData = [self StringFromUniteData:&value];
    }
    return m_oldData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonControl.m
// MessageContent
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkAvatarImageView.h"
#import "ButtonControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "objc/runtime.h"
#import "objc/runtime.h"
//: #import "WorkKitDependency.h"
#import "WorkKitDependency.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "WorkKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "WorkKitUrlManager.h"
#import "SessionManager.h"

//: @interface WorkAvatarImageView()
@interface ButtonControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation WorkAvatarImageView
@implementation ButtonControl

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: [self setup];
        [self range];
    }
    //: return self;
    return self;
}


//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: if (self = [super initWithCoder:aDecoder])
    if (self = [super initWithCoder:aDecoder])
    {
        //: [self setup];
        [self range];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self setupRadius];
    [self titleRadius];

    //: if (!__CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    if (!__CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    {
        //: self.imageView.nim_size = self.nim_size;
        self.imageView.nim_size = self.nim_size;
//        self.imageView.image = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = _image;
        self.imageView.image = _image;
    }

}

//: - (void)setup{
- (void)range{
    //: [self setupRadius];
    [self titleRadius];
    //: _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    //: _imageView.clipsToBounds = YES;
    _imageView.clipsToBounds = YES;
    //: [self addSubview:_imageView];
    [self addSubview:_imageView];
    //: _imageView.layer.masksToBounds = YES;
    _imageView.layer.masksToBounds = YES;
    //: _imageView.layer.cornerRadius = _cornerRadius;
    _imageView.layer.cornerRadius = _cornerRadius;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

}


//: - (void)setupRadius{
- (void)titleRadius{
    //: switch ([MyUserKit sharedKit].config.avatarType)
    switch ([MessageContent secretResolution].config.avatarType)
    {
        //: case NIMKitAvatarTypeNone:
        case NIMKitAvatarTypeNone:
            //: _cornerRadius = 0;
            _cornerRadius = 0;
            //: break;
            break;
        //: case NIMKitAvatarTypeRounded:
        case NIMKitAvatarTypeRounded:
            //: _cornerRadius = self.nim_width *.5f;
            _cornerRadius = self.nim_width *.5f;//self.nim_width *.5f;
            //: break;
            break;
        //: case NIMKitAvatarTypeRadiusCorner:
        case NIMKitAvatarTypeRadiusCorner:
            //: _cornerRadius = self.nim_width *.5f;
            _cornerRadius = self.nim_width *.5f;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}


//: - (void)setImage:(UIImage *)image
- (void)setImage:(UIImage *)image
{
    //: if (_image != image)
    if (_image != image)
    {
        //: _image = image;
        _image = image;
//        UIImage *fixedImage  = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = image;
        self.imageView.image = image;
    }
}

//: - (UIImage*)imageAddCorner:(UIImage *)image radius:(CGFloat)radius andSize:(CGSize)size
- (UIImage*)drunkBlueImageNumberryAddSize:(UIImage *)image post:(CGFloat)radius solutionInformation:(CGSize)size
{
    //: CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    //: UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    //: CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //: CGPathRef path = self.path;
    CGPathRef path = self.messageMax;
    //: CGContextAddPath(ctx,path);
    CGContextAddPath(ctx,path);
    //: CGContextClip(ctx);
    CGContextClip(ctx);
    //: [image drawInRect:rect];
    [image drawInRect:rect];
    //: CGContextDrawPath(ctx, kCGPathFillStroke);
    CGContextDrawPath(ctx, kCGPathFillStroke);
    //: UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (CGPathRef)path
- (CGPathRef)messageMax
{
    //: return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
    return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                       //: cornerRadius:self.cornerRadius] CGPath];
                                       cornerRadius:self.cornerRadius] CGPath];
}

//: - (void)setAvatarBySession:(NIMSession *)session
- (void)setSizeKey:(NIMSession *)session
{
    //: WorkKitInfo *info = nil;
    ConfirmationInfo *info = nil;
    //: if (session.sessionType == NIMSessionTypeTeam) {
    if (session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil];
        info = [[MessageContent secretResolution] info:session.sessionId comment:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default_group"];
        info.avatarImage = [UIImage imageNamed:[[UniteData sharedInstance] m_oldData]];
    //: } else if (session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil];
        info = [[MessageContent secretResolution] item:session.sessionId pit:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default_group"];
        info.avatarImage = [UIImage imageNamed:[[UniteData sharedInstance] m_oldData]];
    //: } else {
    } else {
        //: WorkKitInfoFetchOption *option = [[WorkKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: info = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option];
        info = [[MessageContent secretResolution] recent:session.sessionId blue:option];
    }
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self counterlanguage:info.avatarUrlString betweenImage:info.avatarImage direct:0];
}

//: - (void)setAvatarByMessage:(NIMMessage *)message
- (void)setEndPull:(NIMMessage *)message
{
    //: WorkKitInfoFetchOption *option = [[WorkKitInfoFetchOption alloc] init];
    RangeOption *option = [[RangeOption alloc] init];
    //: option.message = message;
    option.message = message;
    //: NSString *from = message.from;
    NSString *from = message.from;
    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:from option:option];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:from blue:option];
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self counterlanguage:info.avatarUrlString betweenImage:info.avatarImage direct:0];
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder {
- (void)media:(NSURL *)url docketWithinImage:(UIImage *)placeholder {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:0];
    [self counterlanguage:url.absoluteString betweenImage:placeholder direct:0];
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options {
- (void)title:(NSURL *)url myPin:(UIImage *)placeholder image:(SDWebImageOptions)options {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:options];
    [self counterlanguage:url.absoluteString betweenImage:placeholder direct:options];
}

//: - (void)setImageWithUrlString:(NSString *)urlString placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)counterlanguage:(NSString *)urlString betweenImage:(UIImage *)placeholderImage direct:(SDWebImageOptions)options {
    //: if (placeholderImage && self.image != placeholderImage) {
    if (placeholderImage && self.image != placeholderImage) {
        //: self.image = placeholderImage;
        self.image = placeholderImage;
    }
    //: if (urlString.length == 0) {
    if (urlString.length == 0) {
        //: return;
        return;
    }

    //查询
    //: __block NSURL *targetUrl = nil;
    __block NSURL *targetUrl = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[WorkKitUrlManager shareManager] queryQriginalUrlWithShortUrl:urlString completion:^(NSString *originalUrl, NSError *error) {
    [[SessionManager table] qriginal:urlString rCompletion:^(NSString *originalUrl, NSError *error) {
        //: if (urlString && !error) {
        if (urlString && !error) {
            //: targetUrl = [NSURL URLWithString:originalUrl];
            targetUrl = [NSURL URLWithString:originalUrl];
        //: } else {
        } else {
            //: targetUrl = [NSURL URLWithString:urlString];
            targetUrl = [NSURL URLWithString:urlString];
        }
        //: [weakSelf didSetImageUrl:targetUrl placeholderImage:placeholderImage options:options];
        [weakSelf show:targetUrl metronymic:placeholderImage shade:options];
    //: }];
    }];
}

//: - (void)didSetImageUrl:(NSURL *)url placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)show:(NSURL *)url metronymic:(UIImage *)placeholderImage shade:(SDWebImageOptions)options {
    //: if (!url) {
    if (!url) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
//    UIImage *fixedPlaceholderImage  = [self imageAddCorner:placeholderImage
//                                                    radius:_cornerRadius
//                                                   andSize:self.bounds.size];

    //: UIImage *fixedPlaceholderImage = placeholderImage;
    UIImage *fixedPlaceholderImage = placeholderImage;

    //: [_imageView sd_setImageWithURL:url
    [_imageView sd_setImageWithURL:url
                  //: placeholderImage:fixedPlaceholderImage
                  placeholderImage:fixedPlaceholderImage
                           //: options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                           options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                         //: completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                         completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        //: if (image) {
        if (image) {
            //weakSelf.image = image;
            //: _imageView.image = image;
            _imageView.image = image;
            //: _image = image;
            _image = image;
        }

    //: }];
    }];


}
//: @end
@end
