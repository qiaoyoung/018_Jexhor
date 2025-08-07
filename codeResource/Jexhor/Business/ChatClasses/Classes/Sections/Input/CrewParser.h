// __DEBUG__
// __CLOSE_PRINT__
//
//  CrewParser.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef enum : NSUInteger
typedef enum : NSUInteger
{
    //: NIMInputTokenTypeText,
    NIMInputTokenTypeText,
    //: NIMInputTokenTypeEmoticon,
    NIMInputTokenTypeEmoticon,
    //: NIMInputTokenTypeLink,
    NIMInputTokenTypeLink,

//: } NIMInputTokenType;
} NIMInputTokenType;

//: @interface NIMInputTextToken : NSObject
@interface ModelBubble : NSObject
//: @property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *text;
//: @property (nonatomic,assign) NIMInputTokenType type;
@property (nonatomic,assign) NIMInputTokenType type;
//: @end
@end


//: @interface PushInputEmoticonParser : NSObject
@interface CrewParser : NSObject
//: + (instancetype)currentParser;
+ (instancetype)will;
//: - (NSArray *)tokens:(NSString *)text;
- (NSArray *)event:(NSString *)text;
//: @end
@end
