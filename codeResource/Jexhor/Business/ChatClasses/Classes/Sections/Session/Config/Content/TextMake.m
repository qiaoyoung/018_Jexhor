
#import <Foundation/Foundation.h>

typedef struct {
    Byte mention;
    Byte *radiography;
    unsigned int dramaStem;
	int little;
	int enforcement;
} StructButtonDistractData;

@interface ButtonDistractData : NSObject

+ (instancetype)sharedInstance;

//: message should be video
@property (nonatomic, copy) NSString *mainThreadSaleContent;

@end

@implementation ButtonDistractData

+ (instancetype)sharedInstance {
    static ButtonDistractData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ButtonDistractDataToByte:(StructButtonDistractData *)data {
    for (int i = 0; i < data->dramaStem; i++) {
        data->radiography[i] ^= data->mention;
    }
    data->radiography[data->dramaStem] = 0;
	if (data->dramaStem >= 2) {
		data->little = data->radiography[0];
		data->enforcement = data->radiography[1];
	}
    return data->radiography;
}

- (NSString *)StringFromButtonDistractData:(StructButtonDistractData *)data {
    return [NSString stringWithUTF8String:(char *)[self ButtonDistractDataToByte:data]];
}

//: message should be video
- (NSString *)mainThreadSaleContent {
    if (!_mainThreadSaleContent) {
        StructButtonDistractData value = (StructButtonDistractData){86, (Byte []){59, 51, 37, 37, 55, 49, 51, 118, 37, 62, 57, 35, 58, 50, 118, 52, 51, 118, 32, 63, 50, 51, 57, 239}, 23, 115, 62};
        _mainThreadSaleContent = [self StringFromButtonDistractData:&value];
    }
    return _mainThreadSaleContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextMake.m
// Secret
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushVideoContentConfig.h"
#import "TextMake.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @implementation PushVideoContentConfig
@implementation TextMake
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message
{
    //: NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    //: NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], @"message should be video");
    NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], [ButtonDistractData sharedInstance].mainThreadSaleContent);

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    //: CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);
    CGSize contentSize = CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight);


    //: if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
    if (!__CGSizeEqualToSize(videoObject.coverSize, CGSizeZero)) {
        //有封面就直接拿封面大小
        //: contentSize = [UIImage nim_sizeWithImageOriginSize:videoObject.coverSize
        contentSize = [UIImage max:videoObject.coverSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   crunchSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
                                                   secondText:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
    }
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)session:(NIMMessage *)message
{
    //: return @"PushSessionVideoContentView";
    return @"CenterView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)messageUser:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Secret highlight].config click:message].contentInsets;
}

//: @end
@end
