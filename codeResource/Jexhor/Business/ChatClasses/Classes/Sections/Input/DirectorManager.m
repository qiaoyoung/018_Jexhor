
#import <Foundation/Foundation.h>

@interface PowerData : NSObject

+ (instancetype)sharedInstance;

//: info
@property (nonatomic, copy) NSString *showVoiceStr;

//: normal
@property (nonatomic, copy) NSString *noti_buttonDifficultPath;

//: file
@property (nonatomic, copy) NSString *k_nanPressedName;

//: data
@property (nonatomic, copy) NSString *m_bornMsg;

//: unicode
@property (nonatomic, copy) NSString *mRumMsg;

//: gif
@property (nonatomic, copy) NSString *k_territoryValue;

//: pressed
@property (nonatomic, copy) NSString *dreamLaverId;

//: title
@property (nonatomic, copy) NSString *kInnovationMsg;

//: tag
@property (nonatomic, copy) NSString *show_inputStr;

@end

@implementation PowerData

+ (instancetype)sharedInstance {
    static PowerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PowerDataToCache:(Byte *)data {
    int communicate = data[0];
    Byte winnerModest = data[1];
    int legalPowerContent = data[2];
    for (int i = legalPowerContent; i < legalPowerContent + communicate; i++) {
        int value = data[i] - winnerModest;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[legalPowerContent + communicate] = 0;
    return data + legalPowerContent;
}

- (NSString *)StringFromPowerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PowerDataToCache:data]];
}

//: file
- (NSString *)k_nanPressedName {
    if (!_k_nanPressedName) {
        Byte value[] = {4, 78, 5, 191, 214, 180, 183, 186, 179, 236};
        _k_nanPressedName = [self StringFromPowerData:value];
    }
    return _k_nanPressedName;
}

//: normal
- (NSString *)noti_buttonDifficultPath {
    if (!_noti_buttonDifficultPath) {
        Byte value[] = {6, 35, 9, 111, 108, 7, 103, 206, 209, 145, 146, 149, 144, 132, 143, 160};
        _noti_buttonDifficultPath = [self StringFromPowerData:value];
    }
    return _noti_buttonDifficultPath;
}

//: tag
- (NSString *)show_inputStr {
    if (!_show_inputStr) {
        Byte value[] = {3, 51, 7, 45, 189, 99, 102, 167, 148, 154, 238};
        _show_inputStr = [self StringFromPowerData:value];
    }
    return _show_inputStr;
}

//: info
- (NSString *)showVoiceStr {
    if (!_showVoiceStr) {
        Byte value[] = {4, 27, 10, 223, 197, 24, 115, 141, 51, 27, 132, 137, 129, 138, 136};
        _showVoiceStr = [self StringFromPowerData:value];
    }
    return _showVoiceStr;
}

//: title
- (NSString *)kInnovationMsg {
    if (!_kInnovationMsg) {
        Byte value[] = {5, 35, 8, 240, 170, 128, 174, 22, 151, 140, 151, 143, 136, 242};
        _kInnovationMsg = [self StringFromPowerData:value];
    }
    return _kInnovationMsg;
}

//: pressed
- (NSString *)dreamLaverId {
    if (!_dreamLaverId) {
        Byte value[] = {7, 31, 7, 240, 126, 5, 25, 143, 145, 132, 146, 146, 132, 131, 56};
        _dreamLaverId = [self StringFromPowerData:value];
    }
    return _dreamLaverId;
}

//: data
- (NSString *)m_bornMsg {
    if (!_m_bornMsg) {
        Byte value[] = {4, 21, 6, 31, 107, 101, 121, 118, 137, 118, 35};
        _m_bornMsg = [self StringFromPowerData:value];
    }
    return _m_bornMsg;
}

//: unicode
- (NSString *)mRumMsg {
    if (!_mRumMsg) {
        Byte value[] = {7, 17, 5, 244, 201, 134, 127, 122, 116, 128, 117, 118, 29};
        _mRumMsg = [self StringFromPowerData:value];
    }
    return _mRumMsg;
}

//: gif
- (NSString *)k_territoryValue {
    if (!_k_territoryValue) {
        Byte value[] = {3, 65, 11, 243, 179, 147, 219, 190, 122, 141, 22, 168, 170, 167, 103};
        _k_territoryValue = [self StringFromPowerData:value];
    }
    return _k_territoryValue;
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
#import "DirectorManager.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Secret.h"

//: @implementation NIMInputEmoticon
@implementation TextEmoticon

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
@implementation SizeCatalog
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation ContainerColorRead

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initColor:(CGFloat)width
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
- (id)initQuick:(CGFloat)width{
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
@interface DirectorManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation FFFInputEmoticonManager
@implementation DirectorManager

//: + (instancetype)sharedManager
+ (instancetype)statusFor
{
    //: static FFFInputEmoticonManager *instance = nil;
    static DirectorManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[FFFInputEmoticonManager alloc]init];
        instance = [[DirectorManager alloc]init];
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
        [self dataPlist];
        //: [self preloadEmoticonResource];
        [self light];
    }
    //: return self;
    return self;
}

//: - (void)start {};
- (void)holderRed {};

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (SizeCatalog *)emoticonNameData:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (SizeCatalog *catalog in _catalogs)
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
- (TextEmoticon *)status:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    TextEmoticon *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (SizeCatalog *catalog in _catalogs)
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
- (TextEmoticon *)past:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    TextEmoticon *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (SizeCatalog *catalog in _catalogs)
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
- (TextEmoticon *)record:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           nameModel:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    TextEmoticon *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (SizeCatalog *catalog in _catalogs)
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
- (void)dataPlist
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle path];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[PowerData sharedInstance].showVoiceStr];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[PowerData sharedInstance].m_bornMsg];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            SizeCatalog *catalog = [self user:info
                                                     //: emoticons:emoticons];
                                                     recentPin:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle format];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[PowerData sharedInstance].showVoiceStr];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[PowerData sharedInstance].m_bornMsg];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            SizeCatalog *catalog = [self user:info
                                                     //: emoticons:emoticons];
                                                     recentPin:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (SizeCatalog *)user:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             recentPin:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    SizeCatalog *catalog = [[SizeCatalog alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[[PowerData sharedInstance].kInnovationMsg];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[[PowerData sharedInstance].noti_buttonDifficultPath];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[[PowerData sharedInstance].dreamLaverId];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        TextEmoticon *emoticon = [[TextEmoticon alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[[PowerData sharedInstance].show_inputStr];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[[PowerData sharedInstance].mRumMsg];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[[PowerData sharedInstance].k_nanPressedName];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[[PowerData sharedInstance].k_territoryValue];

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
- (void)light {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (SizeCatalog *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(TextEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage info:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
}

//: @end
@end