
#import <Foundation/Foundation.h>

@interface VersionData : NSObject

@end

@implementation VersionData

+ (Byte *)VersionDataToCache:(Byte *)data {
    int matComment = data[0];
    int feedbackCircuit = data[1];
    for (int i = 0; i < matComment / 2; i++) {
        int begin = feedbackCircuit + i;
        int end = feedbackCircuit + matComment - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[feedbackCircuit + matComment] = 0;
    return data + feedbackCircuit;
}

+ (NSString *)StringFromVersionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VersionDataToCache:data]];
}  

//: menu_copy
+ (NSString *)app_middleComfortData {
    /* static */ NSString *app_middleComfortData = nil;
    if (!app_middleComfortData) {
        Byte value[] = {9, 2, 121, 112, 111, 99, 95, 117, 110, 101, 109, 245};
        app_middleComfortData = [self StringFromVersionData:value];
    }
    return app_middleComfortData;
}

//: #EFFDDE
+ (NSString *)userSliceTingTitle {
    /* static */ NSString *userSliceTingTitle = nil;
    if (!userSliceTingTitle) {
        Byte value[] = {7, 12, 243, 233, 3, 126, 213, 71, 132, 94, 206, 187, 69, 68, 68, 70, 70, 69, 35, 67};
        userSliceTingTitle = [self StringFromVersionData:value];
    }
    return userSliceTingTitle;
}

//: onTapMenuItemCopy:
+ (NSString *)notiResultMaxName {
    /* static */ NSString *notiResultMaxName = nil;
    if (!notiResultMaxName) {
        Byte value[] = {18, 8, 74, 244, 221, 137, 97, 56, 58, 121, 112, 111, 67, 109, 101, 116, 73, 117, 110, 101, 77, 112, 97, 84, 110, 111, 241};
        notiResultMaxName = [self StringFromVersionData:value];
    }
    return notiResultMaxName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShowScrollView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTextView.h"
#import "ShowScrollView.h"
//: #import "FFFBubbleMenuView.h"
#import "ValueWithView.h"
//: #import "FFFBubbleButtonModel.h"
#import "GlobuleSession.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "FFFMediaItem.h"
#import "AccountAction.h"

//: @interface FFFTextView()<UITextViewDelegate, UITextInputDelegate>
@interface ShowScrollView()<UITextViewDelegate, UITextInputDelegate>

//: @end
@end

//: @implementation FFFTextView
@implementation ShowScrollView

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        self.tintColor = RGB_COLOR_String(@"#EFFDDE");
        //: self.font = [UIFont systemFontOfSize:15];
        self.font = [UIFont systemFontOfSize:15];
        //: self.layer.cornerRadius = 5;
        self.layer.cornerRadius = 5;
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;
        //: self.editable = YES;
        self.editable = YES;
        //: self.delegate = self;
        self.delegate = self;
        //: self.inputDelegate = self;
        self.inputDelegate = self;
        //: self.selectable = NO;
        self.selectable = NO;

        //: if (@available(iOS 17.0, *)) {
        if (@available(iOS 17.0, *)) {
            //: [self setTintColor:[UIColor colorWithHexString:@"#EFFDDE"]];
            [self setTintColor:[UIColor ground:[VersionData userSliceTingTitle]]];
        //: }else{
        }else{
            //: self.tintColor = [UIColor clearColor];
            self.tintColor = [UIColor clearColor];
        }


        //: [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPress)]];
        [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(alongFrameStrike)]];
    }
    //: return self;
    return self;
}

//: - (void)onLongPress {
- (void)alongFrameStrike {
//    [self performSelector:@selector(selectAll:) withObject:nil afterDelay:0.0];

    //: CGRect startRect = [self caretRectForPosition:[self selectedTextRange].start];
    CGRect startRect = [self caretRectForPosition:[self selectedTextRange].start];
    //: CGRect endRect = [self caretRectForPosition:[self selectedTextRange].end];
    CGRect endRect = [self caretRectForPosition:[self selectedTextRange].end];

    //: CGRect resultRect = CGRectZero;
    CGRect resultRect = CGRectZero;
    //: if (startRect.origin.y == endRect.origin.y) {
    if (startRect.origin.y == endRect.origin.y) {
        //: resultRect.origin.x = startRect.origin.x;
        resultRect.origin.x = startRect.origin.x;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        //: resultRect.size.height = startRect.size.height;
        resultRect.size.height = startRect.size.height;
    //: } else {
    } else {
        //: resultRect.origin.x = 0;
        resultRect.origin.x = 0;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = self.frame.size.width;
        resultRect.size.width = self.frame.size.width;
        //: resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
        resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
    }

    //: CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    //: CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];

    //: [[FFFBubbleMenuView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(FFFMediaItem *item) {
    [[ValueWithView success] sieve:self.selectedAllRangeButtons from:cursorStartRectToWindow stride:tempRect message:^(AccountAction *item) {

        //: !_selectBlock ? : _selectBlock(item);
        !_selectBlock ? : _selectBlock(item);

        //: [self hideTextSelection];
        [self restoreExamineion];
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [ValueWithView.success removeFromSuperview];

    //: } praiseBlock:^(NSInteger tag) {
    } show:^(NSInteger tag) {
        //: !_praiseSelectBlock ? : _praiseSelectBlock(tag);
        !_praiseSelectBlock ? : _praiseSelectBlock(tag);

        //: [self hideTextSelection];
        [self restoreExamineion];
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [ValueWithView.success removeFromSuperview];
    //: }];
    }];

}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    //: return NO;
    return NO;
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self hideTextSelection];
    [self restoreExamineion];
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [ValueWithView.success removeFromSuperview];
    //: [super touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
}

//: - (void)hideTextSelection {
- (void)restoreExamineion {
    //: [self setSelectedRange:NSMakeRange(0, 0)];
    [self setSelectedRange:NSMakeRange(0, 0)];//去掉选择的效果。
}

//: #pragma mark delegate
#pragma mark delegate
//: -(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"]) {
    if ([text isEqualToString:@"\n"]) {
        //: [textView resignFirstResponder];
        [textView resignFirstResponder];
//        [self.view endEditing:true];
        //: return NO;
        return NO;
    }

    //: return true;
    return true;
}

//: - (void)selectionWillChange:(id<UITextInput>)textInput {
- (void)selectionWillChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _start_ 变化。。。隐藏");
}

//: - (void)selectionDidChange:(id<UITextInput>)textInput {
- (void)selectionDidChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _end_ 变化。。。显示");
}

//: - (void)textWillChange:(nullable id <UITextInput>)textInput {
- (void)textWillChange:(nullable id <UITextInput>)textInput {

}

//: - (void)textDidChange:(nullable id <UITextInput>)textInput {
- (void)textDidChange:(nullable id <UITextInput>)textInput {

}

//: - (void)textViewDidChangeSelection:(UITextView *)textView {
- (void)textViewDidChangeSelection:(UITextView *)textView {
    //: NSLog(@"光标位置%ld——%ld",textView.selectedRange.location,textView.selectedRange.length);

//    if (textView.selectedRange.length <= 0) {
//        //隐藏
//        [[ValueWithView shareMenuView] removeFromSuperview];
//        return;
//    }
//    
//    CGRect startRect = [textView caretRectForPosition:[textView selectedTextRange].start];
//    CGRect endRect = [textView caretRectForPosition:[textView selectedTextRange].end];
////    NSLog(@"__👂👂👂👂%.1f,%.1f,%.1f,%.1f",startRect.origin.x, startRect.origin.y, startRect.size.width, startRect.size.height);
////    NSLog(@"__👂👂👂👂%.1f,%.1f,%.1f,%.1f",endRect.origin.x, endRect.origin.y, endRect.size.width, endRect.size.height);
//    
//    CGRect resultRect = CGRectZero;
//    if (startRect.origin.y == endRect.origin.y) {
//        resultRect.origin.x = startRect.origin.x;
//        resultRect.origin.y = startRect.origin.y;
//        resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
//        resultRect.size.height = startRect.size.height;
//    } else {
//        resultRect.origin.x = 0;
//        resultRect.origin.y = startRect.origin.y;
//        resultRect.size.width = textView.frame.size.width;
//        resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
//    }
//    
////    _selectedTopView.frame = resultRect;
//    
//    CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
//    CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
//        
//    if (textView.selectedRange.length > 0) {
//        //全部选中的时候内容显示的不一样。
//        if (textView.selectedRange.length == textView.text.length) {
//            
//            [[ValueWithView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(AccountAction *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [ValueWithView.shareMenuView removeFromSuperview];
//
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [ValueWithView.shareMenuView removeFromSuperview];
//            }];
//        } else {
//            
//            [[ValueWithView shareMenuView] showViewWithButtonModels:self.selectedPartRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(AccountAction *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [ValueWithView.shareMenuView removeFromSuperview];
//                
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [ValueWithView.shareMenuView removeFromSuperview];
//            }];
//        }
//    }
}

//: - (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    //: return YES;
    return YES;
}

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message {
- (void)send:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.config)
    if (!self.config)
    {
        //: items = [[MyUserKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[MessageContent secretResolution].config moreWith:message];
    }
    //: else if([self.config respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.config respondsToSelector:@selector(showing:)])
    {
        //: items = [self.config menuItemsWithMessage:message];
        items = [self.config showing:message];
    }
    //: [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(AccountAction *item, NSUInteger idx, BOOL *stop) {

        //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
        GlobuleSession *model = [[GlobuleSession alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

        //: if (item.selctor == @selector(onTapMenuItemCopy:)) {
        if (item.selctor == @selector(compartments:)) {
            //: [selectedPartRangeButtons addObject:model];
            [selectedPartRangeButtons addObject:model];
        }
    //: }];
    }];

    //: self.selectedAllRangeButtons = selectedAllRangeButtons;
    self.selectedAllRangeButtons = selectedAllRangeButtons;
    //: self.selectedPartRangeButtons = selectedPartRangeButtons;
    self.selectedPartRangeButtons = selectedPartRangeButtons;

}


//: - (void)new_genMediaButton {
- (void)fixing {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];


    //: FFFMediaItem *copy = [FFFMediaItem item:@"onTapMenuItemCopy:"
    AccountAction *copy = [AccountAction showName:[VersionData notiResultMaxName]
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                with:[UIImage imageNamed:[VersionData app_middleComfortData]]
                              //: selectedImage:nil
                              data:nil
                                      //: title:[FFFLanguageManager getTextWithKey:@"复制"]];
                                      fit:[InputRed preserve:@"复制"]];


    //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
    GlobuleSession *model = [[GlobuleSession alloc] init];
    //: model.normalImage = copy.normalImage;
    model.normalImage = copy.normalImage;
    //: model.name = copy.title;
    model.name = copy.title;
    //: model.item = copy;
    model.item = copy;

    //: [selectedAllRangeButtons addObject:model];
    [selectedAllRangeButtons addObject:model];
    //: [selectedPartRangeButtons addObject:model];
    [selectedPartRangeButtons addObject:model];

    //: self.selectedAllRangeButtons = selectedAllRangeButtons;
    self.selectedAllRangeButtons = selectedAllRangeButtons;
    //: self.selectedPartRangeButtons = selectedPartRangeButtons;
    self.selectedPartRangeButtons = selectedPartRangeButtons;

}


//: @end
@end