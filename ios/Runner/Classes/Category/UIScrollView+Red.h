// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+Red.h
//  NIM
//
//  Created by chris on 16/1/24.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef enum NTESScrollViewDirection {
typedef enum NTESScrollViewDirection {
    //: NTESScrollViewDirectionNone,
    NTESScrollViewDirectionNone,
    //: NTESScrollViewDirectionRight,
    NTESScrollViewDirectionRight,
    //: NTESScrollViewDirectionLeft,
    NTESScrollViewDirectionLeft,
    //: NTESScrollViewDirectionUp,
    NTESScrollViewDirectionUp,
    //: NTESScrollViewDirectionDown,
    NTESScrollViewDirectionDown,
//: } NTESScrollViewDirection;
} NTESScrollViewDirection;


//: @interface UIScrollView (Direction)
@interface UIScrollView (FrameTeam)

//: - (void)startObservingDirection;
- (void)purl;
//: - (void)stopObservingDirection;
- (void)visualImage;

//: @property (readonly, nonatomic) NTESScrollViewDirection horizontalScrollingDirection;
@property (readonly, nonatomic) NTESScrollViewDirection horizontalScrollingDirection;
//: @property (readonly, nonatomic) NTESScrollViewDirection verticalScrollingDirection;
@property (readonly, nonatomic) NTESScrollViewDirection verticalScrollingDirection;

//: @end
@end