
#import <Foundation/Foundation.h>

@interface TaiData : NSObject

+ (instancetype)sharedInstance;

//: icon_cell_blue_normal
@property (nonatomic, copy) NSString *main_contributeText;

//: #A148FF
@property (nonatomic, copy) NSString *notiPdaTitle;

//: icon_cell_red_normal
@property (nonatomic, copy) NSString *userExistingValue;

@end

@implementation TaiData

+ (instancetype)sharedInstance {
    static TaiData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TaiDataToCache:(Byte *)data {
    int buttonRetch = data[0];
    Byte unitPossession = data[1];
    int targetOccupy = data[2];
    for (int i = targetOccupy; i < targetOccupy + buttonRetch; i++) {
        int value = data[i] + unitPossession;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[targetOccupy + buttonRetch] = 0;
    return data + targetOccupy;
}

- (NSString *)StringFromTaiData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TaiDataToCache:data]];
}

//: #A148FF
- (NSString *)notiPdaTitle {
    if (!_notiPdaTitle) {
        Byte value[] = {7, 1, 3, 34, 64, 48, 51, 55, 69, 69, 223};
        _notiPdaTitle = [self StringFromTaiData:value];
    }
    return _notiPdaTitle;
}

//: icon_cell_blue_normal
- (NSString *)main_contributeText {
    if (!_main_contributeText) {
        Byte value[] = {21, 26, 5, 127, 193, 79, 73, 85, 84, 69, 73, 75, 82, 82, 69, 72, 82, 91, 75, 69, 84, 85, 88, 83, 71, 82, 14};
        _main_contributeText = [self StringFromTaiData:value];
    }
    return _main_contributeText;
}

//: icon_cell_red_normal
- (NSString *)userExistingValue {
    if (!_userExistingValue) {
        Byte value[] = {20, 11, 13, 128, 50, 226, 157, 6, 121, 134, 94, 74, 129, 94, 88, 100, 99, 84, 88, 90, 97, 97, 84, 103, 90, 89, 84, 99, 100, 103, 98, 86, 97, 252};
        _userExistingValue = [self StringFromTaiData:value];
    }
    return _userExistingValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithInfoView.m
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkKitColorButtonCell.h"
#import "WithInfoView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WorkCommonTableData.h"
#import "WorkCommonTableData.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"

//: @interface WorkKitColorButtonCell()
@interface WithInfoView()

//: @property (nonatomic,strong) NIMCommonTableRow *rowData;
@property (nonatomic,strong) ConstituentRow *rowData;

//: @end
@end

//: @implementation WorkKitColorButtonCell
@implementation WithInfoView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: _button = [[NIMKitColorButton alloc] initWithFrame:CGRectZero];
        _button = [[KitDisplayFastenerButton alloc] initWithFrame:CGRectZero];
        //: _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        _button.nim_size = [_button sizeThatFits:CGSizeMake(self.nim_width, 1.7976931348623157e+308)];
        //: _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _button.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: [self.contentView addSubview:_button];
        [self.contentView addSubview:_button];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)demonstrate:(ConstituentRow *)rowData gray:(UITableView *)tableView{
    //: self.rowData = rowData;
    self.rowData = rowData;
    //: [self.button setTitle:rowData.title forState:UIControlStateNormal];
    [self.button setTitle:rowData.title forState:UIControlStateNormal];
    //: WorkKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    WorkKitColorButtonCellStyle style = [rowData.extraInfo integerValue];
    //: self.button.style = style;
    self.button.style = style;
    //: [self.button removeTarget:tableView.nim_viewController action:NULL forControlEvents:UIControlEventTouchUpInside];
    [self.button removeTarget:tableView.styleController action:NULL forControlEvents:UIControlEventTouchUpInside];
    //: if (rowData.cellActionName.length) {
    if (rowData.cellActionName.length) {
        //: SEL action = NSSelectorFromString(rowData.cellActionName);
        SEL action = NSSelectorFromString(rowData.cellActionName);
        //: [_button addTarget:tableView.nim_viewController action:action forControlEvents:UIControlEventTouchUpInside];
        [_button addTarget:tableView.styleController action:action forControlEvents:UIControlEventTouchUpInside];
    }
}

//: - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: CGRect buttonRect = self.button.frame;
    CGRect buttonRect = self.button.frame;
    //: if(CGRectContainsPoint(buttonRect, point)){
    if(CGRectContainsPoint(buttonRect, point)){
        //: return self;
        return self;
    }
    //: return [super hitTest:point withEvent:event];
    return [super hitTest:point withEvent:event];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _button.nim_centerX = self.nim_width * .5f;
    _button.nim_centerX = self.nim_width * .5f;
    //: _button.nim_centerY = self.nim_height * .5f;
    _button.nim_centerY = self.nim_height * .5f;
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    //: [_button setSelected:selected];
    [_button setSelected:selected];
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [_button setHighlighted:highlighted];
    [_button setHighlighted:highlighted];
}

//: @end
@end


//: @implementation NIMKitColorButton : UIButton
@implementation KitDisplayFastenerButton : UIButton

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self reset];
        [self bubble];
    }
    //: return self;
    return self;
}

//: - (void)setStyle:(WorkKitColorButtonCellStyle)style{
- (void)setStyle:(WorkKitColorButtonCellStyle)style{
    //: _style = style;
    _style = style;
    //: [self reset];
    [self bubble];
}

//: - (void)reset{
- (void)bubble{
    //: NSString *imageNormalName = @"";
    NSString *imageNormalName = @"";
    //: switch (self.style) {
    switch (self.style) {
        //: case WorkKitColorButtonCellStyleRed:{
        case WorkKitColorButtonCellStyleRed:{
            //: imageNormalName = @"icon_cell_red_normal";
            imageNormalName = [TaiData sharedInstance].userExistingValue;
            //: UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage imageNamed:imageNormalName] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: case WorkKitColorButtonCellStyleBlue:
        case WorkKitColorButtonCellStyleBlue:
        {
            //: imageNormalName = @"icon_cell_blue_normal";
            imageNormalName = [TaiData sharedInstance].main_contributeText;
            //: UIImage *imageNormal = [[UIImage grayImageWithName:imageNormalName color:[UIColor colorWithHexString:@"#A148FF"]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            UIImage *imageNormal = [[UIImage interval:imageNormalName image:[UIColor ground:[TaiData sharedInstance].notiPdaTitle]] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10) resizingMode:UIImageResizingModeStretch];
            //: [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
            [self setBackgroundImage:imageNormal forState:UIControlStateNormal];
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(size.width - 20, 45);
    return CGSizeMake(size.width - 20, 45);
}

//: @end
@end
