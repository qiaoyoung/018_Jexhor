// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyControl.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class FrontwardsCount;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol ImageNeed <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)atId:(FrontwardsCount*)emoticon on:(NSString*)catalogID;

//: @end
@end



//: @interface WorkInputEmoticonButton : UIButton
@interface KeyControl : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) FrontwardsCount *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<ImageNeed> delegate;

//: + (WorkInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (KeyControl*)inheritance:(FrontwardsCount*)data lineItem:(NSString*)catalogID remote:( id<ImageNeed>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)states:(id)sender;

//: @end
@end
