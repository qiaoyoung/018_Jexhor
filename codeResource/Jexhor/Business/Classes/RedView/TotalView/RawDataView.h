// __DEBUG__
// __CLOSE_PRINT__
//
//  RawDataView.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMDataPickerDelegate ;
@protocol RecordFactorOff ;

//: @interface HMDataPicker : UIView{
@interface RawDataView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithSize:(id<RecordFactorOff>)delegate secret:(NSDictionary *)dataDict reply:(NSDictionary *)selectedDict team:(NSString *)jsonNode;

//: - (void)show;
- (void)selected;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol RecordFactorOff <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)message:(RawDataView *)dataPicker fastener:(NSDictionary *)selectedDict;

//: @end
@end