
#import <Foundation/Foundation.h>

@interface SouData : NSObject

+ (instancetype)sharedInstance;

//: name
@property (nonatomic, copy) NSString *dream_intactDirectPath;

//: string
@property (nonatomic, copy) NSString *k_vileMsg;

//: en_US
@property (nonatomic, copy) NSString *app_practitionerName;

@end

@implementation SouData

+ (instancetype)sharedInstance {
    static SouData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SouDataToCache:(Byte *)data {
    int blackLaver = data[0];
    int marvellous = data[1];
    for (int i = 0; i < blackLaver / 2; i++) {
        int begin = marvellous + i;
        int end = marvellous + blackLaver - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[marvellous + blackLaver] = 0;
    return data + marvellous;
}

- (NSString *)StringFromSouData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SouDataToCache:data]];
}  

//: en_US
- (NSString *)app_practitionerName {
    if (!_app_practitionerName) {
        Byte value[] = {5, 8, 185, 166, 2, 33, 58, 187, 83, 85, 95, 110, 101, 184};
        _app_practitionerName = [self StringFromSouData:value];
    }
    return _app_practitionerName;
}

//: string
- (NSString *)k_vileMsg {
    if (!_k_vileMsg) {
        Byte value[] = {6, 8, 252, 218, 80, 130, 51, 204, 103, 110, 105, 114, 116, 115, 210};
        _k_vileMsg = [self StringFromSouData:value];
    }
    return _k_vileMsg;
}

//: name
- (NSString *)dream_intactDirectPath {
    if (!_dream_intactDirectPath) {
        Byte value[] = {4, 6, 34, 38, 156, 3, 101, 109, 97, 110, 198};
        _dream_intactDirectPath = [self StringFromSouData:value];
    }
    return _dream_intactDirectPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagingDirectorClick.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import "NTESLanguageManager.h"
#import "ManagingDirectorClick.h"

// __M_A_C_R_O__

//: @interface NTESLanguageManager ()<NSXMLParserDelegate>
@interface ManagingDirectorClick ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation NTESLanguageManager
@implementation ManagingDirectorClick

//: static NTESLanguageManager *shareInstance = nil;
static ManagingDirectorClick *showTaskKey = nil;

//: + (NTESLanguageManager *)shareInstance{
+ (ManagingDirectorClick *)tingYear{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (shareInstance == nil) {
            //: shareInstance = [[NTESLanguageManager alloc] init];
            showTaskKey = [[ManagingDirectorClick alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return showTaskKey;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)end:(NSString *)key{
    //: NSMutableDictionary *dict = [NTESLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [ManagingDirectorClick shareInstance].langDict;
    //: return [dict stringValueForKey:key];
    return [dict stringValueForKey:key];
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setCan:(NSString *)langType{
    //: NSString *resourceType = @"strings";
    NSString *resourceType = @"strings";
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"strings_en";
        resourceType = @"strings_en";
    }
    //: NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    //: NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    //: NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    //: xmlParser.delegate = self;
    xmlParser.delegate = self;
    //: [xmlParser parse];
    [xmlParser parse];
}

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)modeDocument:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)title:(NSXMLParser *)parser factorWithAllow:(NSString *)elementName sumerAttributes:(NSString *)namespaceURI canEmpty:(NSString *)qName canadianProvinceUser:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[SouData sharedInstance].k_vileMsg]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[SouData sharedInstance].dream_intactDirectPath];
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)be:(NSXMLParser *)parser establishSaveStatus:(NSString *)string {

//    NSLog(@"%@value : %@",parser, string);

    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)along:(NSXMLParser *)parser lengthView:(NSString *)elementName name:(NSString *)namespaceURI beforeShared:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)showMax:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)extraView{//th-TH  vi-VN
    //: NSString *language = [GVUserDefaults standardUserDefaults].language;
    NSString *language = [GVUserDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = @"zh_CN";
    //: if ([language isEqualToString:@"en"]) {
    if ([language isEqualToString:@"en"]) {
        //: return @"en_US";
        return [SouData sharedInstance].app_practitionerName;
    }
    //: return locale;
    return locale;
}


//: @end
@end