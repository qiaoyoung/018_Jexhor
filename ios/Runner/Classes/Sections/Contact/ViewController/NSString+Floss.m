
#import <Foundation/Foundation.h>

typedef struct {
    Byte makeTable;
    Byte *atTitle;
    unsigned int can;
	int smart;
	int press;
} StructMessageCanData;

@interface MessageCanData : NSObject

@end

@implementation MessageCanData

+ (Byte *)MessageCanDataToByte:(StructMessageCanData *)data {
    for (int i = 0; i < data->can; i++) {
        data->atTitle[i] ^= data->makeTable;
    }
    data->atTitle[data->can] = 0;
	if (data->can >= 2) {
		data->smart = data->atTitle[0];
		data->press = data->atTitle[1];
	}
    return data->atTitle;
}

+ (NSString *)StringFromMessageCanData:(StructMessageCanData *)data {
    return [NSString stringWithUTF8String:(char *)[self MessageCanDataToByte:data]];
}

//: chang
+ (NSString *)app_makeText {
    /* static */ NSString *app_makeText = nil;
    if (!app_makeText) {
        StructMessageCanData value = (StructMessageCanData){159, (Byte []){252, 247, 254, 241, 248, 33}, 5, 195, 251};
        app_makeText = [self StringFromMessageCanData:&value];
    }
    return app_makeText;
}

//: shen
+ (NSString *)userAccountValue {
    /* static */ NSString *userAccountValue = nil;
    if (!userAccountValue) {
        StructMessageCanData value = (StructMessageCanData){178, (Byte []){193, 218, 215, 220, 76}, 4, 130, 164};
        userAccountValue = [self StringFromMessageCanData:&value];
    }
    return userAccountValue;
}

//: xia
+ (NSString *)showTagShouldName {
    /* static */ NSString *showTagShouldName = nil;
    if (!showTagShouldName) {
        StructMessageCanData value = (StructMessageCanData){205, (Byte []){181, 164, 172, 25}, 3, 243, 198};
        showTagShouldName = [self StringFromMessageCanData:&value];
    }
    return showTagShouldName;
}

//: chong
+ (NSString *)user_limitValue {
    /* static */ NSString *user_limitValue = nil;
    if (!user_limitValue) {
        StructMessageCanData value = (StructMessageCanData){9, (Byte []){106, 97, 102, 103, 110, 222}, 5, 194, 5};
        user_limitValue = [self StringFromMessageCanData:&value];
    }
    return user_limitValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Floss.m
//  Demo
//
//  Created by LeeJay on 2018/7/5.
//  Copyright © 2018年 LeeJay. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+LJExtension.h"
#import "NSString+Floss.h"

//: @implementation NSString (LJExtension)
@implementation NSString (Floss)

//: + (NSString *)lj_filterSpecialString:(NSString *)string
+ (NSString *)underRange:(NSString *)string
{
    //: if (string == nil)
    if (string == nil)
    {
        //: return @"";
        return @"";
    }

    //: string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"-" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"(" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@")" withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    //: return string;
    return string;
}

//: + (NSString *)lj_pinyinForString:(NSString *)string
+ (NSString *)clean:(NSString *)string
{
    //: if (string.length == 0)
    if (string.length == 0)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableString *mutableString = [NSMutableString stringWithString:string];
    NSMutableString *mutableString = [NSMutableString stringWithString:string];
    //: CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    CFStringTransform((CFMutableStringRef)mutableString, NULL, kCFStringTransformToLatin, false);
    //: NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];
    NSMutableString *pinyinString = [[mutableString stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]] mutableCopy];

    //: NSString *str = [string substringToIndex:1];
    NSString *str = [string substringToIndex:1];

    //: if ([str isEqualToString:@"长"])
    if ([str isEqualToString:@"长"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chang"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[MessageCanData app_makeText]];
    }
    //: if ([str isEqualToString:@"沈"])
    if ([str isEqualToString:@"沈"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:@"shen"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 4) withString:[MessageCanData userAccountValue]];
    }
    //: if ([str isEqualToString:@"厦"])
    if ([str isEqualToString:@"厦"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:@"xia"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 3) withString:[MessageCanData showTagShouldName]];
    }
    //: if ([str isEqualToString:@"地"])
    if ([str isEqualToString:@"地"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 2) withString:@"di"];
    }
    //: if ([str isEqualToString:@"重"])
    if ([str isEqualToString:@"重"])
    {
        //: [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:@"chong"];
        [pinyinString replaceCharactersInRange:NSMakeRange(0, 5) withString:[MessageCanData user_limitValue]];
    }

    //: return [[pinyinString lowercaseString] copy];
    return [[pinyinString lowercaseString] copy];
}

//: @end
@end