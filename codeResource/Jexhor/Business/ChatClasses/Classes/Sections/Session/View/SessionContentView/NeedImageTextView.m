
#import <Foundation/Foundation.h>
typedef struct {
    Byte abortOff;
    Byte *countactCapture;
    unsigned int audienceNumberact;
    Byte strawHeavily;
	int equity;
} LightData;

NSString *StringFromLightData(LightData *data);


//: icon_map
LightData appDismissText = (LightData){245, (Byte []){156, 150, 154, 155, 170, 152, 148, 133, 218}, 8, 251, 91};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NeedImageTextView.m
// Secret
//
//  Created by chris on 15/2/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionLocationContentView.h"
#import "NeedImageTextView.h"
//: #import "PushMessageModel.h"
#import "PurseModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @interface PushSessionLocationContentView()
@interface NeedImageTextView()

//: @property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIImageView * imageView;

//: @property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UILabel * titleLabel;

//: @end
@end

//: @implementation PushSessionLocationContentView
@implementation NeedImageTextView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initAssemblage{
    //: self = [super initSessionMessageContentView];
    self = [super initAssemblage];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: UIImage *image = [UIImage imageNamed:@"icon_map"];
        UIImage *image = [UIImage imageNamed:StringFromLightData(&appDismissText)];
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

//: - (void)refresh:(PushMessageModel *)data
- (void)name:(PurseModel *)data
{
    //: [super refresh:data];
    [super name:data];
    //: NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    //: self.titleLabel.text = locationObject.title;
    self.titleLabel.text = locationObject.title;

    //: PushKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SchoolbagTaskSurroundingsBlock *setting = [[Secret highlight].config click:data.message];

    //: self.titleLabel.textColor = setting.textColor;
    self.titleLabel.textColor = setting.textColor;
    //: self.titleLabel.font = setting.font;
    self.titleLabel.font = setting.font;
}

//: - (void)onTouchUpInside:(id)sender
- (void)played:(id)sender
{
    //: PushKitEvent *event = [[PushKitEvent alloc] init];
    BeforeEvent *event = [[BeforeEvent alloc] init];
    //: event.eventName = PushKitEventNameTapContent;
    event.eventName = dream_makeMsg;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate parametering:event];
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
    CGSize contentsize = [self.model victoryQuery:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
}


//: @end
@end

Byte *LightDataToByte(LightData *data) {
    if (data->strawHeavily < 144) return data->countactCapture;
    for (int i = 0; i < data->audienceNumberact; i++) {
        data->countactCapture[i] ^= data->abortOff;
    }
    data->countactCapture[data->audienceNumberact] = 0;
    data->strawHeavily = 48;
	if (data->audienceNumberact >= 1) {
		data->equity = data->countactCapture[0];
	}
    return data->countactCapture;
}

NSString *StringFromLightData(LightData *data) {
    return [NSString stringWithUTF8String:(char *)LightDataToByte(data)];
}
