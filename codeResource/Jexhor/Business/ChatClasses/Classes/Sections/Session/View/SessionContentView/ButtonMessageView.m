
#import <Foundation/Foundation.h>

@interface PocketData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PocketData

+ (instancetype)sharedInstance {
    static PocketData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PocketDataToCache:(Byte *)data {
    int swallowTailedCoat = data[0];
    int shoutSize = data[1];
    for (int i = 0; i < swallowTailedCoat / 2; i++) {
        int begin = shoutSize + i;
        int end = shoutSize + swallowTailedCoat - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[shoutSize + swallowTailedCoat] = 0;
    return data + shoutSize;
}

- (NSString *)StringFromPocketData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PocketDataToCache:data]];
}  

//: icon_map
- (NSString *)app_seriesData {
    /* static */ NSString *app_seriesData = nil;
    if (!app_seriesData) {
        Byte value[] = {8, 9, 230, 5, 243, 182, 106, 82, 132, 112, 97, 109, 95, 110, 111, 99, 105, 166};
        app_seriesData = [self StringFromPocketData:value];
    }
    return app_seriesData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ButtonMessageView.m
// MessageContent
//
//  Created by chris on 15/2/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionLocationContentView.h"
#import "ButtonMessageView.h"
//: #import "FFFMessageModel.h"
#import "ShowModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @interface FFFSessionLocationContentView()
@interface ButtonMessageView()

//: @property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIImageView * imageView;

//: @property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UILabel * titleLabel;

//: @end
@end

//: @implementation FFFSessionLocationContentView
@implementation ButtonMessageView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initViewKey{
    //: self = [super initSessionMessageContentView];
    self = [super initViewKey];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: UIImage *image = [UIImage imageNamed:@"icon_map"];
        UIImage *image = [UIImage imageNamed:[[PocketData sharedInstance] app_seriesData]];
        //: _imageView = [[UIImageView alloc] initWithImage:image];
        _imageView = [[UIImageView alloc] initWithImage:image];

        //: CALayer *maskLayer = [CALayer layer];
        CALayer *maskLayer = [CALayer layer];
        //: maskLayer.cornerRadius = 13.0;
        maskLayer.cornerRadius = 13.0;
        //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        //: maskLayer.frame = _imageView.bounds;
        maskLayer.frame = _imageView.bounds;
        //: _imageView.layer.mask = maskLayer;
        _imageView.layer.mask = maskLayer;

        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)panorama:(ShowModel *)data
{
    //: [super refresh:data];
    [super panorama:data];
    //: NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    //: self.titleLabel.text = locationObject.title;
    self.titleLabel.text = locationObject.title;

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    ViewKey *setting = [[MessageContent secretResolution].config ofSetting:data.message];

    //: self.titleLabel.textColor = setting.textColor;
    self.titleLabel.textColor = setting.textColor;
    //: self.titleLabel.font = setting.font;
    self.titleLabel.font = setting.font;
}

//: - (void)onTouchUpInside:(id)sender
- (void)recorded:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = userTopData;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate aboveImage:event];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _titleLabel.nim_width = self.nim_width - 20;
    _titleLabel.nim_width = self.nim_width - 20;
    //: _titleLabel.nim_height= 35.f;
    _titleLabel.nim_height= 35.f;
    //: self.titleLabel.nim_centerY = 90.f;
    self.titleLabel.nim_centerY = 90.f;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model all:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
}


//: @end
@end