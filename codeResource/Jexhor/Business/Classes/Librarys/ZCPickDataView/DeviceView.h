// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceView.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMDataPickerDelegate ;
@protocol ShowDelegate ;

//: @interface HMDataPicker : UIView{
@interface DeviceView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithPathNode:(id<ShowDelegate>)delegate dataNode:(NSDictionary *)dataDict dict:(NSDictionary *)selectedDict message_strong:(NSString *)jsonNode;

//: - (void)show;
- (void)beyondDeleteMore;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol ShowDelegate <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)display:(DeviceView *)dataPicker cancelTab:(NSDictionary *)selectedDict;

//: @end
@end