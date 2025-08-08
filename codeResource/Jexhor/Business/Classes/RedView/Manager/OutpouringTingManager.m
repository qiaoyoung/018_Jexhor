
#import <Foundation/Foundation.h>

@interface ImageSessionData : NSObject

+ (instancetype)sharedInstance;

//: en_US
@property (nonatomic, copy) NSString *main_sliceWithText;

//: name
@property (nonatomic, copy) NSString *kProvideData;

//: string
@property (nonatomic, copy) NSString *m_chipName;

@end

@implementation ImageSessionData

+ (instancetype)sharedInstance {
    static ImageSessionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ImageSessionDataToCache:(Byte *)data {
    int overwhelmLength = data[0];
    Byte tai = data[1];
    int brokerBy = data[2];
    for (int i = brokerBy; i < brokerBy + overwhelmLength; i++) {
        int value = data[i] - tai;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[brokerBy + overwhelmLength] = 0;
    return data + brokerBy;
}

- (NSString *)StringFromImageSessionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ImageSessionDataToCache:data]];
}

//: en_US
- (NSString *)main_sliceWithText {
    if (!_main_sliceWithText) {
        Byte value[] = {5, 39, 12, 160, 25, 52, 44, 133, 215, 59, 211, 152, 140, 149, 134, 124, 122, 14};
        _main_sliceWithText = [self StringFromImageSessionData:value];
    }
    return _main_sliceWithText;
}

//: name
- (NSString *)kProvideData {
    if (!_kProvideData) {
        Byte value[] = {4, 22, 6, 20, 255, 128, 132, 119, 131, 123, 203};
        _kProvideData = [self StringFromImageSessionData:value];
    }
    return _kProvideData;
}

//: string
- (NSString *)m_chipName {
    if (!_m_chipName) {
        Byte value[] = {6, 96, 9, 7, 94, 191, 184, 183, 254, 211, 212, 210, 201, 206, 199, 27};
        _m_chipName = [self StringFromImageSessionData:value];
    }
    return _m_chipName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OutpouringTingManager.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import "NTESLanguageManager.h"
#import "OutpouringTingManager.h"

// __M_A_C_R_O__

//: @interface NTESLanguageManager ()<NSXMLParserDelegate>
@interface OutpouringTingManager ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation NTESLanguageManager
@implementation OutpouringTingManager

//: static NTESLanguageManager *shareInstance = nil;
static OutpouringTingManager *main_eventResultText = nil;

//: + (NTESLanguageManager *)shareInstance{
+ (OutpouringTingManager *)straddle{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (shareInstance == nil) {
            //: shareInstance = [[NTESLanguageManager alloc] init];
            main_eventResultText = [[OutpouringTingManager alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return main_eventResultText;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)search:(NSString *)key{
    //: NSMutableDictionary *dict = [NTESLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [OutpouringTingManager shareInstance].langDict;
    //: return [dict stringValueForKey:key];
    return [dict stringValueForKey:key];
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setClick:(NSString *)langType{
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
- (void)start:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)date:(NSXMLParser *)parser session:(NSString *)elementName attributesName:(NSString *)namespaceURI small:(NSString *)qName sound:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[ImageSessionData sharedInstance].m_chipName]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[ImageSessionData sharedInstance].kProvideData];
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)textView:(NSXMLParser *)parser findCustom:(NSString *)string {

//    NSLog(@"%@value : %@",parser, string);

    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)image:(NSXMLParser *)parser winnow:(NSString *)elementName ting:(NSString *)namespaceURI messageTitle:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)specification:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)remove{//th-TH  vi-VN
    //: NSString *language = [GVUserDefaults standardUserDefaults].language;
    NSString *language = [GVUserDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = @"zh_CN";
    //: if ([language isEqualToString:@"en"]) {
    if ([language isEqualToString:@"en"]) {
        //: return @"en_US";
        return [ImageSessionData sharedInstance].main_sliceWithText;
    }
    //: return locale;
    return locale;
}


//: @end
@end