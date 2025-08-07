// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitCommentUtil.h
// Secret
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
@class InsertView;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern const CGFloat NIMKitCommentUtilCellPadding;
extern const CGFloat user_stateMessage;

//: extern const CGFloat NIMKitCommentUtilCellContentPadding;
extern const CGFloat showQuickValue;

//: extern NSString * const NIMKitQuickCommentFormat;
extern NSString * const showImageDataIdent;


//: @interface PushKitQuickCommentUtil : NSObject
@interface MakeUtil : NSObject

//: + (UIFont *)commentFont;
+ (UIFont *)font;

//: + (NSString *)commentContent:(NIMQuickComment *)comment;
+ (NSString *)colorComment:(NIMQuickComment *)comment;

//: + (NSString *)commentsContent:(NSArray<NIMQuickComment *> *)comments;
+ (NSString *)image:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)itemSizeWithComment:(NIMQuickComment *)comment;
+ (CGSize)buildComment:(NIMQuickComment *)comment;

//: + (CGSize)itemSizeWithComments:(NSArray<NIMQuickComment *> *)comments;
+ (CGSize)compartment:(NSArray<NIMQuickComment *> *)comments;

//: + (CGSize)containerSizeWithComments:(NSMapTable *)comments;
+ (CGSize)name:(NSMapTable *)comments;

//: + (NIMQuickComment * _Nullable)myCommentFromComments:(NSInteger )keyIndex
+ (NIMQuickComment * _Nullable)link:(NSInteger )keyIndex
                                      //: keys:(NSArray *)keys
                                      doingWith:(NSArray *)keys
                                  //: comments:(NSMapTable *)map;
                                  item:(NSMapTable *)map;

//: + (M80AttributedLabel *)newCommentLabel;
+ (InsertView *)compartmentImage;

//: + (NSArray *)sortedKeys:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
+ (NSArray *)old:(NSMapTable<NSNumber *, NIMQuickComment *> *)map;
//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
