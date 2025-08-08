
#import <Foundation/Foundation.h>

@interface ComfortImageData : NSObject

@end

@implementation ComfortImageData

+ (Byte *)ComfortImageDataToCache:(Byte *)data {
    int firstCousinPollution = data[0];
    Byte chipVideoReason = data[1];
    int prolusion = data[2];
    for (int i = prolusion; i < prolusion + firstCousinPollution; i++) {
        int value = data[i] - chipVideoReason;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[prolusion + firstCousinPollution] = 0;
    return data + prolusion;
}

+ (NSString *)StringFromComfortImageData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ComfortImageDataToCache:data]];
}

//: \\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]
+ (NSString *)m_elementaryByValue {
    /* static */ NSString *m_elementaryByValue = nil;
    if (!m_elementaryByValue) {
        Byte value[] = {29, 6, 4, 130, 98, 97, 97, 103, 51, 128, 71, 51, 96, 54, 51, 63, 98, 123, 58, 107, 54, 54, 51, 98, 123, 63, 108, 103, 59, 99, 49, 98, 99, 235};
        m_elementaryByValue = [self StringFromComfortImageData:value];
    }
    return m_elementaryByValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMEmoticonParser.m
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkInputEmoticonParser.h"
#import "SignParser.h"
//: #import "WorkInputEmoticonManager.h"
#import "RedManager.h"

//: @implementation NIMInputTextToken
@implementation ChangeTing
//: @end
@end

//: @interface WorkInputEmoticonParser ()
@interface SignParser ()
//: @property (nonatomic,strong) NSCache *tokens;
@property (nonatomic,strong) NSCache *tokens;
//: @end
@end


//: @implementation WorkInputEmoticonParser
@implementation SignParser
//: + (instancetype)currentParser
+ (instancetype)byTo
{
    //: static WorkInputEmoticonParser *instance = nil;
    static SignParser *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[WorkInputEmoticonParser alloc] init];
        instance = [[SignParser alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _tokens = [[NSCache alloc] init];
        _tokens = [[NSCache alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSArray *)tokens:(NSString *)text
- (NSArray *)down:(NSString *)text
{
    //: NSArray *tokens = nil;
    NSArray *tokens = nil;
    //: if ([text length])
    if ([text length])
    {
        //: tokens = [_tokens objectForKey:text];
        tokens = [_tokens objectForKey:text];
        //: if (tokens == nil)
        if (tokens == nil)
        {
            //: tokens = [self parseToken:text];
            tokens = [self quick:text];
            //: [_tokens setObject:tokens
            [_tokens setObject:tokens
                        //: forKey:text];
                        forKey:text];
        }
    }
    //: return tokens;
    return tokens;
}

//: - (NSArray *)parseToken:(NSString *)text
- (NSArray *)quick:(NSString *)text
{
    //: NSMutableArray *tokens = [NSMutableArray array];
    NSMutableArray *tokens = [NSMutableArray array];
    //: static NSRegularExpression *exp;
    static NSRegularExpression *exp;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: exp = [NSRegularExpression regularExpressionWithPattern:@"\\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]"
        exp = [NSRegularExpression regularExpressionWithPattern:[ComfortImageData m_elementaryByValue]
                                                        //: options:NSRegularExpressionCaseInsensitive
                                                        options:NSRegularExpressionCaseInsensitive
                                                          //: error:nil];
                                                          error:nil];
    //: });
    });
    //: __block NSInteger index = 0;
    __block NSInteger index = 0;
    //: [exp enumerateMatchesInString:text
    [exp enumerateMatchesInString:text
                          //: options:0
                          options:0
                            //: range:NSMakeRange(0, [text length])
                            range:NSMakeRange(0, [text length])
                       //: usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                       usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
                           //: NSString *rangeText = [text substringWithRange:result.range];
                           NSString *rangeText = [text substringWithRange:result.range];
                           //: if ([[WorkInputEmoticonManager sharedManager] emoticonByTag:rangeText])
                           if ([[RedManager session] success:rangeText])
                           {
                               //: if (result.range.location > index)
                               if (result.range.location > index)
                               {
                                   //: NSString *rawText = [text substringWithRange:NSMakeRange(index, result.range.location - index)];
                                   NSString *rawText = [text substringWithRange:NSMakeRange(index, result.range.location - index)];
                                   //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
                                   ChangeTing *token = [[ChangeTing alloc] init];
                                   //: token.type = NIMInputTokenTypeText;
                                   token.type = NIMInputTokenTypeText;
                                   //: token.text = rawText;
                                   token.text = rawText;
                                   //: [tokens addObject:token];
                                   [tokens addObject:token];
                               }
                               //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
                               ChangeTing *token = [[ChangeTing alloc] init];
                               //: token.type = NIMInputTokenTypeEmoticon;
                               token.type = NIMInputTokenTypeEmoticon;
                               //: token.text = rangeText;
                               token.text = rangeText;
                               //: [tokens addObject:token];
                               [tokens addObject:token];

                               //: index = result.range.location + result.range.length;
                               index = result.range.location + result.range.length;
                           }
                       //: }];
                       }];

    //: if (index < [text length])
    if (index < [text length])
    {
        //: NSString *rawText = [text substringWithRange:NSMakeRange(index, [text length] - index)];
        NSString *rawText = [text substringWithRange:NSMakeRange(index, [text length] - index)];
        //: NIMInputTextToken *token = [[NIMInputTextToken alloc] init];
        ChangeTing *token = [[ChangeTing alloc] init];
        //: token.type = NIMInputTokenTypeText;
        token.type = NIMInputTokenTypeText;
        //: token.text = rawText;
        token.text = rawText;
        //: [tokens addObject:token];
        [tokens addObject:token];
    }
    //: return tokens;
    return tokens;
}
//: @end
@end
