
#import <Foundation/Foundation.h>

typedef struct {
    Byte journalistStatement;
    Byte *twilightOfTheGods;
    unsigned int tremendous;
	int doingend;
	int wildGooseChase;
	int ting;
} StructTypicalPopularityData;

@interface TypicalPopularityData : NSObject

+ (instancetype)sharedInstance;

//: icon_reply_close
@property (nonatomic, copy) NSString *appTheologyNursePursuitTitle;

//: #2B2F36
@property (nonatomic, copy) NSString *mainGazeTitle;

//: #ffffff
@property (nonatomic, copy) NSString *notiHemeTitle;

//: F6F7FA
@property (nonatomic, copy) NSString *show_leatherBronzeValue;

//: B391FF
@property (nonatomic, copy) NSString *dream_uniteCandleName;

@end

@implementation TypicalPopularityData

+ (instancetype)sharedInstance {
    static TypicalPopularityData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TypicalPopularityDataToByte:(StructTypicalPopularityData *)data {
    for (int i = 0; i < data->tremendous; i++) {
        data->twilightOfTheGods[i] ^= data->journalistStatement;
    }
    data->twilightOfTheGods[data->tremendous] = 0;
	if (data->tremendous >= 3) {
		data->doingend = data->twilightOfTheGods[0];
		data->wildGooseChase = data->twilightOfTheGods[1];
		data->ting = data->twilightOfTheGods[2];
	}
    return data->twilightOfTheGods;
}

- (NSString *)StringFromTypicalPopularityData:(StructTypicalPopularityData *)data {
    return [NSString stringWithUTF8String:(char *)[self TypicalPopularityDataToByte:data]];
}

//: #2B2F36
- (NSString *)mainGazeTitle {
    if (!_mainGazeTitle) {
        StructTypicalPopularityData value = (StructTypicalPopularityData){95, (Byte []){124, 109, 29, 109, 25, 108, 105, 225}, 7, 187, 67, 98};
        _mainGazeTitle = [self StringFromTypicalPopularityData:&value];
    }
    return _mainGazeTitle;
}

//: icon_reply_close
- (NSString *)appTheologyNursePursuitTitle {
    if (!_appTheologyNursePursuitTitle) {
        StructTypicalPopularityData value = (StructTypicalPopularityData){222, (Byte []){183, 189, 177, 176, 129, 172, 187, 174, 178, 167, 129, 189, 178, 177, 173, 187, 85}, 16, 166, 172, 16};
        _appTheologyNursePursuitTitle = [self StringFromTypicalPopularityData:&value];
    }
    return _appTheologyNursePursuitTitle;
}

//: B391FF
- (NSString *)dream_uniteCandleName {
    if (!_dream_uniteCandleName) {
        StructTypicalPopularityData value = (StructTypicalPopularityData){77, (Byte []){15, 126, 116, 124, 11, 11, 39}, 6, 202, 44, 22};
        _dream_uniteCandleName = [self StringFromTypicalPopularityData:&value];
    }
    return _dream_uniteCandleName;
}

//: F6F7FA
- (NSString *)show_leatherBronzeValue {
    if (!_show_leatherBronzeValue) {
        StructTypicalPopularityData value = (StructTypicalPopularityData){158, (Byte []){216, 168, 216, 169, 216, 223, 186}, 6, 21, 206, 184};
        _show_leatherBronzeValue = [self StringFromTypicalPopularityData:&value];
    }
    return _show_leatherBronzeValue;
}

//: #ffffff
- (NSString *)notiHemeTitle {
    if (!_notiHemeTitle) {
        StructTypicalPopularityData value = (StructTypicalPopularityData){101, (Byte []){70, 3, 3, 3, 3, 3, 3, 156}, 7, 108, 196, 30};
        _notiHemeTitle = [self StringFromTypicalPopularityData:&value];
    }
    return _notiHemeTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CircleView.m
// MessageContent
//
//  Created by He on 2020/4/3.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFReplyContentView.h"
#import "CircleView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+MessageContent.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"

//: @interface FFFReplyContentView ()
@interface CircleView ()

//: @end
@end

//: @implementation FFFReplyContentView
@implementation CircleView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor ground:[TypicalPopularityData sharedInstance].notiHemeTitle];

        //: UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        UIView *bg = [[UIView alloc]initWithFrame:CGRectMake(15, 2, [[UIScreen mainScreen] bounds].size.width-30, 48)];
        //: bg.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
        bg.backgroundColor = [UIColor ground:[TypicalPopularityData sharedInstance].show_leatherBronzeValue];
        //: bg.layer.cornerRadius = 8;
        bg.layer.cornerRadius = 8;
        //: [self addSubview:bg];
        [self addSubview:bg];

        //: _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        _picView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 8, 32, 32)];
        //: _picView.layer.cornerRadius = 4;
        _picView.layer.cornerRadius = 4;
        //: _picView.layer.masksToBounds = YES;
        _picView.layer.masksToBounds = YES;
        //: [bg addSubview:_picView];
        [bg addSubview:_picView];
        //: _picView.hidden = YES;
        _picView.hidden = YES;

        //: _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        _fromUser = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, [[UIScreen mainScreen] bounds].size.width-30, 15)];
        //: _fromUser.textColor = [UIColor colorWithHexString:@"B391FF"];
        _fromUser.textColor = [UIColor ground:[TypicalPopularityData sharedInstance].dream_uniteCandleName];
        //: _fromUser.font = [UIFont systemFontOfSize:12];
        _fromUser.font = [UIFont systemFontOfSize:12];
        //: [bg addSubview:_fromUser];
        [bg addSubview:_fromUser];

        //: _label = [[UILabel alloc] init];
        _label = [[UILabel alloc] init];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        _label.frame = CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30-16-30, 25);
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
        //: _label.textAlignment = NSTextAlignmentLeft;
        _label.textAlignment = NSTextAlignmentLeft;
        //: _label.lineBreakMode = NSLineBreakByTruncatingTail;
        _label.lineBreakMode = NSLineBreakByTruncatingTail;
        //: _label.font = [UIFont systemFontOfSize:12];
        _label.font = [UIFont systemFontOfSize:12];
        //: _label.textColor = [UIColor colorWithHexString:@"#2B2F36"];
        _label.textColor = [UIColor ground:[TypicalPopularityData sharedInstance].mainGazeTitle];
        //: [bg addSubview:_label];
        [bg addSubview:_label];

        //: _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        _closeButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-38-16, 17, 16, 16);
        //: [_closeButton setImage:[UIImage imageNamed:@"icon_reply_close"]
        [_closeButton setImage:[UIImage imageNamed:[TypicalPopularityData sharedInstance].appTheologyNursePursuitTitle]
                      //: forState:UIControlStateNormal];
                      forState:UIControlStateNormal];
        //: [_closeButton addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_closeButton addTarget:self action:@selector(videoed:) forControlEvents:UIControlEventTouchUpInside];
        //: [bg addSubview:_closeButton];
        [bg addSubview:_closeButton];

//        _divider = [[UIView alloc] initWithFrame:CGRectMake(15, self.height-1, SCREEN_WIDTH-30, 1)];
//        _divider.backgroundColor = [UIColor colorWithWhite:1 alpha:0.1];
//        [self addSubview:_divider];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
//    self.closeButton.nim_size = CGSizeMake(self.nim_height, self.nim_height);
//    
//    self.divider.nim_left = self.closeButton.nim_right + 2;
//    
//    self.label.nim_height = self.label.intrinsicContentSize.height + 5;
//    self.label.nim_width = self.nim_width - self.closeButton.nim_right;
//    self.label.nim_left = self.divider.nim_right + 2;
//    self.label.nim_centerY = self.nim_height * 0.5;
//    
//    self.divider.nim_height = self.label.nim_height;
//    self.divider.nim_centerY = self.nim_height * .5f;
}

//: - (void)dismiss
- (void)name
{
    //: [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}


//: - (void)onClicked:(id)sender
- (void)videoed:(id)sender
{
    //: self.hidden = YES;
    self.hidden = YES;
    //: if ([self.delegate respondsToSelector:@selector(onClearReplyContent:)])
    if ([self.delegate respondsToSelector:@selector(actionned:)])
    {
        //: [self.delegate onClearReplyContent:sender];
        [self.delegate actionned:sender];
    }
}

//: @end
@end