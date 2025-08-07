// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadViewCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactUtilCell.h"
#import "HeadViewCell.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESBadgeView.h"
#import "GroupDiscussionView.h"

//: @interface NTESContactUtilCell()
@interface HeadViewCell()

//: @property (nonatomic,strong) NTESBadgeView *badgeView;
@property (nonatomic,strong) GroupDiscussionView *badgeView;

//: @property (nonatomic,strong) id<NTESContactItem> data;
@property (nonatomic,strong) id<ItemTing> data;

//: @end
@end

//: @implementation NTESContactUtilCell
@implementation HeadViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _badgeView = [NTESBadgeView viewWithBadgeTip:@""];
        _badgeView = [GroupDiscussionView tingOf:@""];
        //: [self.contentView addSubview:_badgeView];
        [self.contentView addSubview:_badgeView];
    }
    //: return self;
    return self;
}

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item{
- (void)doing:(id<ItemTing>)item{
    //: self.data = item;
    self.data = item;
    //: self.textLabel.text = item.nick;
    self.textLabel.text = item.nameBackground;
    //: self.imageView.image = item.icon;
    self.imageView.image = item.top;
    //: self.imageView.userInteractionEnabled = YES;
    self.imageView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onPressUtilImage:)];
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(incentiveOption:)];
    //: [self.imageView addGestureRecognizer: recognizer];
    [self.imageView addGestureRecognizer: recognizer];
    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];

    //: NSString *badge = [item badge];
    NSString *badge = [item informationComplete];
    //: self.badgeView.hidden = badge.integerValue == 0;
    self.badgeView.hidden = badge.integerValue == 0;
    //: self.badgeView.badgeValue = badge;
    self.badgeView.badgeValue = badge;
}

//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated {
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    //: [super setSelected:selected animated:animated];
    [super setSelected:selected animated:animated];
}

//: - (void)onPressUtilImage:(id)sender{
- (void)incentiveOption:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressUtilImage:)]) {
    if ([self.delegate respondsToSelector:@selector(incentiveOption:)]) {
        //: [self.delegate onPressUtilImage:self.data.nick];
        [self.delegate incentiveOption:self.data.nameBackground];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)roundness:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.imageView.left = NTESContactAvatarLeft;
    self.imageView.left = showStateMinTapTitle;
    //: self.imageView.centerY = self.height * .5f;
    self.imageView.centerY = self.height * .5f;
    //: self.badgeView.right = self.width - 50;
    self.badgeView.right = self.width - 50;
    //: self.badgeView.centerY = self.height * .5f;
    self.badgeView.centerY = self.height * .5f;
}


//: @end
@end