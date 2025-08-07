
#import <Foundation/Foundation.h>

@interface CookyJarData : NSObject

@end

@implementation CookyJarData

+ (Byte *)CookyJarDataToCache:(Byte *)data {
    int allotWoo = data[0];
    int equalSpeculate = data[1];
    for (int i = 0; i < allotWoo / 2; i++) {
        int begin = equalSpeculate + i;
        int end = equalSpeculate + allotWoo - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[equalSpeculate + allotWoo] = 0;
    return data + equalSpeculate;
}

+ (NSString *)StringFromCookyJarData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CookyJarDataToCache:data]];
}  

//: icon_accessory_selected
+ (NSString *)show_hmmViewName {
    /* static */ NSString *show_hmmViewName = nil;
    if (!show_hmmViewName) {
        Byte value[] = {23, 8, 21, 149, 123, 101, 108, 160, 100, 101, 116, 99, 101, 108, 101, 115, 95, 121, 114, 111, 115, 115, 101, 99, 99, 97, 95, 110, 111, 99, 105, 130};
        show_hmmViewName = [self StringFromCookyJarData:value];
    }
    return show_hmmViewName;
}

//: _UITableViewCellSeparatorView
+ (NSString *)appSaleIdent {
    /* static */ NSString *appSaleIdent = nil;
    if (!appSaleIdent) {
        Byte value[] = {29, 12, 155, 157, 195, 226, 15, 26, 46, 224, 26, 39, 119, 101, 105, 86, 114, 111, 116, 97, 114, 97, 112, 101, 83, 108, 108, 101, 67, 119, 101, 105, 86, 101, 108, 98, 97, 84, 73, 85, 95, 74};
        appSaleIdent = [self StringFromCookyJarData:value];
    }
    return appSaleIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolHorseCartView.m
//  NIM
//
//  Created by Yan Wang on 2024/8/9.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushTeamCartSetTableViewCell.h"
#import "ToolHorseCartView.h"

//: @implementation PushTeamCartSetTableViewCell
@implementation ToolHorseCartView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.layer.cornerRadius = 8;
        self.layer.cornerRadius = 8;
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

//        self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        self.layer.cornerRadius = 8;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initMajority];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)pressed:(UITableView *)tableView
{
    //: static NSString *identifier = @"PushTeamCartSetTableViewCell";
    static NSString *identifier = @"ToolHorseCartView";
    //: PushTeamCartSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    ToolHorseCartView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[PushTeamCartSetTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[ToolHorseCartView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initMajority {
    //: [self.contentView addSubview:self.iconImageView];
    [self.contentView addSubview:self.iconImageView];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];
    //: [self.contentView addSubview:self.arrowsImageView];
    [self.contentView addSubview:self.arrowsImageView];


    //: self.iconImageView.frame = CGRectMake(15, 14, 28, 28);
    self.iconImageView.frame = CGRectMake(15, 14, 28, 28);
    //: self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-20, 18, 20, 20);
    self.arrowsImageView.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-20, 18, 20, 20);
    //: self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 250, 21);
    self.titleLabel.frame = CGRectMake(self.iconImageView.right+16, 0, 250, 21);

    //: self.titleLabel.centerY = self.arrowsImageView.centerY = self.iconImageView.centerY;
    self.titleLabel.centerY = self.arrowsImageView.centerY = self.iconImageView.centerY;

}


//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)present:(NSDictionary *)information {
    //: return 56.f;
    return 56.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([CookyJarData appSaleIdent]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UIImageView *)arrowsImageView {
- (UIImageView *)arrowsImageView {
    //: if (!_arrowsImageView) {
    if (!_arrowsImageView) {
        //: _arrowsImageView = [[UIImageView alloc] init];
        _arrowsImageView = [[UIImageView alloc] init];
        //: _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        _arrowsImageView.contentMode = UIViewContentModeScaleToFill;
        //: _arrowsImageView.image = [UIImage imageNamed:@"icon_accessory_selected"];
        _arrowsImageView.image = [UIImage imageNamed:[CookyJarData show_hmmViewName]];
        //: _arrowsImageView.hidden = YES;
        _arrowsImageView.hidden = YES;
    }
    //: return _arrowsImageView;
    return _arrowsImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14.f];
        _titleLabel.font = [UIFont systemFontOfSize:14.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}





//: @end
@end
