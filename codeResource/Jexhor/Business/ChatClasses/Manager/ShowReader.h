// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowReader.h
//
//  Created by Troy Brant on 9/18/10.
//  Updated by Antoine Marcadet on 9/23/11.
//  Updated by Divan Visagie on 2012-08-26
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: enum {
enum {
    //: PushXMLReaderOptionsProcessNamespaces = 1 << 0, 
    PushXMLReaderOptionsProcessNamespaces = 1 << 0, // Specifies whether the receiver reports the namespace and the qualified name of an element.
    //: PushXMLReaderOptionsReportNamespacePrefixes = 1 << 1, 
    PushXMLReaderOptionsReportNamespacePrefixes = 1 << 1, // Specifies whether the receiver reports the scope of namespace declarations.
    //: PushXMLReaderOptionsResolveExternalEntities = 1 << 2, 
    PushXMLReaderOptionsResolveExternalEntities = 1 << 2, // Specifies whether the receiver reports declarations of external entities.
//: };
};
//: typedef NSUInteger PushXMLReaderOptions;
typedef NSUInteger PushXMLReaderOptions;

//: @interface PushXMLReader : NSObject <NSXMLParserDelegate>
@interface ShowReader : NSObject <NSXMLParserDelegate>

//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data error:(NSError **)errorPointer;
+ (NSDictionary *)executiveSessionItem:(NSData *)data originShowShared:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string error:(NSError **)errorPointer;
+ (NSDictionary *)teamPull:(NSString *)string key:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data options:(PushXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)fileIn:(NSData *)data read:(PushXMLReaderOptions)options label:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string options:(PushXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)hideDoing:(NSString *)string bottom:(PushXMLReaderOptions)options infoChalkLine:(NSError **)errorPointer;

//: @end
@end
