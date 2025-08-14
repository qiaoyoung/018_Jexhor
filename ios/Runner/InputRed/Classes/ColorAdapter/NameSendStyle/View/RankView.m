
#import <Foundation/Foundation.h>

@interface CoryphaUmbraculiferaData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CoryphaUmbraculiferaData

+ (instancetype)sharedInstance {
    static CoryphaUmbraculiferaData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CoryphaUmbraculiferaDataToCache:(Byte *)data {
    int organiser = data[0];
    int loping = data[1];
    for (int i = 0; i < organiser / 2; i++) {
        int begin = loping + i;
        int end = loping + organiser - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[loping + organiser] = 0;
    return data + loping;
}

- (NSString *)StringFromCoryphaUmbraculiferaData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CoryphaUmbraculiferaDataToCache:data]];
}  

//: content
- (NSString *)k_sufferingValue {
    /* static */ NSString *k_sufferingValue = nil;
    if (!k_sufferingValue) {
        Byte value[] = {7, 3, 84, 116, 110, 101, 116, 110, 111, 99, 102};
        k_sufferingValue = [self StringFromCoryphaUmbraculiferaData:value];
    }
    return k_sufferingValue;
}

//: #333333
- (NSString *)mColorTitle {
    /* static */ NSString *mColorTitle = nil;
    if (!mColorTitle) {
        Byte value[] = {7, 6, 116, 212, 68, 225, 51, 51, 51, 51, 51, 51, 35, 34};
        mColorTitle = [self StringFromCoryphaUmbraculiferaData:value];
    }
    return mColorTitle;
}

//: #999999
- (NSString *)show_beContent {
    /* static */ NSString *show_beContent = nil;
    if (!show_beContent) {
        Byte value[] = {7, 12, 91, 67, 78, 215, 65, 8, 185, 200, 201, 92, 57, 57, 57, 57, 57, 57, 35, 182};
        show_beContent = [self StringFromCoryphaUmbraculiferaData:value];
    }
    return show_beContent;
}

//: time
- (NSString *)dream_whipValue {
    /* static */ NSString *dream_whipValue = nil;
    if (!dream_whipValue) {
        Byte value[] = {4, 3, 244, 101, 109, 105, 116, 181};
        dream_whipValue = [self StringFromCoryphaUmbraculiferaData:value];
    }
    return dream_whipValue;
}

//: title
- (NSString *)notiExistingValue {
    /* static */ NSString *notiExistingValue = nil;
    if (!notiExistingValue) {
        Byte value[] = {5, 8, 228, 219, 152, 41, 69, 105, 101, 108, 116, 105, 116, 198};
        notiExistingValue = [self StringFromCoryphaUmbraculiferaData:value];
    }
    return notiExistingValue;
}

//: MM-dd HH:mm
- (NSString *)app_atWeddingValue {
    /* static */ NSString *app_atWeddingValue = nil;
    if (!app_atWeddingValue) {
        Byte value[] = {11, 6, 52, 120, 70, 237, 109, 109, 58, 72, 72, 32, 100, 100, 45, 77, 77, 239};
        app_atWeddingValue = [self StringFromCoryphaUmbraculiferaData:value];
    }
    return app_atWeddingValue;
}

//: #E9ECF0
- (NSString *)noti_efficientTitle {
    /* static */ NSString *noti_efficientTitle = nil;
    if (!noti_efficientTitle) {
        Byte value[] = {7, 7, 87, 23, 9, 53, 8, 48, 70, 67, 69, 57, 69, 35, 20};
        noti_efficientTitle = [self StringFromCoryphaUmbraculiferaData:value];
    }
    return noti_efficientTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListCell.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkTeamAnnouncementListCell.h"
#import "RankView.h"
//: #import "WorkUsrInfoData.h"
#import "WorkUsrInfoData.h"
//: #import "WorkKitUtil.h"
#import "WantUtil.h"
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "VideoTextView+MessageContent.h"

//: @interface WorkTeamAnnouncementListCell ()
@interface RankView ()
//: @property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *titleLabel;
//: @property (strong, nonatomic) UILabel *infoLabel;
@property (strong, nonatomic) UILabel *infoLabel;
//: @property (strong, nonatomic) UIView *line;
@property (strong, nonatomic) UIView *line;
//: @property (strong, nonatomic) M80AttributedLabel *contentLabel;
@property (strong, nonatomic) VideoTextView *contentLabel;

//: @end
@end

//: @implementation WorkTeamAnnouncementListCell
@implementation RankView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.accessoryType = UITableViewCellAccessoryNone;
//        self.layer.cornerRadius = 10;

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30 - 30, 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30 - 30, 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:18.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:18.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_titleLabel];

        //: _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 39, [[UIScreen mainScreen] bounds].size.width-30 - 30, 13)];
        _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 39, [[UIScreen mainScreen] bounds].size.width-30 - 30, 13)];
        //: _infoLabel.font = [UIFont systemFontOfSize:12.f];
        _infoLabel.font = [UIFont systemFontOfSize:12.f];
        //: _infoLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _infoLabel.textColor = [UIColor ground:[[CoryphaUmbraculiferaData sharedInstance] show_beContent]];
        //: [self.contentView addSubview:_infoLabel];
        [self.contentView addSubview:_infoLabel];

        //: _line = [[UIView alloc] initWithFrame:CGRectMake(15, 64, [[UIScreen mainScreen] bounds].size.width-60, .5)];
        _line = [[UIView alloc] initWithFrame:CGRectMake(15, 64, [[UIScreen mainScreen] bounds].size.width-60, .5)];
        //: _line.backgroundColor = [UIColor colorWithHexString:@"#E9ECF0"];
        _line.backgroundColor = [UIColor ground:[[CoryphaUmbraculiferaData sharedInstance] noti_efficientTitle]];
        //: _line.hidden = YES;
        _line.hidden = YES;
        //: [self.contentView addSubview:_line];
        [self.contentView addSubview:_line];

        //: _contentLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectMake(15, 73, [[UIScreen mainScreen] bounds].size.width-30-30, 178)];
        _contentLabel = [[VideoTextView alloc] initWithFrame:CGRectMake(15, 73, [[UIScreen mainScreen] bounds].size.width-30-30, 178)];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        _contentLabel.textColor = [UIColor ground:[[CoryphaUmbraculiferaData sharedInstance] mColorTitle]];
        //: _contentLabel.numberOfLines = 0;
        _contentLabel.numberOfLines = 0;
        //: _contentLabel.font = [UIFont systemFontOfSize:14.f];
        _contentLabel.font = [UIFont systemFontOfSize:14.f];
        //: _contentLabel.autoDetectLinks = YES;
        _contentLabel.autoDetectLinks = YES;
        //: _contentLabel.underLineForLink = YES;
        _contentLabel.underLineForLink = YES;
        //: _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _contentLabel.backgroundColor = [UIColor clearColor];
        _contentLabel.backgroundColor = [UIColor clearColor];
        //: _contentLabel.isShowTextSelection = YES;
        _contentLabel.isShowTextSelection = YES;
        //: _contentLabel.selectable = YES;
        _contentLabel.selectable = YES;

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _contentLabel.selectBlock = ^(WorkMediaItem *item) {
        _contentLabel.selectBlock = ^(AccountAction *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSString *text = [self.contentLabel.text substringWithRange:self.contentLabel.selectedRange];
            NSString *text = [self.contentLabel.text substringWithRange:self.contentLabel.selectedRange];
            //: if (text.length) {
            if (text.length) {
                //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                //: [pasteboard setString:text];
                [pasteboard setString:text];
            }
        //: };
        };

        //: [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_contentLabel];

        //: [_contentLabel new_genMediaButton];
        [_contentLabel fixing];

    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NSDictionary *)data nick:(NSString *)nick{
- (void)cell:(NSDictionary *)data reloadFrameNick:(NSString *)nick{
    //: NSString *title = [data objectForKey:@"title"];
    NSString *title = [data objectForKey:[[CoryphaUmbraculiferaData sharedInstance] notiExistingValue]];
    //: _titleLabel.text = title;
    _titleLabel.text = title;
    //: [_titleLabel sizeToFit];
    [_titleLabel sizeToFit];
    //: _titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width - 60, _titleLabel.frame.size.height+2);
    _titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width - 60, _titleLabel.frame.size.height+2);

    //: _infoLabel.frame = CGRectMake(15, 8+_titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width - 60, 13);
    _infoLabel.frame = CGRectMake(15, 8+_titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width - 60, 13);

    //: _line.frame = CGRectMake(15, _infoLabel.bottom + 15, [[UIScreen mainScreen] bounds].size.width-60, .5);
    _line.frame = CGRectMake(15, _infoLabel.bottom + 15, [[UIScreen mainScreen] bounds].size.width-60, .5);

    //: NSString *content = [data objectForKey:@"content"];
    NSString *content = [data objectForKey:[[CoryphaUmbraculiferaData sharedInstance] k_sufferingValue]];
    //: [_contentLabel nim_setText:content];
    [_contentLabel infoCookie:content];
    //: [_contentLabel sizeToFit];
    [_contentLabel sizeToFit];

    //: _contentLabel.frame = CGRectMake(15, 10 + _line.bottom, [[UIScreen mainScreen] bounds].size.width - 60, _contentLabel.frame.size.height+2);
    _contentLabel.frame = CGRectMake(15, 10 + _line.bottom, [[UIScreen mainScreen] bounds].size.width - 60, _contentLabel.frame.size.height+2);
    //: NSNumber *time = [data objectForKey:@"time"];
    NSNumber *time = [data objectForKey:[[CoryphaUmbraculiferaData sharedInstance] dream_whipValue]];
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: [dateFormatter setDateFormat:@"MM-dd HH:mm"];
    [dateFormatter setDateFormat:[[CoryphaUmbraculiferaData sharedInstance] app_atWeddingValue]];
    //: NSDate * date = [NSDate dateWithTimeIntervalSince1970:time.integerValue];
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:time.integerValue];
    //: NSString *dataString = [dateFormatter stringFromDate:date];
    NSString *dataString = [dateFormatter stringFromDate:date];
    //: _infoLabel.text = [NSString stringWithFormat:@"%@ %@", nick ?: @"", dataString];
    _infoLabel.text = [NSString stringWithFormat:@"%@ %@", nick ?: @"", dataString];
}

//: + (CGFloat)cellHeight:(NSString *)title
+ (CGFloat)custom:(NSString *)title
{
    //: CGSize size = [title boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width-60, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
    CGSize size = [title boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width-60, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;

    //: return 85 + size.height + 20;
    return 85 + size.height + 20;
}

//: @end
@end
