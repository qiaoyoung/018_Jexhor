
#import <Foundation/Foundation.h>
typedef struct {
    Byte naturalProcess;
    Byte *wantPursuit;
    unsigned int acheBalance;
    Byte labelLimit;
	int quantityegrity;
	int shouldEarl;
} IneligibleData;

NSString *StringFromIneligibleData(IneligibleData *data);


//: tyl_spellingCache
IneligibleData userPapTitle = (IneligibleData){119, (Byte []){3, 14, 27, 40, 4, 7, 18, 27, 27, 30, 25, 16, 52, 22, 20, 31, 18, 122}, 17, 194, 94, 47};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AncientHistoryCircle.m
//  NIM
//
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSpellingCenter.h"
#import "ContentRed.h"
//: #import "FFFPinyinConverter.h"
#import "KeyShow.h"
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"

//: @implementation NIMSpellingUnit
@implementation ReleasingFactorMessage

//: @end
@end

//: @interface FFFSpellingCenter ()
@interface ContentRed ()
//: - (NIMSpellingUnit *)calcSpellingOfString: (NSString *)source;
- (ReleasingFactorMessage *)key: (NSString *)source;
//: @end
@end


//: @implementation FFFSpellingCenter
@implementation ContentRed
//: + (FFFSpellingCenter *)sharedCenter
+ (ContentRed *)bar
{
    //: static FFFSpellingCenter *instance = nil;
    static ContentRed *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFSpellingCenter alloc]init];
        instance = [[ContentRed alloc]init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (id)init
- (id)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:@"tyl_spellingCache"];
        NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromIneligibleData(&userPapTitle)];
        //: if (spellingCache) {
        if (spellingCache) {
            //: _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[NIMSpellingUnit class] json:spellingCache]];
            _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[ReleasingFactorMessage class] json:spellingCache]];
        }

        //: if (!_spellingCache)
        if (!_spellingCache)
        {
            //: _spellingCache = [[NSMutableDictionary alloc]init];
            _spellingCache = [[NSMutableDictionary alloc]init];
        }
    }
    //: return self;
    return self;
}



//: - (void)saveSpellingCache
- (void)endowCache
{
    //: static const NSInteger kMaxEntriesCount = 5000;
    static const NSInteger kMaxEntriesCount = 5000;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NSInteger count = [_spellingCache count];
        NSInteger count = [_spellingCache count];
        //: if (count >= kMaxEntriesCount)
        if (count >= kMaxEntriesCount)
        {
            //: [_spellingCache removeAllObjects];
            [_spellingCache removeAllObjects];
        }
        //: if (_spellingCache)
        if (_spellingCache)
        {
            //: [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:@"tyl_spellingCache"];
            [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:StringFromIneligibleData(&userPapTitle)];
        }

    }
}


//: - (NIMSpellingUnit *)spellingForString:(NSString *)source
- (ReleasingFactorMessage *)baleOut:(NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NIMSpellingUnit *spellingUnit = nil;
    ReleasingFactorMessage *spellingUnit = nil;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NIMSpellingUnit *unit = [_spellingCache objectForKey:source];
        ReleasingFactorMessage *unit = [_spellingCache objectForKey:source];
        //: if (!unit)
        if (!unit)
        {
            //: unit = [self calcSpellingOfString:source];
            unit = [self key:source];
            //: if ([unit.fullSpelling length] && [unit.shortSpelling length])
            if ([unit.fullSpelling length] && [unit.shortSpelling length])
            {
                //: [_spellingCache setObject:unit forKey:source];
                [_spellingCache setObject:unit forKey:source];
            }
        }
        //: spellingUnit = unit;
        spellingUnit = unit;
    }
    //: return spellingUnit;
    return spellingUnit;
}

//: - (NSString *)firstLetter:(NSString *)input
- (NSString *)lightGreen:(NSString *)input
{
    //: NIMSpellingUnit *unit = [self spellingForString:input];
    ReleasingFactorMessage *unit = [self baleOut:input];
    //: NSString *spelling = unit.fullSpelling;
    NSString *spelling = unit.fullSpelling;
    //: return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
    return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
}


//: - (NIMSpellingUnit *)calcSpellingOfString:(NSString *)source
- (ReleasingFactorMessage *)key:(NSString *)source
{
    //: NSMutableString *fullSpelling = [[NSMutableString alloc]init];
    NSMutableString *fullSpelling = [[NSMutableString alloc]init];
    //: NSMutableString *shortSpelling= [[NSMutableString alloc]init];
    NSMutableString *shortSpelling= [[NSMutableString alloc]init];
    //: for (NSInteger i = 0; i < [source length]; i++)
    for (NSInteger i = 0; i < [source length]; i++)
    {
        //: NSString *word = [source substringWithRange:NSMakeRange(i, 1)];
        NSString *word = [source substringWithRange:NSMakeRange(i, 1)];
        //: NSString *pinyin = [[FFFPinyinConverter sharedInstance] toPinyin:word];
        NSString *pinyin = [[KeyShow app] file:word];

        //: if ([pinyin length])
        if ([pinyin length])
        {
            //: [fullSpelling appendString:pinyin];
            [fullSpelling appendString:pinyin];
            //: [shortSpelling appendString:[pinyin substringToIndex:1]];
            [shortSpelling appendString:[pinyin substringToIndex:1]];
        }
    }

    //: NIMSpellingUnit *unit = [[NIMSpellingUnit alloc]init];
    ReleasingFactorMessage *unit = [[ReleasingFactorMessage alloc]init];
    //: unit.fullSpelling = [fullSpelling lowercaseString];
    unit.fullSpelling = [fullSpelling lowercaseString];
    //: unit.shortSpelling= [shortSpelling lowercaseString];
    unit.shortSpelling= [shortSpelling lowercaseString];
    //: return unit;
    return unit;
}




//: @end
@end

Byte *IneligibleDataToByte(IneligibleData *data) {
    if (data->labelLimit < 131) return data->wantPursuit;
    for (int i = 0; i < data->acheBalance; i++) {
        data->wantPursuit[i] ^= data->naturalProcess;
    }
    data->wantPursuit[data->acheBalance] = 0;
    data->labelLimit = 92;
	if (data->acheBalance >= 2) {
		data->quantityegrity = data->wantPursuit[0];
		data->shouldEarl = data->wantPursuit[1];
	}
    return data->wantPursuit;
}

NSString *StringFromIneligibleData(IneligibleData *data) {
    return [NSString stringWithUTF8String:(char *)IneligibleDataToByte(data)];
}
