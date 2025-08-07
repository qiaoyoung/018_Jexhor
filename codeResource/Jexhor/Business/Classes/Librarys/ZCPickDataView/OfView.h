// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.h
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: Class object_getClass(id object);
Class borderClass(id object);

//: @protocol HMDatePickerViewDelegate;
@protocol MessageTap;

//: @interface HMDatePickerView : UIView{
@interface OfView : UIView{
    //: UIDatePicker *datePicker;
    UIDatePicker *datePicker;
    //: UIButton *_blackBackgroundButton;
    UIButton *_blackBackgroundButton;

    //: Class delegateClass;
    Class delegateClass;
    //: __unsafe_unretained id<HMDatePickerViewDelegate> _delegate;
    __unsafe_unretained id<MessageTap> _delegate;
}

//: @property (nonatomic,assign) id<HMDatePickerViewDelegate> delegate;
@property (nonatomic,assign) id<MessageTap> delegate;
//: @property (nonatomic,retain) UIDatePicker *datePicker;
@property (nonatomic,retain) UIDatePicker *datePicker;
//: @property (nonatomic,retain) UIButton *blackBackgroundButton;
@property (nonatomic,retain) UIButton *blackBackgroundButton;
//: @property (nonatomic, strong) UILabel *titleL;
@property (nonatomic, strong) UILabel *titleL;
//: @property (nonatomic ,strong) NSString *titleString;
@property (nonatomic ,strong) NSString *titleString;

//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (void)name:(UIView*)view planting:(id<MessageTap>)delegate should:(NSDate*)minDate dueDate:(NSDate*)maxDate bringHome:(NSDate*)showDate;

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (id)solarDay:(id<MessageTap>)delegate sub:(NSDate*)minDate onLine:(NSDate*)maxDate cocktailLounge:(NSDate*)showDate;

//: - (void)setDate:(NSDate*)date;
- (void)setNeedPigeonhole:(NSDate*)date;

//: - (void)show;
- (void)writtenMatter;

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate;
- (void)tillMax:(id<MessageTap>)delegate;

//: @end
@end


//: @protocol HMDatePickerViewDelegate <NSObject>
@protocol MessageTap <NSObject>
//: @optional
@optional

//: - (void)dismissDataPickerView;
- (void)pickerState;
//: - (void)datePick:(HMDatePickerView *)pickView doneWithDate:(NSDate *)date;
- (void)shouldCenter:(OfView *)pickView titleDevice:(NSDate *)date;

//: @end
@end