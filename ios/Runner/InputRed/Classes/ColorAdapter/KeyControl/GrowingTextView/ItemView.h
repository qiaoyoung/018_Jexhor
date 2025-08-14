// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemView.h
// MessageContent
//
//  Created by chris on 16/3/27.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class WorkGrowingTextView;
@class ItemView;

//: @protocol WorkGrowingTextViewDelegate <NSObject>
@protocol FactorRecent <NSObject>
//: @optional
@optional

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)dogListen:(NSRange)range tag:(NSString *)replacementText;

//: - (BOOL)shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)range;
- (BOOL)cell:(NSURL *)URL smartAt:(NSRange)range;

//: - (BOOL)shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)range;
- (BOOL)sub:(NSTextAttachment *)textAttachment canIn:(NSRange)range;

//: - (void)textViewDidBeginEditing:(WorkGrowingTextView *)growingTextView;
- (void)draftCopyNetDataConverter:(ItemView *)growingTextView;

//: - (void)textViewDidChangeSelection:(WorkGrowingTextView *)growingTextView;
- (void)inputted:(ItemView *)growingTextView;

//: - (void)textViewDidEndEditing:(WorkGrowingTextView *)growingTextView;
- (void)adds:(ItemView *)growingTextView;

//: - (BOOL)textViewShouldBeginEditing:(WorkGrowingTextView *)growingTextView;
- (BOOL)rangeValue:(ItemView *)growingTextView;

//: - (BOOL)textViewShouldEndEditing:(WorkGrowingTextView *)growingTextView;
- (BOOL)towardSize:(ItemView *)growingTextView;

//: - (void)textViewDidChange:(WorkGrowingTextView *)growingTextView;
- (void)filmTo:(ItemView *)growingTextView;

//: - (void)willChangeHeight:(CGFloat)height;
- (void)values:(CGFloat)height;

//: - (void)didChangeHeight:(CGFloat)height;
- (void)centerTap:(CGFloat)height;

//: @end
@end

//: @interface WorkGrowingTextView : UIScrollView
@interface ItemView : UIScrollView

//: @property (nonatomic,weak) id<WorkGrowingTextViewDelegate> textViewDelegate;
@property (nonatomic,weak) id<FactorRecent> textViewDelegate;

//: @property (nonatomic,assign) NSInteger minNumberOfLines;
@property (nonatomic,assign) NSInteger minNumberOfLines;

//: @property (nonatomic,assign) NSInteger maxNumberOfLines;
@property (nonatomic,assign) NSInteger maxNumberOfLines;

//: @property (nonatomic,strong) UIView *inputView;
@property (nonatomic,strong) UIView *inputView;

//: @end
@end

//: @interface WorkGrowingTextView(TextView)
@interface ItemView(TextView)

//: @property (nonatomic,copy) NSAttributedString *placeholderAttributedText;
@property (nonatomic,copy) NSAttributedString *placeholderAttributedText;

//: @property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *text;

//: @property (nonatomic,strong) UIFont *font;
@property (nonatomic,strong) UIFont *font;

//: @property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) UIColor *textColor;

//: @property (nonatomic,assign) NSTextAlignment textAlignment;
@property (nonatomic,assign) NSTextAlignment textAlignment;

//: @property (nonatomic,assign) NSRange selectedRange;
@property (nonatomic,assign) NSRange selectedRange;

//: @property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;
@property (nonatomic,assign) UIDataDetectorTypes dataDetectorTypes;

//: @property (nonatomic,assign) BOOL editable;
@property (nonatomic,assign) BOOL editable;

//: @property (nonatomic,assign) BOOL selectable;
@property (nonatomic,assign) BOOL selectable;

//: @property (nonatomic,assign) BOOL allowsEditingTextAttributes;
@property (nonatomic,assign) BOOL allowsEditingTextAttributes;

//: @property (nonatomic,copy) NSAttributedString *attributedText;
@property (nonatomic,copy) NSAttributedString *attributedText;

//: @property (nonatomic,strong) UIView *textViewInputAccessoryView;
@property (nonatomic,strong) UIView *textViewInputAccessoryView;

//: @property (nonatomic,assign) BOOL clearsOnInsertion;
@property (nonatomic,assign) BOOL clearsOnInsertion;

//: @property (nonatomic,readonly) NSTextContainer *textContainer;
@property (nonatomic,readonly) NSTextContainer *textContainer;

//: @property (nonatomic,assign) UIEdgeInsets textContainerInset;
@property (nonatomic,assign) UIEdgeInsets textContainerInset;

//: @property (nonatomic,readonly) NSLayoutManager *layoutManger;
@property (nonatomic,readonly) NSLayoutManager *layoutManger;

//: @property (nonatomic,readonly) NSTextStorage *textStorage;
@property (nonatomic,readonly) NSTextStorage *textStorage;

//: @property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;
@property (nonatomic, copy) NSDictionary<NSString *, id> *linkTextAttributes;

//: @property (nonatomic,assign) UIReturnKeyType returnKeyType;
@property (nonatomic,assign) UIReturnKeyType returnKeyType;

//: - (void)scrollRangeToVisible:(NSRange)range;
- (void)scroll:(NSRange)range;

//: @end
@end
