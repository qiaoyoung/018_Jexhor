// __DEBUG__
// __CLOSE_PRINT__
//
//  SignalingWithShirtButton.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class TextEmoticon;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol IndexDelegate <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)on:(TextEmoticon*)emoticon value:(NSString*)catalogID;

//: @end
@end



//: @interface FFFInputEmoticonButton : UIButton
@interface SignalingWithShirtButton : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) TextEmoticon *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<IndexDelegate> delegate;

//: + (FFFInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (SignalingWithShirtButton*)accountImageLength:(TextEmoticon*)data showDelegate:(NSString*)catalogID title:( id<IndexDelegate>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)custommed:(id)sender;

//: @end
@end