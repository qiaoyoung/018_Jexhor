
#import <Foundation/Foundation.h>

typedef struct {
    Byte liturgics;
    Byte *byMyth;
    unsigned int tit;
	int eatable;
} StructHospitalData;

@interface HospitalData : NSObject

@end

@implementation HospitalData

+ (Byte *)HospitalDataToByte:(StructHospitalData *)data {
    for (int i = 0; i < data->tit; i++) {
        data->byMyth[i] ^= data->liturgics;
    }
    data->byMyth[data->tit] = 0;
	if (data->tit >= 1) {
		data->eatable = data->byMyth[0];
	}
    return data->byMyth;
}

+ (NSString *)StringFromHospitalData:(StructHospitalData *)data {
    return [NSString stringWithUTF8String:(char *)[self HospitalDataToByte:data]];
}

//: #A148FF
+ (NSString *)user_judgmentValue {
    /* static */ NSString *user_judgmentValue = nil;
    if (!user_judgmentValue) {
        StructHospitalData value = (StructHospitalData){154, (Byte []){185, 219, 171, 174, 162, 220, 220, 99}, 7, 153};
        user_judgmentValue = [self StringFromHospitalData:&value];
    }
    return user_judgmentValue;
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
//: #import "FFFKitSwitcherCell.h"
#import "CellItemView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFKitSwitcherCell ()
@interface CellItemView ()

//: @end
@end

//: @implementation FFFKitSwitcherCell
@implementation CellItemView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#A148FF"];
        _switcher.onTintColor = [UIColor ground:[HospitalData user_judgmentValue]];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}


//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)demonstrate:(ConstituentRow *)rowData gray:(UITableView *)tableView{
    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *actionName = rowData.cellActionName;
    NSString *actionName = rowData.cellActionName;
    //: [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    //: [self.switcher removeTarget:self.nim_viewController action:NULL forControlEvents:UIControlEventValueChanged];
    [self.switcher removeTarget:self.styleController action:NULL forControlEvents:UIControlEventValueChanged];
    //: if (actionName.length) {
    if (actionName.length) {
        //: SEL sel = NSSelectorFromString(actionName);
        SEL sel = NSSelectorFromString(actionName);
        //: [self.switcher addTarget:tableView.nim_viewController action:sel forControlEvents:UIControlEventValueChanged];
        [self.switcher addTarget:tableView.styleController action:sel forControlEvents:UIControlEventValueChanged];
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