
#import <Foundation/Foundation.h>

NSString *StringFromCompleteImageData(Byte *data);


//: tyl_spellingCache
Byte showRequirementLegallyIdent[] = {95, 17, 85, 9, 149, 152, 152, 208, 169, 201, 206, 193, 180, 200, 197, 186, 193, 193, 190, 195, 188, 152, 182, 184, 189, 186, 25};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BeforeCenter.m
//  NIM
//
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSpellingCenter.h"
#import "ViewCenter.h"
//: #import "PushPinyinConverter.h"
#import "TaskConverter.h"
//: #import "YYModel/YYModel.h"
#import "YYModel/YYModel.h"
//: #import "NSObject+YYModel.h"
#import "NSObject+YYModel.h"

//: @implementation NIMSpellingUnit
@implementation TempColor

//: @end
@end

//: @interface PushSpellingCenter ()
@interface ViewCenter ()
//: - (NIMSpellingUnit *)calcSpellingOfString: (NSString *)source;
- (TempColor *)viewInfo: (NSString *)source;
//: @end
@end


//: @implementation PushSpellingCenter
@implementation ViewCenter
//: + (PushSpellingCenter *)sharedCenter
+ (ViewCenter *)centerStage
{
    //: static PushSpellingCenter *instance = nil;
    static ViewCenter *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[PushSpellingCenter alloc]init];
        instance = [[ViewCenter alloc]init];
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
        NSDictionary *spellingCache = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromCompleteImageData(showRequirementLegallyIdent)];
        //: if (spellingCache) {
        if (spellingCache) {
            //: _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[NIMSpellingUnit class] json:spellingCache]];
            _spellingCache = [[NSMutableDictionary alloc]initWithDictionary:[NSDictionary yy_modelDictionaryWithClass:[TempColor class] json:spellingCache]];
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
- (void)memberInsert
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
            [[NSUserDefaults standardUserDefaults] setObject:[_spellingCache yy_modelToJSONString] forKey:StringFromCompleteImageData(showRequirementLegallyIdent)];
        }

    }
}


//: - (NIMSpellingUnit *)spellingForString:(NSString *)source
- (TempColor *)total:(NSString *)source
{
    //: if ([source length] == 0)
    if ([source length] == 0)
    {
        //: return nil;
        return nil;
    }
    //: NIMSpellingUnit *spellingUnit = nil;
    TempColor *spellingUnit = nil;
    //: @synchronized(self)
    @synchronized(self)
    {
        //: NIMSpellingUnit *unit = [_spellingCache objectForKey:source];
        TempColor *unit = [_spellingCache objectForKey:source];
        //: if (!unit)
        if (!unit)
        {
            //: unit = [self calcSpellingOfString:source];
            unit = [self viewInfo:source];
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
- (NSString *)premierCurrentDeadLetter:(NSString *)input
{
    //: NIMSpellingUnit *unit = [self spellingForString:input];
    TempColor *unit = [self total:input];
    //: NSString *spelling = unit.fullSpelling;
    NSString *spelling = unit.fullSpelling;
    //: return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
    return [spelling length] ? [spelling substringWithRange:NSMakeRange(0, 1)] : nil;
}


//: - (NIMSpellingUnit *)calcSpellingOfString:(NSString *)source
- (TempColor *)viewInfo:(NSString *)source
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
        //: NSString *pinyin = [[PushPinyinConverter sharedInstance] toPinyin:word];
        NSString *pinyin = [[TaskConverter can] exist:word];

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
    TempColor *unit = [[TempColor alloc]init];
    //: unit.fullSpelling = [fullSpelling lowercaseString];
    unit.fullSpelling = [fullSpelling lowercaseString];
    //: unit.shortSpelling= [shortSpelling lowercaseString];
    unit.shortSpelling= [shortSpelling lowercaseString];
    //: return unit;
    return unit;
}




//: @end
@end

Byte * CompleteImageDataToCache(Byte *data) {
    int theaterSeizeProfession = data[0];
    int story = data[1];
    Byte showVoting = data[2];
    int wingRage = data[3];
    if (!theaterSeizeProfession) return data + wingRage;
    for (int i = wingRage; i < wingRage + story; i++) {
        int value = data[i] - showVoting;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[wingRage + story] = 0;
    return data + wingRage;
}

NSString *StringFromCompleteImageData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CompleteImageDataToCache(data)];
}
