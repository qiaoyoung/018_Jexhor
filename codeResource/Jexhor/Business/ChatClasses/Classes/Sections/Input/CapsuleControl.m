
#import <Foundation/Foundation.h>

typedef struct {
    Byte sizeTemperature;
    Byte *enableensiveActivity;
    unsigned int quantityerest;
	int flush;
	int roc;
	int dogJar;
} StructInfoData;

@interface InfoData : NSObject

+ (instancetype)sharedInstance;

//: emoji_delete
@property (nonatomic, copy) NSString *userConsumeTitle;

//: emoji_bar_bg
@property (nonatomic, copy) NSString *noti_professionOurStr;

//: #05D481
@property (nonatomic, copy) NSString *noti_trafficWarMessage;

@end

@implementation InfoData

+ (instancetype)sharedInstance {
    static InfoData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)InfoDataToByte:(StructInfoData *)data {
    for (int i = 0; i < data->quantityerest; i++) {
        data->enableensiveActivity[i] ^= data->sizeTemperature;
    }
    data->enableensiveActivity[data->quantityerest] = 0;
	if (data->quantityerest >= 3) {
		data->flush = data->enableensiveActivity[0];
		data->roc = data->enableensiveActivity[1];
		data->dogJar = data->enableensiveActivity[2];
	}
    return data->enableensiveActivity;
}

- (NSString *)StringFromInfoData:(StructInfoData *)data {
    return [NSString stringWithUTF8String:(char *)[self InfoDataToByte:data]];
}

//: emoji_bar_bg
- (NSString *)noti_professionOurStr {
    if (!_noti_professionOurStr) {
        StructInfoData value = (StructInfoData){121, (Byte []){28, 20, 22, 19, 16, 38, 27, 24, 11, 38, 27, 30, 141}, 12, 253, 16, 33};
        _noti_professionOurStr = [self StringFromInfoData:&value];
    }
    return _noti_professionOurStr;
}

//: #05D481
- (NSString *)noti_trafficWarMessage {
    if (!_noti_trafficWarMessage) {
        StructInfoData value = (StructInfoData){5, (Byte []){38, 53, 48, 65, 49, 61, 52, 87}, 7, 96, 37, 253};
        _noti_trafficWarMessage = [self StringFromInfoData:&value];
    }
    return _noti_trafficWarMessage;
}

//: emoji_delete
- (NSString *)userConsumeTitle {
    if (!_userConsumeTitle) {
        StructInfoData value = (StructInfoData){124, (Byte []){25, 17, 19, 22, 21, 35, 24, 25, 16, 25, 8, 25, 234}, 12, 125, 163, 138};
        _userConsumeTitle = [self StringFromInfoData:&value];
    }
    return _userConsumeTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CapsuleControl.m
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushInputEmoticonTabView.h"
#import "CapsuleControl.h"
//: #import "PushInputEmoticonManager.h"
#import "DirectorManager.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"

//: const NSInteger PushInputEmoticonTabViewHeight = 44;
const NSInteger dreamUnderlyingMsg = 44;
//: const NSInteger NIMInputEmoticonSendButtonWidth = 56;
const NSInteger dreamEdgeId = 56;

//: const CGFloat NIMInputLineBoarder = .5f;
const CGFloat k_methodIdent = .5f;

//: @interface PushInputEmoticonTabView()
@interface CapsuleControl()

//: @property (nonatomic,strong) NSMutableArray * tabs;
@property (nonatomic,strong) NSMutableArray * tabs;

//: @property (nonatomic,strong) NSMutableArray * seps;
@property (nonatomic,strong) NSMutableArray * seps;

//: @end
@end



//: @implementation PushInputEmoticonTabView
@implementation CapsuleControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, PushInputEmoticonTabViewHeight)];
    self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, dreamUnderlyingMsg)];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"emoji_bar_bg"]];
        //: UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        //: bg.image = [UIImage imageNamed:@"emoji_bar_bg"];
        bg.image = [UIImage imageNamed:[InfoData sharedInstance].noti_professionOurStr];
        //: [self addSubview:bg];
        [self addSubview:bg];


        //: _tabs = [[NSMutableArray alloc] init];
        _tabs = [[NSMutableArray alloc] init];
        //: _seps = [[NSMutableArray alloc] init];
        _seps = [[NSMutableArray alloc] init];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"emoji_delete"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:[InfoData sharedInstance].userConsumeTitle] forState:UIControlStateNormal];
//        [_sendButton setTitle:@"发送".nim_localized forState:UIControlStateNormal];
//        _sendButton.titleLabel.font = [UIFont systemFontOfSize:13.f];
//        [_sendButton setBackgroundColor:NEEKIT_UIColorFromRGB(0x0079FF)];

//        _sendButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        _sendButton.layer.cornerRadius = 10;
//        _sendButton.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _sendButton.layer.shadowOffset = CGSizeMake(0,1);
//        _sendButton.layer.shadowOpacity = 1;
//        _sendButton.layer.shadowRadius = 8;
//        
        //: _sendButton.nim_height = PushInputEmoticonTabViewHeight;
        _sendButton.nim_height = dreamUnderlyingMsg;
        //: _sendButton.nim_width = NIMInputEmoticonSendButtonWidth;
        _sendButton.nim_width = dreamEdgeId;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];

//        self.layer.borderColor = sepColor.CGColor;
//        self.layer.borderWidth = NIMInputLineBoarder;

    }
    //: return self;
    return self;
}


//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs
- (void)imageCatalogs:(NSArray*)emoticonCatalogs
{
    //: for (UIView *subView in [_tabs arrayByAddingObjectsFromArray:_seps]) {
    for (UIView *subView in [_tabs arrayByAddingObjectsFromArray:_seps]) {
        //: [subView removeFromSuperview];
        [subView removeFromSuperview];
    }
    //: [_tabs removeAllObjects];
    [_tabs removeAllObjects];
    //: [_seps removeAllObjects];
    [_seps removeAllObjects];
    //: for (NIMInputEmoticonCatalog * catelog in emoticonCatalogs) {
    for (SizeCatalog * catelog in emoticonCatalogs) {
        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: button.frame = CGRectMake(0, 0, 48, 40);
        button.frame = CGRectMake(0, 0, 48, 40);
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.icon] forState:UIControlStateNormal];
        [button setImage:[UIImage info:catelog.icon] forState:UIControlStateNormal];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateHighlighted];
        [button setImage:[UIImage info:catelog.iconPressed] forState:UIControlStateHighlighted];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateSelected];
        [button setImage:[UIImage info:catelog.iconPressed] forState:UIControlStateSelected];
        //: [button addTarget:self action:@selector(onTouchTab:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(names:) forControlEvents:UIControlEventTouchUpInside];
        //: [button sizeToFit];
        [button sizeToFit];
        //: [self addSubview:button];
        [self addSubview:button];
        //: button.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        button.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: button.layer.cornerRadius = 10;
        button.layer.cornerRadius = 10;
        //: button.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        button.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: button.layer.shadowOffset = CGSizeMake(0,1);
        button.layer.shadowOffset = CGSizeMake(0,1);
        //: button.layer.shadowOpacity = 1;
        button.layer.shadowOpacity = 1;
        //: button.layer.shadowRadius = 8;
        button.layer.shadowRadius = 8;


        //: [_tabs addObject:button];
        [_tabs addObject:button];

//        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(0, 0, NIMInputLineBoarder, PushInputEmoticonTabViewHeight)];
////        sep.backgroundColor = sepColor;
//        sep.backgroundColor = [UIColor whiteColor];
//        [_seps addObject:sep];
//        [self addSubview:sep];
    }
    //: [self selectTabIndex:0];
    [self stockMarketIndex:0];
}

//: - (void)onTouchTab:(id)sender{
- (void)names:(id)sender{
    //: NSInteger index = [self.tabs indexOfObject:sender];
    NSInteger index = [self.tabs indexOfObject:sender];
    //: [self selectTabIndex:index];
    [self stockMarketIndex:index];
    //: if ([self.delegate respondsToSelector:@selector(tabView:didSelectTabIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(nameSize:doingTap:)]) {
        //: [self.delegate tabView:self didSelectTabIndex:index];
        [self.delegate nameSize:self doingTap:index];
    }
}


//: - (void)selectTabIndex:(NSInteger)index{
- (void)stockMarketIndex:(NSInteger)index{
    //: for (NSInteger i = 0; i < self.tabs.count ; i++) {
    for (NSInteger i = 0; i < self.tabs.count ; i++) {
        //: UIButton *btn = self.tabs[i];
        UIButton *btn = self.tabs[i];
        //: btn.layer.borderWidth = 0;
        btn.layer.borderWidth = 0;
        //: btn.selected = i == index;
        btn.selected = i == index;
        //: if(btn.selected){
        if(btn.selected){
            //: btn.layer.borderWidth = 1.5;
            btn.layer.borderWidth = 1.5;
            //: btn.layer.borderColor = [UIColor colorWithHexString:@"#05D481"].CGColor;
            btn.layer.borderColor = [UIColor user:[InfoData sharedInstance].noti_trafficWarMessage].CGColor;
        }
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 10;
    CGFloat spacing = 10;
    //: CGFloat left = spacing;
    CGFloat left = spacing;
    //: for (NSInteger index = 0; index < self.tabs.count ; index++) {
    for (NSInteger index = 0; index < self.tabs.count ; index++) {
        //: UIButton *button = self.tabs[index];
        UIButton *button = self.tabs[index];
        //: button.nim_width = NIMInputEmoticonSendButtonWidth;
        button.nim_width = dreamEdgeId;
        //: button.nim_height = PushInputEmoticonTabViewHeight;
        button.nim_height = dreamUnderlyingMsg;
        //: button.nim_left = left;
        button.nim_left = left;
        //: button.nim_centerY = self.nim_height * .5f;
        button.nim_centerY = self.nim_height * .5f;

        //: left = (int)(button.nim_right + spacing);
        left = (int)(button.nim_right + spacing);

//        UIView *sep = self.seps[index];
//        sep.nim_left = (int)(button.nim_right + spacing);
//        left = (int)(sep.nim_right + spacing);
    }
    //: _sendButton.nim_right = (int)self.nim_width;
    _sendButton.nim_right = (int)self.nim_width;
}


//: @end
@end
