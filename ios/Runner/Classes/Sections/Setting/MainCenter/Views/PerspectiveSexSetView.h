// __DEBUG__
// __CLOSE_PRINT__
//
//  PerspectiveSexSetView.h
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN


//: typedef void(^SpeiceSexBackBlock) (NSInteger selectedGender);
typedef void(^SpeiceSexBackBlock) (NSInteger selectedGender);

//: @interface NSSetSexView : UIView
@interface PerspectiveSexSetView : UIView

//: @property (nonatomic, copy) SpeiceSexBackBlock speiceBackBlock;
@property (nonatomic, copy) SpeiceSexBackBlock speiceBackBlock;

//: - (void)reloadWithGender:(NSInteger)gender;
- (void)gender:(NSInteger)gender;

//: - (void)animationShow;
- (void)with;
//: - (void)animationClose;
- (void)animationWithEnableAtHand;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END