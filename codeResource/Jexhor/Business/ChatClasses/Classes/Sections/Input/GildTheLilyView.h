// __DEBUG__
// __CLOSE_PRINT__
//
//  GildTheLilyView.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushGrowingTextView.h"
#import "ContentShouldScrollView.h"

//: typedef NS_ENUM(NSInteger,NIMInputStatus)
typedef NS_ENUM(NSInteger,NIMInputStatus)
{
    //: NIMInputStatusText,
    NIMInputStatusText,
    //: NIMInputStatusAudio,
    NIMInputStatusAudio,
    //: NIMInputStatusEmoticon,
    NIMInputStatusEmoticon,
    //: NIMInputStatusMore
    NIMInputStatusMore
//: };
};


//: @protocol PushInputToolBarDelegate <NSObject>
@protocol SignalClickWithBuild <NSObject>

//: @optional
@optional

//: - (BOOL)textViewShouldBeginEditing;
- (BOOL)enableSend;

//: - (void)textViewDidEndEditing;
- (void)referEditing;

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)text:(NSRange)range table:(NSString *)replacementText;

//: - (void)textViewDidChange;
- (void)nameBar;

//: - (void)toolBarWillChangeHeight:(CGFloat)height;
- (void)sessions:(CGFloat)height;

//: - (void)toolBarDidChangeHeight:(CGFloat)height;
- (void)pages:(CGFloat)height;

//: @end
@end


//: @interface PushInputToolBar : UIView
@interface GildTheLilyView : UIView

//: @property (nonatomic,strong) UIButton *voiceButton;
@property (nonatomic,strong) UIButton *voiceButton;
//: @property (nonatomic,strong) UIButton *emoticonBtn;
@property (nonatomic,strong) UIButton *emoticonBtn;
//@property (nonatomic,strong) UIButton    *emoticonBtn2;

//: @property (nonatomic,strong) UIButton *albunBtn;
@property (nonatomic,strong) UIButton *albunBtn;

//@property (nonatomic,strong) UIButton    *cameraBtn;

//@property (nonatomic,strong) UIButton    *moreMediaBtn;
//
//@property (nonatomic,strong) UIButton    *recordButton;

//: @property (nonatomic,strong) UIButton *sendButton;
@property (nonatomic,strong) UIButton *sendButton;

//@property (nonatomic,strong) UIImageView *inputTextBkgImage;

//: @property (nonatomic,strong) UIView *bottomSep;
@property (nonatomic,strong) UIView *bottomSep;

//: @property (nonatomic,copy) NSString *contentText;
@property (nonatomic,copy) NSString *contentText;

//: @property (nonatomic,weak) id<PushInputToolBarDelegate> delegate;
@property (nonatomic,weak) id<SignalClickWithBuild> delegate;

//: @property (nonatomic,assign) BOOL showsKeyboard;
@property (nonatomic,assign) BOOL showsKeyboard;

//: @property (nonatomic,assign) NSArray *inputBarItemTypes;
@property (nonatomic,assign) NSArray *inputBarItemTypes;

//: @property (nonatomic,assign) NSInteger maxNumberOfInputLines;
@property (nonatomic,assign) NSInteger maxNumberOfInputLines;

//: @property (nonatomic,strong) PushGrowingTextView *inputTextView;
@property (nonatomic,strong) ContentShouldScrollView *inputTextView;

//: - (void)update:(NIMInputStatus)status;
- (void)my:(NIMInputStatus)status;

//: @end
@end

//: @interface PushInputToolBar(InputText)
@interface GildTheLilyView(InputText)

//: - (NSRange)selectedRange;
- (NSRange)belowGenerateBackground;

//: - (void)setPlaceHolder:(NSString *)placeHolder;
- (void)setView:(NSString *)placeHolder;
//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor;
- (void)colorInfo:(NSString *)placeHolder thole:(UIColor *)placeholderColor;

//: - (void)insertText:(NSString *)text;
- (void)columnTip:(NSString *)text;

//: - (void)deleteText:(NSRange)range;
- (void)input:(NSRange)range;

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji;
- (void)to:(NSString *)text cell:(BOOL)isEmoji;

//: @end
@end
