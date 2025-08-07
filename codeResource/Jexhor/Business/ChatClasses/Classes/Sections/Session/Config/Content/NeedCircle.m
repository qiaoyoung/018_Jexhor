
#import <Foundation/Foundation.h>
typedef struct {
    Byte magnitudeegrity;
    Byte *hospital;
    unsigned int dayWarn;
    Byte playingPeriod;
	int goatMortalIts;
	int pity;
	int acceptance;
} IgnitionData;

NSString *StringFromIgnitionData(IgnitionData *data);


//: message should be video
IgnitionData app_modeEraTitle = (IgnitionData){23, (Byte []){122, 114, 100, 100, 118, 112, 114, 55, 100, 127, 120, 98, 123, 115, 55, 117, 114, 55, 97, 126, 115, 114, 120, 36}, 23, 234, 201, 40, 169};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NeedCircle.m
// MessageContent
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFVideoContentConfig.h"
#import "NeedCircle.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation FFFVideoContentConfig
@implementation NeedCircle
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
    //: NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    NIMVideoObject *videoObject = (NIMVideoObject*)[message messageObject];
    //: NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], @"message should be video");
    NSAssert([videoObject isKindOfClass:[NIMVideoObject class]], StringFromIgnitionData(&app_modeEraTitle));

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
        contentSize = [UIImage link:videoObject.coverSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   quantity:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
                                                   session:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight)];
    }
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: return @"FFFSessionVideoContentView";
    return @"LineContentView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[MessageContent secretResolution].config ofSetting:message].contentInsets;
}

//: @end
@end

Byte *IgnitionDataToByte(IgnitionData *data) {
    if (data->playingPeriod < 111) return data->hospital;
    for (int i = 0; i < data->dayWarn; i++) {
        data->hospital[i] ^= data->magnitudeegrity;
    }
    data->hospital[data->dayWarn] = 0;
    data->playingPeriod = 90;
	if (data->dayWarn >= 3) {
		data->goatMortalIts = data->hospital[0];
		data->pity = data->hospital[1];
		data->acceptance = data->hospital[2];
	}
    return data->hospital;
}

NSString *StringFromIgnitionData(IgnitionData *data) {
    return [NSString stringWithUTF8String:(char *)IgnitionDataToByte(data)];
}
