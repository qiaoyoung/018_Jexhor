
#import <Foundation/Foundation.h>

@interface StatHeroData : NSObject

@end

@implementation StatHeroData

+ (Byte *)StatHeroDataToCache:(Byte *)data {
    int highSocietyTemperature = data[0];
    int cellStorage = data[1];
    for (int i = 0; i < highSocietyTemperature / 2; i++) {
        int begin = cellStorage + i;
        int end = cellStorage + highSocietyTemperature - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[cellStorage + highSocietyTemperature] = 0;
    return data + cellStorage;
}

+ (NSString *)StringFromStatHeroData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StatHeroDataToCache:data]];
}  

//: HH:mm
+ (NSString *)mPressedPath {
    /* static */ NSString *mPressedPath = nil;
    if (!mPressedPath) {
        Byte value[] = {5, 6, 77, 156, 2, 117, 109, 109, 58, 72, 72, 201};
        mPressedPath = [self StringFromStatHeroData:value];
    }
    return mPressedPath;
}

//: 00:00
+ (NSString *)dream_ourSnapFormat {
    /* static */ NSString *dream_ourSnapFormat = nil;
    if (!dream_ourSnapFormat) {
        Byte value[] = {5, 12, 56, 25, 36, 157, 150, 65, 199, 188, 217, 175, 48, 48, 58, 48, 48, 239};
        dream_ourSnapFormat = [self StringFromStatHeroData:value];
    }
    return dream_ourSnapFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  OfImportMessageCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageCell.h"
#import "OfImportMessageCell.h"
//: #import "PushBadgeView.h"
#import "AccumulationCellView.h"
//: #import "PushSessionTextContentView.h"
#import "CellTempView.h"
//: #import "PushAvatarImageView.h"
#import "ImageView.h"
//: #import "M80AttributedLabel.h"
#import "InsertView.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "NTESMessageModel.h"
#import "TapMessageModel.h"

//: @interface NTESMergeMessageCell ()
@interface OfImportMessageCell ()

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *timeLab;
@property (nonatomic, strong) UILabel *timeLab;

//: @end
@end

//: @implementation NTESMergeMessageCell
@implementation OfImportMessageCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.traningActivityIndicator removeFromSuperview];
        [self.traningActivityIndicator removeFromSuperview];
        //: [self.retryButton removeFromSuperview];
        [self.retryButton removeFromSuperview];
        //: [self.audioPlayedIcon removeFromSuperview];
        [self.audioPlayedIcon removeFromSuperview];
        //: [self.readButton removeFromSuperview];
        [self.readButton removeFromSuperview];
        //: [self.selectButton removeFromSuperview];
        [self.selectButton removeFromSuperview];
        //: [self.selectButtonMask removeFromSuperview];
        [self.selectButtonMask removeFromSuperview];
        //: [self.contentView addSubview:self.timeLab];
        [self.contentView addSubview:self.timeLab];
        //: [self.contentView addSubview:self.line];
        [self.contentView addSubview:self.line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInset = self.model.contentViewInsets;
    UIEdgeInsets contentInset = self.model.contentViewInsets;
    //: self.headImageView.origin = CGPointMake(16.0, 16.0);
    self.headImageView.origin = CGPointMake(16.0, 16.0);
    //: self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    //: self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    //: _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    //: _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
    _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
        _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
    }
    //: return _line;
    return _line;
}
//: - (UILabel *)timeLab {
- (UILabel *)timeLab {
    //: if (!_timeLab) {
    if (!_timeLab) {
        //: _timeLab = [[UILabel alloc] init];
        _timeLab = [[UILabel alloc] init];
        //: _timeLab.backgroundColor = [UIColor clearColor];
        _timeLab.backgroundColor = [UIColor clearColor];
        //: _timeLab.opaque = YES;
        _timeLab.opaque = YES;
        //: _timeLab.font = [MyUserKit sharedKit].config.nickFont;
        _timeLab.font = [Secret highlight].config.nickFont;
        //: _timeLab.textColor = [MyUserKit sharedKit].config.nickColor;
        _timeLab.textColor = [Secret highlight].config.nickColor;
        //: _timeLab.text = @"00:00";
        _timeLab.text = [StatHeroData dream_ourSnapFormat];
        //: [_timeLab sizeToFit];
        [_timeLab sizeToFit];
        //: _timeLab.width += 8.0;
        _timeLab.width += 8.0;
    }
    //: return _timeLab;
    return _timeLab;
}

//: - (void)refreshData:(PushMessageModel *)data {
- (void)message:(PurseModel *)data {
    //: [super refreshData:data];
    [super message:data];

    //: NTESMessageModel *model = nil;
    TapMessageModel *model = nil;
    //: if ([data isKindOfClass:[NTESMessageModel class]]) {
    if ([data isKindOfClass:[TapMessageModel class]]) {
        //: model = (NTESMessageModel *)data;
        model = (TapMessageModel *)data;
        //: _line.hidden = model.hiddenSeparatorLine;
        _line.hidden = model.hiddenSeparatorLine;

        //: NSString *timeInfo = [self timeFormatString:model.message.timestamp];
        NSString *timeInfo = [self fileName:model.message.timestamp];
        //: _timeLab.text = timeInfo ?: @"00:00";
        _timeLab.text = timeInfo ?: [StatHeroData dream_ourSnapFormat];

        //: self.bubbleView.layoutStyle = PushSessionMessageContentViewLayoutLeft;
        self.bubbleView.layoutStyle = PushSessionMessageContentViewLayoutLeft;
    }

    //: self.bubbleView.bubbleImageView.hidden = YES;
    self.bubbleView.bubbleImageView.hidden = YES;
    //: self.bubblesBackgroundView.hidden = YES;
    self.bubblesBackgroundView.hidden = YES;
    //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];

    //: id bubbleView = self.bubbleView;
    id bubbleView = self.bubbleView;
    //: if ([bubbleView isKindOfClass:[PushSessionTextContentView class]]) {
    if ([bubbleView isKindOfClass:[CellTempView class]]) {
        //: ((PushSessionTextContentView *)bubbleView).textView.textColor = [UIColor blackColor];
        ((CellTempView *)bubbleView).textView.textColor = [UIColor blackColor];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)time {
- (NSString *)fileName:(NSTimeInterval)time {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"HH:mm"];
    [formatter setDateFormat:[StatHeroData mPressedPath]];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: @end
@end
