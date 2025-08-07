
#import <Foundation/Foundation.h>

typedef struct {
    Byte hideThread;
    Byte *selfConfidence;
    unsigned int troopResource;
	int schoolChip;
	int quickEmergency;
} StructCakeFileData;

@interface CakeFileData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CakeFileData

+ (instancetype)sharedInstance {
    static CakeFileData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CakeFileDataToByte:(StructCakeFileData *)data {
    for (int i = 0; i < data->troopResource; i++) {
        data->selfConfidence[i] ^= data->hideThread;
    }
    data->selfConfidence[data->troopResource] = 0;
	if (data->troopResource >= 2) {
		data->schoolChip = data->selfConfidence[0];
		data->quickEmergency = data->selfConfidence[1];
	}
    return data->selfConfidence;
}

- (NSString *)StringFromCakeFileData:(StructCakeFileData *)data {
    return [NSString stringWithUTF8String:(char *)[self CakeFileDataToByte:data]];
}

//: file
- (NSString *)appValueData {
    /* static */ NSString *appValueData = nil;
    if (!appValueData) {
        StructCakeFileData value = (StructCakeFileData){142, (Byte []){232, 231, 226, 235, 83}, 4, 171, 85};
        appValueData = [self StringFromCakeFileData:&value];
    }
    return appValueData;
}

//: unicode
- (NSString *)k_conditionData {
    /* static */ NSString *k_conditionData = nil;
    if (!k_conditionData) {
        StructCakeFileData value = (StructCakeFileData){177, (Byte []){196, 223, 216, 210, 222, 213, 212, 225}, 7, 36, 27};
        k_conditionData = [self StringFromCakeFileData:&value];
    }
    return k_conditionData;
}

//: tag
- (NSString *)show_cliffValue {
    /* static */ NSString *show_cliffValue = nil;
    if (!show_cliffValue) {
        StructCakeFileData value = (StructCakeFileData){80, (Byte []){36, 49, 55, 39}, 3, 60, 114};
        show_cliffValue = [self StringFromCakeFileData:&value];
    }
    return show_cliffValue;
}

//: pressed
- (NSString *)dream_adultUniteValue {
    /* static */ NSString *dream_adultUniteValue = nil;
    if (!dream_adultUniteValue) {
        StructCakeFileData value = (StructCakeFileData){32, (Byte []){80, 82, 69, 83, 83, 69, 68, 169}, 7, 10, 141};
        dream_adultUniteValue = [self StringFromCakeFileData:&value];
    }
    return dream_adultUniteValue;
}

//: data
- (NSString *)userTroopName {
    /* static */ NSString *userTroopName = nil;
    if (!userTroopName) {
        StructCakeFileData value = (StructCakeFileData){27, (Byte []){127, 122, 111, 122, 177}, 4, 198, 41};
        userTroopName = [self StringFromCakeFileData:&value];
    }
    return userTroopName;
}

//: gif
- (NSString *)dream_lothPressName {
    /* static */ NSString *dream_lothPressName = nil;
    if (!dream_lothPressName) {
        StructCakeFileData value = (StructCakeFileData){92, (Byte []){59, 53, 58, 165}, 3, 183, 54};
        dream_lothPressName = [self StringFromCakeFileData:&value];
    }
    return dream_lothPressName;
}

//: normal
- (NSString *)mIntervalmitData {
    /* static */ NSString *mIntervalmitData = nil;
    if (!mIntervalmitData) {
        StructCakeFileData value = (StructCakeFileData){40, (Byte []){70, 71, 90, 69, 73, 68, 57}, 6, 78, 195};
        mIntervalmitData = [self StringFromCakeFileData:&value];
    }
    return mIntervalmitData;
}

//: info
- (NSString *)kOccupyName {
    /* static */ NSString *kOccupyName = nil;
    if (!kOccupyName) {
        StructCakeFileData value = (StructCakeFileData){215, (Byte []){190, 185, 177, 184, 105}, 4, 137, 11};
        kOccupyName = [self StringFromCakeFileData:&value];
    }
    return kOccupyName;
}

//: title
- (NSString *)noti_pressValue {
    /* static */ NSString *noti_pressValue = nil;
    if (!noti_pressValue) {
        StructCakeFileData value = (StructCakeFileData){197, (Byte []){177, 172, 177, 169, 160, 242}, 5, 206, 137};
        noti_pressValue = [self StringFromCakeFileData:&value];
    }
    return noti_pressValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESEmoticonManager.h
//  NIM
//
//  Created by amao on 7/2/14.
//  Copyright (c) 2014 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonManager.h"
#import "RedManager.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+MessageContent.h"

//: @implementation NIMInputEmoticon
@implementation FrontwardsCount

//: - (NIMEmoticonType)type {
- (NIMEmoticonType)type {
    //: if (_unicode.length) {
    if (_unicode.length) {
        //: return NIMEmoticonTypeUnicode;
        return NIMEmoticonTypeUnicode;
    }
    //: else if (_gif.length) {
    else if (_gif.length) {
        //: return NIMEmoticonTypeGif;
        return NIMEmoticonTypeGif;
    }
    //: else {
    else {
        //: return NIMEmoticonTypeFile;
        return NIMEmoticonTypeFile;
    }
}

//: @end
@end

//: @implementation NIMInputEmoticonCatalog
@implementation WithTextSearch
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation WorstedYarnLayout

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initShouldLayout:(CGFloat)width
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 3;
        _rows = 3;
        //: _columes = ((width - 15 - 15) / 46.0);
        _columes = ((width - 15 - 15) / 46.0);
        //: _itemCountInPage = _rows * _columes -1;
        _itemCountInPage = _rows * _columes -1;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 46.0;
        _cellHeight = 46.0;
        //: _imageWidth = 46.0;
        _imageWidth = 46.0;
        //: _imageHeight = 46.0;
        _imageHeight = 46.0;
        //: _emoji = YES;
        _emoji = YES;
    }
    //: return self;
    return self;
}

//: - (id)initCharletLayout:(CGFloat)width{
- (id)initAt:(CGFloat)width{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 2;
        _rows = 2;
        //: _columes = ((width - 15 - 15) / 70.f);
        _columes = ((width - 15 - 15) / 70.f);
        //: _itemCountInPage = _rows * _columes;
        _itemCountInPage = _rows * _columes;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 76.0;
        _cellHeight = 76.0;
        //: _imageWidth = 70.f;
        _imageWidth = 70.f;
        //: _imageHeight = 70.f;
        _imageHeight = 70.f;
        //: _emoji = NO;
        _emoji = NO;
    }
    //: return self;
    return self;
}

//: @end
@end

//: @interface FFFInputEmoticonManager ()
@interface RedManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation FFFInputEmoticonManager
@implementation RedManager

//: + (instancetype)sharedManager
+ (instancetype)session
{
    //: static FFFInputEmoticonManager *instance = nil;
    static RedManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFInputEmoticonManager alloc]init];
        instance = [[RedManager alloc]init];
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
        //: [self parsePlist];
        [self name];
        //: [self preloadEmoticonResource];
        [self at];
    }
    //: return self;
    return self;
}

//: - (void)start {};
- (void)clean {};

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (WithTextSearch *)deadLanguageExtra:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (WithTextSearch *catalog in _catalogs)
    {
        //: if ([catalog.catalogID isEqualToString:catalogID])
        if ([catalog.catalogID isEqualToString:catalogID])
        {
            //: return catalog;
            return catalog;
        }
    }
    //: return nil;
    return nil;
}


//: - (NIMInputEmoticon *)emoticonByTag:(NSString *)tag
- (FrontwardsCount *)success:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    FrontwardsCount *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (WithTextSearch *catalog in _catalogs)
        {
            //: emoticon = [catalog.tag2Emoticons objectForKey:tag];
            emoticon = [catalog.tag2Emoticons objectForKey:tag];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}


//: - (NIMInputEmoticon *)emoticonByID:(NSString *)emoticonID
- (FrontwardsCount *)record:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    FrontwardsCount *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (WithTextSearch *catalog in _catalogs)
        {
            //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (NIMInputEmoticon *)emoticonByCatalogID:(NSString *)catalogID
- (FrontwardsCount *)path:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           input_strong:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    FrontwardsCount *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (WithTextSearch *catalog in _catalogs)
        {
            //: if ([catalog.catalogID isEqualToString:catalogID])
            if ([catalog.catalogID isEqualToString:catalogID])
            {
                //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (void)parsePlist
- (void)name
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle atBubble];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[[CakeFileData sharedInstance] kOccupyName]];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[[CakeFileData sharedInstance] userTroopName]];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            WithTextSearch *catalog = [self with:info
                                                     //: emoticons:emoticons];
                                                     perimeter:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle innerCity];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[[CakeFileData sharedInstance] kOccupyName]];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[[CakeFileData sharedInstance] userTroopName]];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            WithTextSearch *catalog = [self with:info
                                                     //: emoticons:emoticons];
                                                     perimeter:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (WithTextSearch *)with:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             perimeter:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    WithTextSearch *catalog = [[WithTextSearch alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[[[CakeFileData sharedInstance] noti_pressValue]];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[[[CakeFileData sharedInstance] mIntervalmitData]];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[[[CakeFileData sharedInstance] dream_adultUniteValue]];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        FrontwardsCount *emoticon = [[FrontwardsCount alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[[[CakeFileData sharedInstance] show_cliffValue]];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[[[CakeFileData sharedInstance] k_conditionData]];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[[[CakeFileData sharedInstance] appValueData]];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[[[CakeFileData sharedInstance] dream_lothPressName]];

        //: if (emoticon.emoticonID) {
        if (emoticon.emoticonID) {
            //: [emoticons addObject:emoticon];
            [emoticons addObject:emoticon];
            //: id2Emoticons[emoticon.emoticonID] = emoticon;
            id2Emoticons[emoticon.emoticonID] = emoticon;
        }
        //: if (emoticon.tag) {
        if (emoticon.tag) {
            //: tag2Emoticons[emoticon.tag] = emoticon;
            tag2Emoticons[emoticon.tag] = emoticon;
        }
    }

    //: catalog.emoticons = emoticons;
    catalog.emoticons = emoticons;
    //: catalog.id2Emoticons = id2Emoticons;
    catalog.id2Emoticons = id2Emoticons;
    //: catalog.tag2Emoticons = tag2Emoticons;
    catalog.tag2Emoticons = tag2Emoticons;
    //: return catalog;
    return catalog;
}

//: - (void)preloadEmoticonResource {
- (void)at {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (WithTextSearch *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(FrontwardsCount *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage view:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
}

//: @end
@end