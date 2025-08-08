// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.h
// MessageContent
//
//  Created by He on 2020/4/14.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class M80AttributedLabel;
@class VideoTextView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat userErrorValue;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat show_spaceNameValue;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const main_controlData;


//: @interface WorkKitQuickCommentUtil : NSObject
@interface MessageUtil : NSObject

//: + (UIFont *)commentFont;
+ (UIFont *)can;

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)red:(NIMQuickComment *)comment;

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)topName:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)stateComment:(NIMQuickComment *)comment;

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)should:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)size:(NSMapTable *)comments;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)name:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      infoTo:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  inventoryItemComments:(NSMapTable *)map;

//: + (M80AttributedLabel *)newCommentLabel;
+ (VideoTextView *)readMessage;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)image:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
