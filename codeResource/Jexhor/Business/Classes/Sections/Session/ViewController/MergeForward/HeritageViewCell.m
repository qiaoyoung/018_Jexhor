
#import <Foundation/Foundation.h>

typedef struct {
    Byte statProved;
    Byte *iconButton;
    unsigned int legally;
	int skyTreaty;
	int displayLegislature;
} StructPositionData;

@interface PositionData : NSObject

@end

@implementation PositionData

+ (Byte *)PositionDataToByte:(StructPositionData *)data {
    for (int i = 0; i < data->legally; i++) {
        data->iconButton[i] ^= data->statProved;
    }
    data->iconButton[data->legally] = 0;
	if (data->legally >= 2) {
		data->skyTreaty = data->iconButton[0];
		data->displayLegislature = data->iconButton[1];
	}
    return data->iconButton;
}

+ (NSString *)StringFromPositionData:(StructPositionData *)data {
    return [NSString stringWithUTF8String:(char *)[self PositionDataToByte:data]];
}

//: yyyy-MM-dd
+ (NSString *)k_allyPath {
    /* static */ NSString *k_allyPath = nil;
    if (!k_allyPath) {
        StructPositionData value = (StructPositionData){191, (Byte []){198, 198, 198, 198, 146, 242, 242, 146, 219, 219, 14}, 10, 17, 221};
        k_allyPath = [self StringFromPositionData:&value];
    }
    return k_allyPath;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  HeritageViewCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimestampCell.h"
#import "HeritageViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "PushTimestampModel.h"
#import "PushSharedNeed.h"

//: @interface NTESTimestampCell ()
@interface HeritageViewCell ()

//: @property (nonatomic, strong) UIView *lineLeft;
@property (nonatomic, strong) UIView *lineLeft;
//: @property (nonatomic, strong) UIView *lineRight;
@property (nonatomic, strong) UIView *lineRight;

//: @end
@end

//: @implementation NTESTimestampCell
@implementation HeritageViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.timeBGView removeFromSuperview];
        [self.timeBGView removeFromSuperview];
        //: self.timeLabel.textColor = [MyUserKit sharedKit].config.nickColor;
        self.timeLabel.textColor = [Secret highlight].config.nickColor;
        //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
        self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
        //: [self.contentView addSubview:self.lineLeft];
        [self.contentView addSubview:self.lineLeft];
        //: [self.contentView addSubview:self.lineRight];
        [self.contentView addSubview:self.lineRight];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 8.0;
    CGFloat padding = 8.0;
    //: self.timeLabel.centerY = self.height/2;
    self.timeLabel.centerY = self.height/2;
    //: _lineLeft.frame = CGRectMake(padding, 0.0, self.timeLabel.left - padding*2, 1.0);
    _lineLeft.frame = CGRectMake(padding, 0.0, self.timeLabel.left - padding*2, 1.0);
    //: _lineLeft.centerY = self.timeLabel.centerY;
    _lineLeft.centerY = self.timeLabel.centerY;
    //: _lineRight.frame = CGRectMake(self.timeLabel.right + padding, 0, self.width - self.timeLabel.right - 2*padding, 1.0);
    _lineRight.frame = CGRectMake(self.timeLabel.right + padding, 0, self.width - self.timeLabel.right - 2*padding, 1.0);
    //: _lineRight.centerY = self.timeLabel.centerY;
    _lineRight.centerY = self.timeLabel.centerY;
}

//: - (void)refreshData:(PushTimestampModel *)data {
- (void)transitionData:(PushSharedNeed *)data {
    //: if ([data isKindOfClass:[PushTimestampModel class]]) {
    if ([data isKindOfClass:[PushSharedNeed class]]) {
        //: self.timeLabel.text = [self timeFormatString:data.messageTime];
        self.timeLabel.text = [self lab:data.messageTime];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)timestamp {
- (NSString *)lab:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"yyyy-MM-dd"];
    [formatter setDateFormat:[PositionData k_allyPath]];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UIView *)lineLeft {
- (UIView *)lineLeft {
    //: if (!_lineLeft) {
    if (!_lineLeft) {
        //: _lineLeft = [self setupLine];
        _lineLeft = [self line];
    }
    //: return _lineLeft;
    return _lineLeft;
}

//: - (UIView *)lineRight {
- (UIView *)lineRight {
    //: if (!_lineRight) {
    if (!_lineRight) {
        //: _lineRight = [self setupLine];
        _lineRight = [self line];
    }
    //: return _lineRight;
    return _lineRight;
}

//: - (UIView *)setupLine {
- (UIView *)line {
    //: UIView *ret = [[UIView alloc] init];
    UIView *ret = [[UIView alloc] init];
    //: ret.backgroundColor = [UIColor systemGroupedBackgroundColor];
    ret.backgroundColor = [UIColor systemGroupedBackgroundColor];
    //: return ret;
    return ret;
}

//: @end
@end
