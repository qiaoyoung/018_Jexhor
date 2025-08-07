
#import <Foundation/Foundation.h>

NSString *StringFromProgressData(Byte *data);        


//: onTapMenuItemCopy:
Byte mForwardStr[] = {5, 18, 42, 4, 69, 68, 42, 55, 70, 35, 59, 68, 75, 31, 74, 59, 67, 25, 69, 70, 79, 16, 156};

//: #EFFDDE
Byte kRocId[] = {66, 7, 23, 11, 211, 175, 87, 179, 151, 41, 152, 12, 46, 47, 47, 45, 45, 46, 82};

//: menu_copy
Byte main_lemonKey[] = {3, 9, 82, 4, 27, 19, 28, 35, 13, 17, 29, 30, 39, 21};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PositionScrollView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTextView.h"
#import "PositionScrollView.h"
//: #import "FFFBubbleMenuView.h"
#import "PushEventView.h"
//: #import "FFFBubbleButtonModel.h"
#import "SessionModel.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "FFFMediaItem.h"
#import "RecordAlbumItem.h"

//: @interface FFFTextView()<UITextViewDelegate, UITextInputDelegate>
@interface PositionScrollView()<UITextViewDelegate, UITextInputDelegate>

//: @end
@end

//: @implementation FFFTextView
@implementation PositionScrollView

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
            [self setTintColor:[UIColor user:StringFromProgressData(kRocId)]];
        //: }else{
        }else{
            //: self.tintColor = [UIColor clearColor];
            self.tintColor = [UIColor clearColor];
        }


        //: [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPress)]];
        [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(emptyCan)]];
    }
    //: return self;
    return self;
}

//: - (void)onLongPress {
- (void)emptyCan {
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
    [[PushEventView viewQuick] valuate:self.selectedAllRangeButtons someMore:cursorStartRectToWindow user:tempRect text:^(RecordAlbumItem *item) {

        //: !_selectBlock ? : _selectBlock(item);
        !_selectBlock ? : _selectBlock(item);

        //: [self hideTextSelection];
        [self message];
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [PushEventView.viewQuick removeFromSuperview];

    //: } praiseBlock:^(NSInteger tag) {
    } optionDoing:^(NSInteger tag) {
        //: !_praiseSelectBlock ? : _praiseSelectBlock(tag);
        !_praiseSelectBlock ? : _praiseSelectBlock(tag);

        //: [self hideTextSelection];
        [self message];
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [PushEventView.viewQuick removeFromSuperview];
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
    [self message];
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [PushEventView.viewQuick removeFromSuperview];
    //: [super touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
}

//: - (void)hideTextSelection {
- (void)message {
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
//        [[PushEventView shareMenuView] removeFromSuperview];
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
//            [[PushEventView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(RecordAlbumItem *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [PushEventView.shareMenuView removeFromSuperview];
//
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [PushEventView.shareMenuView removeFromSuperview];
//            }];
//        } else {
//            
//            [[PushEventView shareMenuView] showViewWithButtonModels:self.selectedPartRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(RecordAlbumItem *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [PushEventView.shareMenuView removeFromSuperview];
//                
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [PushEventView.shareMenuView removeFromSuperview];
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
- (void)chemicalElement:(NIMMessage *)message {

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
        items = [[Secret highlight].config onMessage:message];
    }
    //: else if([self.config respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.config respondsToSelector:@selector(completeMessage:)])
    {
        //: items = [self.config menuItemsWithMessage:message];
        items = [self.config completeMessage:message];
    }
    //: [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(RecordAlbumItem *item, NSUInteger idx, BOOL *stop) {

        //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
        SessionModel *model = [[SessionModel alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

        //: if (item.selctor == @selector(onTapMenuItemCopy:)) {
        if (item.selctor == @selector(telephoneMessage:)) {
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
- (void)indexButton {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];


    //: FFFMediaItem *copy = [FFFMediaItem item:@"onTapMenuItemCopy:"
    RecordAlbumItem *copy = [RecordAlbumItem record:StringFromProgressData(mForwardStr)
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                reloadByCount:[UIImage imageNamed:StringFromProgressData(main_lemonKey)]
                              //: selectedImage:nil
                              team:nil
                                      //: title:[FFFLanguageManager getTextWithKey:@"复制"]];
                                      provider:[BackgroundRandomAttribute content:@"复制"]];


    //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
    SessionModel *model = [[SessionModel alloc] init];
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

Byte * ProgressDataToCache(Byte *data) {
    int cellblock = data[0];
    int polo = data[1];
    Byte conductRoc = data[2];
    int runnerCountp = data[3];
    if (!cellblock) return data + runnerCountp;
    for (int i = runnerCountp; i < runnerCountp + polo; i++) {
        int value = data[i] + conductRoc;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[runnerCountp + polo] = 0;
    return data + runnerCountp;
}

NSString *StringFromProgressData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ProgressDataToCache(data)];
}
