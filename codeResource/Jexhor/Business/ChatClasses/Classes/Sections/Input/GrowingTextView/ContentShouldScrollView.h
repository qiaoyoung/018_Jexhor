// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentShouldScrollView.h
// Secret
//
//  Created by chris on 16/3/27.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class PushGrowingTextView;
@class ContentShouldScrollView;

//: @protocol PushGrowingTextViewDelegate <NSObject>
@protocol SignDelegate <NSObject>
//: @optional
@optional

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)text:(NSRange)range table:(NSString *)replacementText;

//: - (BOOL)shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)range;
- (BOOL)should:(NSURL *)URL total:(NSRange)range;

//: - (BOOL)shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)range;
- (BOOL)messageInfo:(NSTextAttachment *)textAttachment squeeze:(NSRange)range;

//: - (void)textViewDidBeginEditing:(PushGrowingTextView *)growingTextView;
- (void)nearTouch:(ContentShouldScrollView *)growingTextView;

//: - (void)textViewDidChangeSelection:(PushGrowingTextView *)growingTextView;
- (void)titled:(ContentShouldScrollView *)growingTextView;

//: - (void)textViewDidEndEditing:(PushGrowingTextView *)growingTextView;
- (void)nameBegin:(ContentShouldScrollView *)growingTextView;

//: - (BOOL)textViewShouldBeginEditing:(PushGrowingTextView *)growingTextView;
- (BOOL)wordsBack:(ContentShouldScrollView *)growingTextView;

//: - (BOOL)textViewShouldEndEditing:(PushGrowingTextView *)growingTextView;
- (BOOL)cellAcross:(ContentShouldScrollView *)growingTextView;

//: - (void)textViewDidChange:(PushGrowingTextView *)growingTextView;
- (void)messageShould:(ContentShouldScrollView *)growingTextView;

//: - (void)willChangeHeight:(CGFloat)height;
- (void)dimensions:(CGFloat)height;

//: - (void)didChangeHeight:(CGFloat)height;
- (void)keys:(CGFloat)height;

//: @end
@end

//: @interface PushGrowingTextView : UIScrollView
@interface ContentShouldScrollView : UIScrollView

//: @property (nonatomic,weak) id<PushGrowingTextViewDelegate> textViewDelegate;
@property (nonatomic,weak) id<SignDelegate> textViewDelegate;

//: @property (nonatomic,assign) NSInteger minNumberOfLines;
@property (nonatomic,assign) NSInteger minNumberOfLines;

//: @property (nonatomic,assign) NSInteger maxNumberOfLines;
@property (nonatomic,assign) NSInteger maxNumberOfLines;

//: @property (nonatomic,strong) UIView *inputView;
@property (nonatomic,strong) UIView *inputView;

//: @end
@end

//: @interface PushGrowingTextView(TextView)
@interface ContentShouldScrollView(TextView)

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
- (void)roundBy:(NSRange)range;

//: @end
@end
