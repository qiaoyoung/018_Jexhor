
#import <Foundation/Foundation.h>

typedef struct {
    Byte tut;
    Byte *shooRecommendRum;
    unsigned int wheelchair;
} StructBlueishData;

@interface BlueishData : NSObject

@end

@implementation BlueishData

+ (Byte *)BlueishDataToByte:(StructBlueishData *)data {
    for (int i = 0; i < data->wheelchair; i++) {
        data->shooRecommendRum[i] ^= data->tut;
    }
    data->shooRecommendRum[data->wheelchair] = 0;
    return data->shooRecommendRum;
}

+ (NSString *)StringFromBlueishData:(StructBlueishData *)data {
    return [NSString stringWithUTF8String:(char *)[self BlueishDataToByte:data]];
}

//: #A148FF
+ (NSString *)show_deployUrl {
    /* static */ NSString *show_deployUrl = nil;
    if (!show_deployUrl) {
        StructBlueishData value = (StructBlueishData){201, (Byte []){234, 136, 248, 253, 241, 143, 143, 92}, 7};
        show_deployUrl = [self StringFromBlueishData:&value];
    }
    return show_deployUrl;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSettingPushNotifySwitcherCell.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushKitSwitcherCell.h"
#import "WorkInView.h"
//: #import "PushCommonTableData.h"
#import "PushCommonTableData.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface PushKitSwitcherCell ()
@interface WorkInView ()

//: @end
@end

//: @implementation PushKitSwitcherCell
@implementation WorkInView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#A148FF"];
        _switcher.onTintColor = [UIColor user:[BlueishData show_deployUrl]];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}


//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)receive:(DeviceRow *)rowData extra:(UITableView *)tableView{
    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *actionName = rowData.cellActionName;
    NSString *actionName = rowData.cellActionName;
    //: [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    //: [self.switcher removeTarget:self.nim_viewController action:NULL forControlEvents:UIControlEventValueChanged];
    [self.switcher removeTarget:self.remote action:NULL forControlEvents:UIControlEventValueChanged];
    //: if (actionName.length) {
    if (actionName.length) {
        //: SEL sel = NSSelectorFromString(actionName);
        SEL sel = NSSelectorFromString(actionName);
        //: [self.switcher addTarget:tableView.nim_viewController action:sel forControlEvents:UIControlEventValueChanged];
        [self.switcher addTarget:tableView.remote action:sel forControlEvents:UIControlEventValueChanged];
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.switcher.nim_right = self.nim_width - 15;
    self.switcher.nim_right = self.nim_width - 15;
    //: self.switcher.nim_centerY = self.nim_height * .5f;
    self.switcher.nim_centerY = self.nim_height * .5f;
}

//: @end
@end
