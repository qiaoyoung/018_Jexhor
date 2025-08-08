// __DEBUG__
// __CLOSE_PRINT__
//
//  CoatButtonView.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WorkGrowingTextView.h"
#import "ItemView.h"

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


//: @protocol WorkInputToolBarDelegate <NSObject>
@protocol RangeDelegate <NSObject>

//: @optional
@optional

//: - (BOOL)textViewShouldBeginEditing;
- (BOOL)plunderedHeight;

//: - (void)textViewDidEndEditing;
- (void)tapLeft;

//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText;
- (BOOL)dogListen:(NSRange)range tag:(NSString *)replacementText;

//: - (void)textViewDidChange;
- (void)quantityMy;

//: - (void)toolBarWillChangeHeight:(CGFloat)height;
- (void)heightToolMentalFacultyPubChangeShared:(CGFloat)height;

//: - (void)toolBarDidChangeHeight:(CGFloat)height;
- (void)pushed:(CGFloat)height;

//: @end
@end


//: @interface WorkInputToolBar : UIView
@interface CoatButtonView : UIView

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

//: @property (nonatomic,weak) id<WorkInputToolBarDelegate> delegate;
@property (nonatomic,weak) id<RangeDelegate> delegate;

//: @property (nonatomic,assign) BOOL showsKeyboard;
@property (nonatomic,assign) BOOL showsKeyboard;

//: @property (nonatomic,assign) NSArray *inputBarItemTypes;
@property (nonatomic,assign) NSArray *inputBarItemTypes;

//: @property (nonatomic,assign) NSInteger maxNumberOfInputLines;
@property (nonatomic,assign) NSInteger maxNumberOfInputLines;

//: @property (nonatomic,strong) WorkGrowingTextView *inputTextView;
@property (nonatomic,strong) ItemView *inputTextView;

//: - (void)update:(NIMInputStatus)status;
- (void)ting:(NIMInputStatus)status;

//: @end
@end

//: @interface WorkInputToolBar(InputText)
@interface CoatButtonView(InputText)

//: - (NSRange)selectedRange;
- (NSRange)holder;

//: - (void)setPlaceHolder:(NSString *)placeHolder;
- (void)setChecked:(NSString *)placeHolder;
//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor;
- (void)fosterChild:(NSString *)placeHolder bar:(UIColor *)placeholderColor;

//: - (void)insertText:(NSString *)text;
- (void)scale:(NSString *)text;

//: - (void)deleteText:(NSRange)range;
- (void)deleteChapter:(NSRange)range;

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji;
- (void)highlight:(NSString *)text sessionView:(BOOL)isEmoji;

//: @end
@end
