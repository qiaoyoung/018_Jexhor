
#import <Foundation/Foundation.h>

@interface DetectiveDirectData : NSObject

+ (instancetype)sharedInstance;

//: icon_toolview_keybord
@property (nonatomic, copy) NSString *dream_hisId;

//: icon_toolview_emotion_normal
@property (nonatomic, copy) NSString *userMilkValue;

//: icon_toolview_keyboard_normal
@property (nonatomic, copy) NSString *mListenerContent;

//: icon_toolview_send
@property (nonatomic, copy) NSString *m_viewIdent;

//: icon_toolview_album_normal
@property (nonatomic, copy) NSString *dream_buttName;

@end

@implementation DetectiveDirectData

+ (instancetype)sharedInstance {
    static DetectiveDirectData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DetectiveDirectDataToCache:(Byte *)data {
    int celebrityWilling = data[0];
    int corporalPunishment = data[1];
    for (int i = 0; i < celebrityWilling / 2; i++) {
        int begin = corporalPunishment + i;
        int end = corporalPunishment + celebrityWilling - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[corporalPunishment + celebrityWilling] = 0;
    return data + corporalPunishment;
}

- (NSString *)StringFromDetectiveDirectData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DetectiveDirectDataToCache:data]];
}  

//: icon_toolview_keybord
- (NSString *)dream_hisId {
    if (!_dream_hisId) {
        Byte value[] = {21, 10, 55, 110, 150, 123, 188, 6, 249, 14, 100, 114, 111, 98, 121, 101, 107, 95, 119, 101, 105, 118, 108, 111, 111, 116, 95, 110, 111, 99, 105, 29};
        _dream_hisId = [self StringFromDetectiveDirectData:value];
    }
    return _dream_hisId;
}

//: icon_toolview_album_normal
- (NSString *)dream_buttName {
    if (!_dream_buttName) {
        Byte value[] = {26, 10, 189, 232, 88, 58, 183, 89, 90, 33, 108, 97, 109, 114, 111, 110, 95, 109, 117, 98, 108, 97, 95, 119, 101, 105, 118, 108, 111, 111, 116, 95, 110, 111, 99, 105, 212};
        _dream_buttName = [self StringFromDetectiveDirectData:value];
    }
    return _dream_buttName;
}

//: icon_toolview_keyboard_normal
- (NSString *)mListenerContent {
    if (!_mListenerContent) {
        Byte value[] = {29, 6, 171, 172, 242, 92, 108, 97, 109, 114, 111, 110, 95, 100, 114, 97, 111, 98, 121, 101, 107, 95, 119, 101, 105, 118, 108, 111, 111, 116, 95, 110, 111, 99, 105, 126};
        _mListenerContent = [self StringFromDetectiveDirectData:value];
    }
    return _mListenerContent;
}

//: icon_toolview_send
- (NSString *)m_viewIdent {
    if (!_m_viewIdent) {
        Byte value[] = {18, 12, 135, 109, 147, 122, 12, 68, 195, 202, 212, 22, 100, 110, 101, 115, 95, 119, 101, 105, 118, 108, 111, 111, 116, 95, 110, 111, 99, 105, 18};
        _m_viewIdent = [self StringFromDetectiveDirectData:value];
    }
    return _m_viewIdent;
}

//: icon_toolview_emotion_normal
- (NSString *)userMilkValue {
    if (!_userMilkValue) {
        Byte value[] = {28, 3, 74, 108, 97, 109, 114, 111, 110, 95, 110, 111, 105, 116, 111, 109, 101, 95, 119, 101, 105, 118, 108, 111, 111, 116, 95, 110, 111, 99, 105, 137};
        _userMilkValue = [self StringFromDetectiveDirectData:value];
    }
    return _userMilkValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GildTheLilyView.m
// Secret
//
//  Created by chris
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushInputToolBar.h"
#import "GildTheLilyView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "PushInputBarItemType.h"
#import "PushInputBarItemType.h"
//: #import "PushInputEmoticonManager.h"
#import "DirectorManager.h"
//: #import "YYText.h"
#import "YYText.h"
//: #import "PushTextHighlight.h"
#import "NeedTitleHighlight.h"
//: #import "PushKitKeyboardInfo.h"
#import "TitleRandom.h"

//: @interface PushInputToolBar()<PushGrowingTextViewDelegate>
@interface GildTheLilyView()<SignDelegate>

//: @property (nonatomic,copy) NSArray<NSNumber *> *types;
@property (nonatomic,copy) NSArray<NSNumber *> *types;

//: @property (nonatomic,copy) NSDictionary *dict;
@property (nonatomic,copy) NSDictionary *dict;

//: @property (nonatomic,assign) NIMInputStatus status;
@property (nonatomic,assign) NIMInputStatus status;

//: @end
@end

//: @implementation PushInputToolBar
@implementation GildTheLilyView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setBackgroundColor:[UIColor whiteColor]];
        [self setBackgroundColor:[UIColor whiteColor]];

        //: _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _voiceButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        _voiceButton.backgroundColor = ThemeColor;
//        _voiceButton.layer.cornerRadius = 14;
        //: [_voiceButton setImage:[UIImage imageNamed:@"icon_toolview_keyboard_normal"] forState:UIControlStateNormal];
        [_voiceButton setImage:[UIImage imageNamed:[DetectiveDirectData sharedInstance].mListenerContent] forState:UIControlStateNormal];
        //: [self addSubview:_voiceButton];
        [self addSubview:_voiceButton];

        //: _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _emoticonBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_emoticonBtn setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
        [_emoticonBtn setImage:[UIImage imageNamed:[DetectiveDirectData sharedInstance].userMilkValue] forState:UIControlStateNormal];
        //: [self addSubview:_emoticonBtn];
        [self addSubview:_emoticonBtn];

//        _emoticonBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_emotion_normal"] forState:UIControlStateNormal];
//        [_emoticonBtn2 setImage:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateSelected];
//        _emoticonBtn2.hidden = YES;
//        [self addSubview:_emoticonBtn2];

        //: _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albunBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_albunBtn setImage:[UIImage imageNamed:@"icon_toolview_album_normal"] forState:UIControlStateNormal];
        [_albunBtn setImage:[UIImage imageNamed:[DetectiveDirectData sharedInstance].dream_buttName] forState:UIControlStateNormal];
        //: [self addSubview:_albunBtn];
        [self addSubview:_albunBtn];

//        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn setImage:[UIImage imageNamed:@"icon_toolview_camera_normal"] forState:UIControlStateNormal];
////        [_cameraBtn sizeToFit];
//        [self addSubview:_cameraBtn];

//        _moreMediaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_moreMediaBtn setImage:[UIImage imageNamed:@"icon_toolview_add_normal"] forState:UIControlStateNormal];
//        [_moreMediaBtn sizeToFit];

//        _recordButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_recordButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [_recordButton.titleLabel setFont:[UIFont systemFontOfSize:14.f]];
//        [_recordButton setBackgroundImage:[[UIImage imageNamed:@"icon_input_text_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch] forState:UIControlStateNormal];
//        _recordButton.exclusiveTouch = YES;
//        [_recordButton sizeToFit];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"icon_toolview_send"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:[DetectiveDirectData sharedInstance].m_viewIdent] forState:UIControlStateNormal];
        //: _sendButton.hidden = YES;
        _sendButton.hidden = YES;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];
//        [_sendButton sizeToFit];
//        _sendButton.hitTestEdgeInsets = UIEdgeInsetsMake(-10, -10, -10, -10);

//        _inputTextBkgImage = [[UIImageView alloc] initWithFrame:CGRectZero];
//        [_inputTextBkgImage setImage:[[UIImage imageNamed:@"icon_input_text_bg_"] resizableImageWithCapInsets:UIEdgeInsetsMake(15,80,15,80) resizingMode:UIImageResizingModeStretch]];

        //: _inputTextView = [[PushGrowingTextView alloc] initWithFrame:CGRectZero];
        _inputTextView = [[ContentShouldScrollView alloc] initWithFrame:CGRectZero];
        //: _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        _inputTextView.font = [UIFont systemFontOfSize:14.0f];
        //: _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        _inputTextView.maxNumberOfLines = _maxNumberOfInputLines?:4;
        //: _inputTextView.minNumberOfLines = 1;
        _inputTextView.minNumberOfLines = 1;
        //: _inputTextView.textColor = [UIColor blackColor];
        _inputTextView.textColor = [UIColor blackColor];
        //: _inputTextView.backgroundColor = [UIColor clearColor];
        _inputTextView.backgroundColor = [UIColor clearColor];
        //: _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        _inputTextView.nim_size = [_inputTextView intrinsicContentSize];
        //: _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;
        _inputTextView.layer.cornerRadius = _inputTextView.nim_height/2;

        //: _inputTextView.textViewDelegate = self;
        _inputTextView.textViewDelegate = self;
//        _inputTextView.returnKeyType = UIReturnKeySend;
        //: _inputTextView.returnKeyType = UIReturnKeyDefault;
        _inputTextView.returnKeyType = UIReturnKeyDefault;
        //: [self addSubview:self.inputTextView];
        [self addSubview:self.inputTextView];

        //顶部分割线
//        UIView *sep = [[UIView alloc] initWithFrame:CGRectZero];
//        sep.backgroundColor = [UIColor lightGrayColor];
//        sep.nim_size = CGSizeMake(self.nim_width, .5f);
//        sep.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//        [self addSubview:sep];
//
//        //底部分割线
//        _bottomSep = [[UIView alloc] initWithFrame:CGRectZero];
//        _bottomSep.backgroundColor = [UIColor lightGrayColor];
//        [self addSubview:_bottomSep];

        //: self.types = @[
        self.types = @[
//            @(PushInputBarItemTypeMore),
//            @(PushInputBarItemTypeEmoticon),
//                         @(PushInputBarItemTypeVoice),
                         //: @(PushInputBarItemTypeTextAndRecord),
                         @(PushInputBarItemTypeTextAndRecord),
                         //: @(PushInputBarItemTypeSend),
                         @(PushInputBarItemTypeSend),

                       //: ];
                       ];



    }
    //: return self;
    return self;
}



//: - (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
- (void)setInputBarItemTypes:(NSArray<NSNumber *> *)types{
    //: self.types = types;
    self.types = types;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (NSString *)contentText
- (NSString *)contentText
{
    //: return self.inputTextView.text;
    return self.inputTextView.text;
}

//: - (void)setContentText:(NSString *)contentText
- (void)setContentText:(NSString *)contentText
{
    //: self.inputTextView.text = contentText;
    self.inputTextView.text = contentText;
}

//: - (NSArray *)inputBarItemTypes
- (NSArray *)inputBarItemTypes
{
    //: return self.types;
    return self.types;
}


//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: CGFloat viewHeight = 0.0f;
    CGFloat viewHeight = 0.0f;
  //: if(self.status == NIMInputStatusText){
  if(self.status == NIMInputStatusText){
        //算出 TextView 的宽度
        //: [self adjustTextViewWidth:size.width];
        [self development:size.width];
        // TextView 自适应高度
        //: [self.inputTextView layoutIfNeeded];
        [self.inputTextView layoutIfNeeded];
        //: viewHeight = (int)self.inputTextView.frame.size.height;
        viewHeight = (int)self.inputTextView.frame.size.height;
        //得到 ToolBar 自身高度
        //: viewHeight = viewHeight + 2*self.spacing;
        viewHeight = viewHeight + 2*self.enableCenter;

    //: }else {
    }else {
        //: viewHeight = 51;
        viewHeight = 51;

    }

    //: return CGSizeMake(size.width,viewHeight);
    return CGSizeMake(size.width,viewHeight);
}

//: - (void)adjustTextViewWidth:(CGFloat)width
- (void)development:(CGFloat)width
{
//    CGFloat textViewWidth = 0;
//    for (NSNumber *type in self.types) {
//        if (type.integerValue == PushInputBarItemTypeTextAndRecord) {
//            continue;
//        }
//        UIView *view = [self subViewForType:type.integerValue];
//        textViewWidth += view.nim_width;
//    }
//    textViewWidth += (self.spacing * (self.types.count + 1));
    //: self.inputTextView.nim_width = width - 140 - 4*self.textViewPadding;
    self.inputTextView.nim_width = width - 140 - 4*self.index;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.emoticonBtn.frame = CGRectMake(12, self.spacing+2, 32, 32);
    self.emoticonBtn.frame = CGRectMake(12, self.enableCenter+2, 32, 32);
    //: self.albunBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32-15-32, self.spacing+2, 32, 32);
    self.albunBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32-15-32, self.enableCenter+2, 32, 32);

    //: self.inputTextView.nim_left = 56;
    self.inputTextView.nim_left = 56;
    //: self.inputTextView.nim_top = self.spacing;
    self.inputTextView.nim_top = self.enableCenter;

    //: self.voiceButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, self.spacing+2, 32, 32);
    self.voiceButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-32, self.enableCenter+2, 32, 32);

    //: self.emoticonBtn.nim_centerY = self.inputTextView.nim_centerY;
    self.emoticonBtn.nim_centerY = self.inputTextView.nim_centerY;
    //: self.albunBtn.nim_centerY = self.inputTextView.nim_centerY;
    self.albunBtn.nim_centerY = self.inputTextView.nim_centerY;
    //: self.voiceButton.nim_centerY = self.inputTextView.nim_centerY;
    self.voiceButton.nim_centerY = self.inputTextView.nim_centerY;



    //: self.sendButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, self.spacing, 48, 32);
    self.sendButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-15-48, self.enableCenter, 48, 32);
    //: self.sendButton.nim_centerY = self.inputTextView.nim_centerY;
    self.sendButton.nim_centerY = self.inputTextView.nim_centerY;

    //: self.sendButton.hidden = YES;
    self.sendButton.hidden = YES;
    //: self.albunBtn.hidden = NO;
    self.albunBtn.hidden = NO;
    //: self.emoticonBtn.hidden = NO;
    self.emoticonBtn.hidden = NO;
    //: self.voiceButton.hidden = NO;
    self.voiceButton.hidden = NO;

    //: if (self.inputTextView.text.length > 0) {
    if (self.inputTextView.text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
    }
}



//: - (void)adjustTextAndRecordView
- (void)can
{
    //: if ([self.types containsObject:@(PushInputBarItemTypeTextAndRecord)])
    if ([self.types containsObject:@(PushInputBarItemTypeTextAndRecord)])
    {
//        self.inputTextView.center  = self.inputTextBkgImage.center;

        //: if (!self.inputTextView.superview)
        if (!self.inputTextView.superview)
        {
            //输入框
            //: [self addSubview:self.inputTextView];
            [self addSubview:self.inputTextView];
        }
//        if (!self.recordButton.superview)
//        {
//            //中间点击录音按钮
//            self.recordButton.frame    = self.inputTextBkgImage.frame;
//            [self addSubview:self.recordButton];
//        }
    }
}

//: - (BOOL)showsKeyboard
- (BOOL)showsKeyboard
{
    //: return [self.inputTextView isFirstResponder];
    return [self.inputTextView isFirstResponder];
}


//: - (void)setShowsKeyboard:(BOOL)showsKeyboard
- (void)setShowsKeyboard:(BOOL)showsKeyboard
{
    //: if (showsKeyboard)
    if (showsKeyboard)
    {
        //: [self.inputTextView becomeFirstResponder];
        [self.inputTextView becomeFirstResponder];
    }
    //: else
    else
    {
        //: [self.inputTextView resignFirstResponder];
        [self.inputTextView resignFirstResponder];
    }
}


//: - (void)update:(NIMInputStatus)status
- (void)my:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self sizeToFit];
    [self sizeToFit];

    //: if (status == NIMInputStatusText || status == NIMInputStatusMore)
    if (status == NIMInputStatusText || status == NIMInputStatusMore)
    {
        //: [self.inputTextView setHidden:NO];
        [self.inputTextView setHidden:NO];
        //: [self updateEmotAndTextBtnImages:YES];
        [self enable:YES];
        //: [self layoutSubviews];
        [self layoutSubviews];

    }
    //: else if(status == NIMInputStatusAudio)
    else if(status == NIMInputStatusAudio)
    {
        //: [self.inputTextView setHidden:YES];
        [self.inputTextView setHidden:YES];
        //: [self updateEmotAndTextBtnImages:YES];
        [self enable:YES];
    }
    //: else
    else
    {
        //: [self.inputTextView setHidden:NO];
        [self.inputTextView setHidden:NO];
        //: [self updateEmotAndTextBtnImages:NO];
        [self enable:NO];
    }
}

//: - (void)updateEmotAndTextBtnImages:(BOOL)selected
- (void)enable:(BOOL)selected
{
    //: [self.emoticonBtn setImage:selected?[UIImage imageNamed:@"icon_toolview_emotion_normal"]:[UIImage imageNamed:@"icon_toolview_keybord"] forState:UIControlStateNormal];
    [self.emoticonBtn setImage:selected?[UIImage imageNamed:[DetectiveDirectData sharedInstance].userMilkValue]:[UIImage imageNamed:[DetectiveDirectData sharedInstance].dream_hisId] forState:UIControlStateNormal];
}


//: #pragma mark - PushGrowingTextViewDelegate
#pragma mark - SignDelegate
//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)replacementText
- (BOOL)text:(NSRange)range table:(NSString *)replacementText
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.delegate respondsToSelector:@selector(shouldChangeTextInRange:replacementText:)]) {
    if ([self.delegate respondsToSelector:@selector(text:table:)]) {
        //: should = [self.delegate shouldChangeTextInRange:range replacementText:replacementText];
        should = [self.delegate text:range table:replacementText];
    }
    //: return should;
    return should;
}


//: - (BOOL)textViewShouldBeginEditing:(PushGrowingTextView *)growingTextView
- (BOOL)wordsBack:(ContentShouldScrollView *)growingTextView
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.delegate respondsToSelector:@selector(textViewShouldBeginEditing)]) {
    if ([self.delegate respondsToSelector:@selector(enableSend)]) {
        //: should = [self.delegate textViewShouldBeginEditing];
        should = [self.delegate enableSend];
    }
    //: return should;
    return should;
}

//: - (void)textViewDidEndEditing:(PushGrowingTextView *)growingTextView
- (void)nameBegin:(ContentShouldScrollView *)growingTextView
{
    //: if ([self.delegate respondsToSelector:@selector(textViewDidEndEditing)]) {
    if ([self.delegate respondsToSelector:@selector(referEditing)]) {
        //: [self.delegate textViewDidEndEditing];
        [self.delegate referEditing];
    }
}


//: - (void)textViewDidChange:(PushGrowingTextView *)growingTextView
- (void)messageShould:(ContentShouldScrollView *)growingTextView
{
    //: if ([self.delegate respondsToSelector:@selector(textViewDidChange)]) {
    if ([self.delegate respondsToSelector:@selector(nameBar)]) {
        //: [self.delegate textViewDidChange];
        [self.delegate nameBar];
    }

    //: if (_inputTextView.text.length > 0) {
    if (_inputTextView.text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
//        self.inputTextView.nim_left = self.spacing*2+28;
//        self.inputTextView.nim_top = self.spacing;
//        self.emoticonBtn.frame = CGRectMake(self.spacing, self.spacing+2, 28, 28);


    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
//        self.inputTextView.nim_left = self.spacing;
//        self.inputTextView.nim_top = self.spacing;
//        self.emoticonBtn.frame = CGRectMake(SCREEN_WIDTH-10-28, self.spacing+2, 28, 28);
//        self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-10-28-28-10, self.spacing+2, 28, 28);
    }
}

//: - (void)willChangeHeight:(CGFloat)height
- (void)dimensions:(CGFloat)height
{
    //: CGFloat toolBarHeight = height + 2 * self.spacing +50 ;
    CGFloat toolBarHeight = height + 2 * self.enableCenter +50 ;
    //: if ([self.delegate respondsToSelector:@selector(toolBarWillChangeHeight:)]) {
    if ([self.delegate respondsToSelector:@selector(sessions:)]) {
        //: [self.delegate toolBarWillChangeHeight:toolBarHeight];
        [self.delegate sessions:toolBarHeight];
    }
}

//: - (void)didChangeHeight:(CGFloat)height
- (void)keys:(CGFloat)height
{
    //去掉了+50
    //: self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding;
    self.nim_height = height + 2 * self.enableCenter + 2 * self.index;
//    self.nim_height = height + 2 * self.spacing + 2 * self.textViewPadding ;
    //: if ([self.delegate respondsToSelector:@selector(toolBarDidChangeHeight:)]) {
    if ([self.delegate respondsToSelector:@selector(pages:)]) {
        //: [self.delegate toolBarDidChangeHeight:self.nim_height];
        [self.delegate pages:self.nim_height];
    }
}


//: #pragma mark - Get
#pragma mark - Get
//: - (UIView *)subViewForType:(PushInputBarItemType)type{
- (UIView *)containerTap:(PushInputBarItemType)type{
    //: if (!_dict) {
    if (!_dict) {
        //: _dict = @{
        _dict = @{
//                  @(PushInputBarItemTypeVoice) : self.voiceButton,
//                  @(PushInputBarItemTypeTextAndRecord)  : self.inputTextBkgImage,
                  //: @(PushInputBarItemTypeEmoticon) : self.emoticonBtn,
                  @(PushInputBarItemTypeEmoticon) : self.emoticonBtn,
//                  @(PushInputBarItemTypeMore)     : self.moreMediaBtn,
                  //: @(PushInputBarItemTypeSend) : self.sendButton,
                  @(PushInputBarItemTypeSend) : self.sendButton,
                //: };
                };
    }
    //: return _dict[@(type)];
    return _dict[@(type)];
}

//: - (CGFloat)spacing{
- (CGFloat)enableCenter{
    //: return 6.f;
    return 6.f;
}

//: - (CGFloat)textViewPadding
- (CGFloat)index
{
    //: return 3.f;
    return 3.f;
}


//: @end
@end


//: @implementation PushInputToolBar(InputText)
@implementation GildTheLilyView(InputText)

//: - (NSRange)selectedRange
- (NSRange)belowGenerateBackground
{
    //: return self.inputTextView.selectedRange;
    return self.inputTextView.selectedRange;
}

//: - (void)setPlaceHolder:(NSString *)placeHolder
- (void)setView:(NSString *)placeHolder
{
    //: self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor]}];
}

//: - (void)setPlaceHolder:(NSString *)placeHolder color:(UIColor *)placeholderColor
- (void)colorInfo:(NSString *)placeHolder thole:(UIColor *)placeholderColor
{
    //: self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
    self.inputTextView.placeholderAttributedText = [[NSAttributedString alloc] initWithString:placeHolder attributes:@{NSForegroundColorAttributeName:placeholderColor}];
}

//: - (void)insertText:(NSString *)text
- (void)columnTip:(NSString *)text
{
//    NSRange range = self.inputTextView.selectedRange;
//    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
//    range = NSMakeRange(range.location + text.length, 0);
//    self.inputTextView.text = replaceText;
//    self.inputTextView.selectedRange = range;

    //: [self insertAttributedText:text withEmoji:NO];
    [self to:text cell:NO];
}

//: - (void)deleteText:(NSRange)range
- (void)input:(NSRange)range
{
    //: NSString *text = self.contentText;
    NSString *text = self.contentText;
    //: if (range.location + range.length <= [text length]
    if (range.location + range.length <= [text length]
        //: && range.location != NSNotFound && range.length != 0)
        && range.location != NSNotFound && range.length != 0)
    {
        //: NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        NSString *newText = [text stringByReplacingCharactersInRange:range withString:@""];
        //: NSRange newSelectRange = NSMakeRange(range.location, 0);
        NSRange newSelectRange = NSMakeRange(range.location, 0);
        //: [self.inputTextView setText:newText];
        [self.inputTextView setText:newText];
        //: self.inputTextView.selectedRange = newSelectRange;
        self.inputTextView.selectedRange = newSelectRange;
    }
}

//// 2022年08月25日 emoji处理
//: - (void)insertAttributedText:(NSString *)text withEmoji:(BOOL)isEmoji {
- (void)to:(NSString *)text cell:(BOOL)isEmoji {

//    if (text.length > 0) {
//        self.inputTextView.placeholderAttributedText = nil;
//    }
    //: if (text.length > 0) {
    if (text.length > 0) {
        //: self.sendButton.hidden = NO;
        self.sendButton.hidden = NO;
        //: self.inputTextView.placeholderAttributedText = nil;
        self.inputTextView.placeholderAttributedText = nil;
        //: self.albunBtn.hidden = YES;
        self.albunBtn.hidden = YES;
        //: self.voiceButton.hidden = YES;
        self.voiceButton.hidden = YES;
//        self.inputTextView.nim_left = self.spacing*2+28;
//        self.inputTextView.nim_top = self.spacing;
//        
//        self.emoticonBtn.frame = CGRectMake(self.spacing, self.spacing+2, 28, 28);
    //: } else {
    } else {
        //: self.sendButton.hidden = YES;
        self.sendButton.hidden = YES;
        //: self.albunBtn.hidden = NO;
        self.albunBtn.hidden = NO;
        //: self.voiceButton.hidden = NO;
        self.voiceButton.hidden = NO;
//        self.emoticonBtn2.hidden = YES;

//        self.inputTextView.nim_left = self.spacing;
//        self.inputTextView.nim_top = self.spacing;


//        self.emoticonBtn.frame = CGRectMake(SCREEN_WIDTH-10-28, self.spacing+2, 28, 28);
//        self.albunBtn.frame = CGRectMake(SCREEN_WIDTH-10-28-28-10, self.spacing+2, 28, 28);
    }

    //: if (isEmoji) {
    if (isEmoji) {

        //: NSRange range = self.inputTextView.selectedRange;
        NSRange range = self.inputTextView.selectedRange;
        //: self.inputTextView.attributedText = [self nim_setText:text];
        self.inputTextView.attributedText = [self resolution:text];
        //: range = NSMakeRange(range.location + 2, 0);
        range = NSMakeRange(range.location + 2, 0);
        //: self.inputTextView.selectedRange = range;
        self.inputTextView.selectedRange = range;
        //: [self.inputTextView scrollRangeToVisible:self.inputTextView.selectedRange];
        [self.inputTextView roundBy:self.inputTextView.selectedRange];

        //: return;
        return;
    }


    //: NSRange range = self.inputTextView.selectedRange;
    NSRange range = self.inputTextView.selectedRange;
    //: NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    NSString *replaceText = [self.inputTextView.text stringByReplacingCharactersInRange:range withString:text];
    //: range = NSMakeRange(range.location + text.length, 0);
    range = NSMakeRange(range.location + text.length, 0);

    //: NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithString:replaceText];
    //: self.inputTextView.attributedText = attributedStringM;
    self.inputTextView.attributedText = attributedStringM;
    //: self.inputTextView.selectedRange = range;
    self.inputTextView.selectedRange = range;
}

//: - (NSMutableAttributedString *)nim_setText:(NSString *)text
- (NSMutableAttributedString *)resolution:(NSString *)text
{

    //: NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];
    NSMutableAttributedString *attributedStringM = [[NSMutableAttributedString alloc] initWithAttributedString:self.inputTextView.attributedText];

    //: NIMInputEmoticon *emoticon = [[PushInputEmoticonManager sharedManager] emoticonByTag:text];
    TextEmoticon *emoticon = [[DirectorManager statusFor] status:text];
    //: UIImage *image = nil;
    UIImage *image = nil;

    //: if(emoticon.filename &&
    if(emoticon.filename &&
       //: emoticon.filename.length>0 &&
       emoticon.filename.length>0 &&
        //: (image = [UIImage nim_emoticonInKit:emoticon.filename])!= nil) {
        (image = [UIImage info:emoticon.filename])!= nil) {

        //: NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
        //: attachment.image = image;
        attachment.image = image;
        //: CGFloat emojiHeight = _inputTextView.font.lineHeight;
        CGFloat emojiHeight = _inputTextView.font.lineHeight;
        //: attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);
        attachment.bounds = CGRectMake(0, _inputTextView.font.descender, emojiHeight, emojiHeight);

        //: NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
        //: [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        [emojiAtt appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        //: [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        //: [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];
        [emojiAtt yy_setAttachment:attachment range:emojiAtt.yy_rangeOfAll];

        //: [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        //: PushTextHighlight *highlight = [[PushTextHighlight alloc] init];
        NeedTitleHighlight *highlight = [[NeedTitleHighlight alloc] init];
        //: highlight.type = PushTextHighlightTypeEmoji;
        highlight.type = PushTextHighlightTypeEmoji;
        //: highlight.text = emoticon.tag;
        highlight.text = emoticon.tag;

        //: [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        //: attributedStringM.yy_font = _inputTextView.font;
        attributedStringM.yy_font = _inputTextView.font;

    }

    //: else {
    else {

        //: NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        NSMutableAttributedString *emojiAtt = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
        //: [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];
        [emojiAtt yy_setAttribute:NSKernAttributeName value:@(-1)];

        //: [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];
        [attributedStringM insertAttributedString:emojiAtt atIndex:_inputTextView.selectedRange.location];

        //: PushTextHighlight *highlight = [[PushTextHighlight alloc] init];
        NeedTitleHighlight *highlight = [[NeedTitleHighlight alloc] init];
        //: highlight.type = PushTextHighlightTypeEmoji;
        highlight.type = PushTextHighlightTypeEmoji;
        //: highlight.text = emoticon.tag;
        highlight.text = emoticon.tag;

        //: [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        [attributedStringM yy_setTextHighlight:highlight range:NSMakeRange(_inputTextView.selectedRange.location, emojiAtt.length)];
        //: attributedStringM.yy_font = _inputTextView.font;
        attributedStringM.yy_font = _inputTextView.font;
    }

    //: return attributedStringM;
    return attributedStringM;
}

//: @end
@end
