
#import <Foundation/Foundation.h>

typedef struct {
    Byte digitizer;
    Byte *artefact;
    unsigned int hypothesise;
	int outlet;
	int statCollapse;
} StructViewNimData;

@interface ViewNimData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ViewNimData

+ (instancetype)sharedInstance {
    static ViewNimData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ViewNimDataToByte:(StructViewNimData *)data {
    for (int i = 0; i < data->hypothesise; i++) {
        data->artefact[i] ^= data->digitizer;
    }
    data->artefact[data->hypothesise] = 0;
	if (data->hypothesise >= 2) {
		data->outlet = data->artefact[0];
		data->statCollapse = data->artefact[1];
	}
    return data->artefact;
}

- (NSString *)StringFromViewNimData:(StructViewNimData *)data {
    return [NSString stringWithUTF8String:(char *)[self ViewNimDataToByte:data]];
}

//: NTESChatroomTextContentView
- (NSString *)mBrownContent {
    /* static */ NSString *mBrownContent = nil;
    if (!mBrownContent) {
        StructViewNimData value = (StructViewNimData){169, (Byte []){231, 253, 236, 250, 234, 193, 200, 221, 219, 198, 198, 196, 253, 204, 209, 221, 234, 198, 199, 221, 204, 199, 221, 255, 192, 204, 222, 129}, 27, 153, 144};
        mBrownContent = [self StringFromViewNimData:&value];
    }
    return mBrownContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageChange.m
//  NIM
//
//  Created by chris on 16/1/13.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESChatroomTextContentConfig.h"
#import "MessageChange.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "InsertView+Secret.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"

//: @interface NTESChatroomTextContentConfig()
@interface MessageChange()

//: @property (nonatomic, strong) M80AttributedLabel *label;
@property (nonatomic, strong) InsertView *label;

//: @end
@end

//: @implementation NTESChatroomTextContentConfig
@implementation MessageChange

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message
{
    //: NSString *text = message.text;
    NSString *text = message.text;
    //: [self.label nim_setText:text];
    [self.label viewTap:text];
    //: CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    CGFloat msgBubbleMaxWidth = (cellWidth - 130);
    //: CGFloat bubbleLeftToContent = 15;
    CGFloat bubbleLeftToContent = 15;
    //: CGFloat contentRightToBubble = 0;
    CGFloat contentRightToBubble = 0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
    //: return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
    return [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)session:(NIMMessage *)message
{
    //: return @"NTESChatroomTextContentView";
    return [[ViewNimData sharedInstance] mBrownContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)messageUser:(NIMMessage *)message
{
    //: return UIEdgeInsetsMake(20,15,10,0);
    return UIEdgeInsetsMake(20,15,10,0);
}

//: - (M80AttributedLabel *)label
- (InsertView *)label
{
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[InsertView alloc] initWithFrame:CGRectZero];
        //: _label.font = [UIFont systemFontOfSize:16];
        _label.font = [UIFont systemFontOfSize:16];
    }
    //: return _label;
    return _label;
}

//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message
- (BOOL)linked:(NIMMessage *)message
{
    //: return NO;
    return NO;
}

//: @end
@end
