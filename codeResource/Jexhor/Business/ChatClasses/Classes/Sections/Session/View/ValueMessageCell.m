
#import <Foundation/Foundation.h>

NSString *StringFromElectrochemicalSeriesData(Byte *data);        


//: NTESMessageTranslate
Byte dreamVehicleValue[] = {19, 20, 56, 12, 231, 31, 141, 65, 1, 156, 250, 58, 22, 28, 13, 27, 21, 45, 59, 59, 41, 47, 45, 28, 58, 41, 54, 59, 52, 41, 60, 45, 70};

//: ic_praise%@
Byte dream_consequentValue[] = {44, 11, 81, 5, 135, 24, 18, 14, 31, 33, 16, 24, 34, 20, 212, 239, 249};

//: #FFEAE0FF
Byte showMedicalTitle[] = {62, 9, 31, 12, 133, 245, 207, 177, 110, 86, 240, 85, 4, 39, 39, 38, 34, 38, 17, 39, 39, 47};

//: #999999
Byte userShoutData[] = {21, 7, 59, 9, 52, 248, 154, 69, 3, 232, 254, 254, 254, 254, 254, 254, 247};

//: #333333
Byte kExpectData[] = {3, 7, 55, 13, 186, 193, 164, 231, 173, 39, 171, 83, 7, 236, 252, 252, 252, 252, 252, 252, 18};

//: %@标记了这条消息
Byte dream_adultBlindAcheName[] = {74, 23, 62, 13, 254, 147, 15, 154, 208, 194, 174, 187, 51, 231, 2, 168, 98, 73, 170, 112, 114, 166, 124, 72, 170, 129, 91, 168, 95, 99, 168, 120, 74, 168, 67, 113, 3};

//: 1条回复
Byte userRowLeastName[] = {85, 10, 49, 6, 47, 156, 0, 181, 108, 112, 180, 106, 109, 180, 115, 92, 126};

//: %zd条回复
Byte show_complainName[] = {68, 12, 73, 10, 248, 119, 22, 59, 121, 193, 220, 49, 27, 157, 84, 88, 156, 82, 85, 156, 91, 68, 64};

//: icon_pin
Byte kPoolJacketValue[] = {52, 8, 31, 9, 78, 24, 139, 190, 11, 74, 68, 80, 79, 64, 81, 74, 79, 114};

//: icon_reply
Byte m_overwhelmData[] = {68, 10, 82, 12, 171, 212, 51, 74, 209, 36, 253, 121, 23, 17, 29, 28, 13, 32, 19, 30, 26, 39, 219};

//: ffffff
Byte show_dayValue[] = {19, 6, 16, 6, 18, 153, 86, 86, 86, 86, 86, 86, 222};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueMessageCell.m
// MessageContent
//
//  Created by He on 2020/4/10.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAdvancedMessageCell.h"
#import "ValueMessageCell.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "ShowModel.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import "FFFQuickCommentCell.h"
#import "ShowReusableView.h"
//: #import "FFFSessionMessageContentView.h"
#import "TextControl.h"
//: #import "FFFAvatarImageView.h"
#import "ButtonControl.h"
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"
//: #import "FFFKitUtil.h"
#import "WantUtil.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "MessageUtil.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+MessageContent.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "FFFCollectionViewLeftAlignedLayout.h"
#import "ActionFlowLayout.h"
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "VideoTextView+MessageContent.h"

//: static NSString * const kNIMListCellReuseID = @"FFFQuickCommentCell";
static NSString * const dreamActionTitle = @"ShowReusableView";
//: static const CGFloat kNIMAdvancedBackgroundPadding = 5;
static const CGFloat appWillImageName = 5;

//: @interface FFFAdvancedMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>
@interface ValueMessageCell () <UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>

//: @property (nonatomic,strong) NSArray *objects;
@property (nonatomic,strong) NSArray *objects;

//: @property (nonatomic,strong) NSMapTable *map;
@property (nonatomic,strong) NSMapTable *map;

//: @end
@end

//: @implementation FFFAdvancedMessageCell
@implementation ValueMessageCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self)
    if (self)
    {
        //: _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _replyButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_replyButton setImage:[UIImage imageNamed:@"icon_reply"] forState:UIControlStateNormal];
        [_replyButton setImage:[UIImage imageNamed:StringFromElectrochemicalSeriesData(m_overwhelmData)] forState:UIControlStateNormal];
        //: UIColor *titleColor = [UIColor colorWithHex:0x337EFF alpha:1];
        UIColor *titleColor = [UIColor member:0x337EFF barMargin:1];
        //: [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        [_replyButton setTitleColor:titleColor forState:UIControlStateNormal];
        //: _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        _replyButton.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_replyButton addTarget:self action:@selector(onReplyClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_replyButton addTarget:self action:@selector(replies:) forControlEvents:UIControlEventTouchUpInside];
        //: _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _replyButton.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        //: _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _replyButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        //: [self.contentView addSubview:_replyButton];
        [self.contentView addSubview:_replyButton];
        //: _replyButton.hidden = YES;
        _replyButton.hidden = YES;

        //: _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        _pinView = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _pinView.enabled = NO;
        _pinView.enabled = NO;
        //: _pinView.adjustsImageWhenDisabled = NO;
        _pinView.adjustsImageWhenDisabled = NO;
        //: [_pinView setImage:[UIImage imageNamed:@"icon_pin"] forState:UIControlStateNormal];
        [_pinView setImage:[UIImage imageNamed:StringFromElectrochemicalSeriesData(kPoolJacketValue)] forState:UIControlStateNormal];
        //: [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        [_pinView setTitleColor:[UIColor colorWithRed:0 green:165/255.0 blue:85/255.0 alpha:1.0] forState:UIControlStateNormal];
        //: _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        _pinView.titleLabel.font = [UIFont systemFontOfSize:14];
        //: _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        _pinView.titleEdgeInsets = UIEdgeInsetsMake(0, 3, 0, 0);
        //: _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        _pinView.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 3);
        //: _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        _pinView.titleLabel.adjustsFontSizeToFitWidth = YES;
        //: _pinView.titleLabel.minimumScaleFactor = 0.7;
        _pinView.titleLabel.minimumScaleFactor = 0.7;
        //: [self.contentView addSubview:_pinView];
        [self.contentView addSubview:_pinView];
        //: _pinView.hidden = YES;
        _pinView.hidden = YES;

        //: _translationView = [[UIView alloc]init];
        _translationView = [[UIView alloc]init];
        //: _translationView.backgroundColor = [UIColor colorWithHexString:@"ffffff"];
        _translationView.backgroundColor = [UIColor ground:StringFromElectrochemicalSeriesData(show_dayValue)];
        //: _translationView.layer.cornerRadius = 8;
        _translationView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_translationView];
        [self.contentView addSubview:_translationView];

        //: _praiseView = [[UIView alloc]init];
        _praiseView = [[UIView alloc]init];
        //: _praiseView.backgroundColor = [UIColor colorWithHexString:@"#FFEAE0FF"];
        _praiseView.backgroundColor = [UIColor ground:StringFromElectrochemicalSeriesData(showMedicalTitle)];
        //: _praiseView.layer.cornerRadius = 8;
        _praiseView.layer.cornerRadius = 8;
        //: [self.contentView addSubview:_praiseView];
        [self.contentView addSubview:_praiseView];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(FFFMessageModel *)data
- (void)flushVideo:(ShowModel *)data
{

    //: [super refreshData:data];
    [super flushVideo:data];
    //: [self refreshPinView:data];
    [self valueCell:data];
//    [self refreshReplyCountView:data];
    //: [self refreshEmoticonsView:data];
    [self imageShow:data];

    //: [self refreshtranslationView:data];
    [self viewWeltanschauung:data];

    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
//    [self layoutEmoticonsContainerViewSize];

    //: [super layoutSubviews];
    [super layoutSubviews];

    //: [self layoutPinView];
    [self nobble];
    //: [self layoutReplyCountView];
    [self should];
    //: [self layouttranslationView];
    [self last];
    //: [self layoutPraiseView];
    [self recommend];
}

//: #pragma mark - View
#pragma mark - View
//: - (void)layoutPraiseView
- (void)recommend
{
    //: if (self.praiseView.hidden)
    if (self.praiseView.hidden)
    {
        //: self.praiseView.frame = CGRectZero;
        self.praiseView.frame = CGRectZero;
    }
    //: else
    else
    {
        //: NSInteger limiteNum = self.objects.count>6 ? 6 :self.objects.count;
        NSInteger limiteNum = self.objects.count>6 ? 6 :self.objects.count;
        //: CGFloat width = limiteNum*26 + 10;
        CGFloat width = limiteNum*26 + 10;
        //: self.praiseView.height = 24;
        self.praiseView.height = 24;
        //: self.praiseView.width = width;
        self.praiseView.width = width;


        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: self.praiseView.left = self.pinView.hidden ? self.bubblesBackgroundView.left : self.pinView.left;
            self.praiseView.left = self.pinView.hidden ? self.bubblesBackgroundView.left : self.pinView.left;
        }
        //: else
        else
        {
            //: self.praiseView.right = self.pinView.hidden ? self.bubblesBackgroundView.right : self.pinView.right;
            self.praiseView.right = self.pinView.hidden ? self.bubblesBackgroundView.right : self.pinView.right;
        }

        //: if (self.replyButton.hidden)
        if (self.replyButton.hidden)
        {
            //: self.praiseView.top = self.bubblesBackgroundView.bottom + 5.f;
            self.praiseView.top = self.bubblesBackgroundView.bottom + 5.f;
        }
        //: else
        else
        {
            //: self.praiseView.top = self.replyButton.bottom + 5.f;
            self.praiseView.top = self.replyButton.bottom + 5.f;
        }
//        self.praiseView.left = self.bubbleView.left;
//        self.praiseView.top = self.bubbleView.bottom-5;
    }
}

//: - (void)layouttranslationView
- (void)last
{
    //: if (self.translationView.hidden)
    if (self.translationView.hidden)
    {
        //: self.translationView.frame = CGRectZero;
        self.translationView.frame = CGRectZero;
    }
    //: else
    else
    {

        //: NSString *aString = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
        NSString *aString = [self.model.message.localExt objectForKey:StringFromElectrochemicalSeriesData(dreamVehicleValue)];
        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        VideoTextView *labtran = [[VideoTextView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:aString];
        [labtran infoCookie:aString];
        //: labtran.textColor = [UIColor colorWithHexString:@"#999999"];
        labtran.textColor = [UIColor ground:StringFromElectrochemicalSeriesData(userShoutData)];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];

//        CGFloat msgBubbleMaxWidth    = self.bubbleView.nim_width;
        //: CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        //: CGFloat bubbleLeftToContent = 5;
        CGFloat bubbleLeftToContent = 5;
        //: CGFloat contentRightToBubble = 5;
        CGFloat contentRightToBubble = 5;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

        //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

        //: self.translationView.height = replySize.height;
        self.translationView.height = replySize.height;
        //: self.translationView.width = replySize.width+10;
        self.translationView.width = replySize.width+10;
        //: self.translationView.top = self.bubbleView.bottom+5;
        self.translationView.top = self.bubbleView.bottom+5;

        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
//            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            //: self.translationView.left = self.bubbleView.left;
            self.translationView.left = self.bubbleView.left;
        //: } else {
        } else {
            //: self.translationView.nim_right = self.bubbleView.nim_right;
            self.translationView.nim_right = self.bubbleView.nim_right;
//            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
//            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }



//        self.translationView.left = self.bubbleView.left;

    }
}
//: - (void)refreshtranslationView:(FFFMessageModel *)data
- (void)viewWeltanschauung:(ShowModel *)data
{
    //: if([data.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
    if([data.message.localExt.allKeys containsObject:StringFromElectrochemicalSeriesData(dreamVehicleValue)])
    {
        //: NSArray *viewsArray = self.translationView.subviews;
        NSArray *viewsArray = self.translationView.subviews;
        //: for (int i = 0; i < viewsArray.count; i ++) {
        for (int i = 0; i < viewsArray.count; i ++) {
            //: UIView *subview = viewsArray[i];
            UIView *subview = viewsArray[i];
            //: [subview removeFromSuperview];
            [subview removeFromSuperview];
        }

        //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
        VideoTextView *labtran = [[VideoTextView alloc]initWithFrame:CGRectZero];
        //: [labtran nim_setText:[self.model.message.localExt objectForKey:@"NTESMessageTranslate"]];
        [labtran infoCookie:[self.model.message.localExt objectForKey:StringFromElectrochemicalSeriesData(dreamVehicleValue)]];
        //: labtran.textColor = [UIColor colorWithHexString:@"#333333"];
        labtran.textColor = [UIColor ground:StringFromElectrochemicalSeriesData(kExpectData)];
        //: labtran.font = [UIFont systemFontOfSize:13];
        labtran.font = [UIFont systemFontOfSize:13];
        //: labtran.numberOfLines = 0;
        labtran.numberOfLines = 0;
        //: [_translationView addSubview:labtran];
        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        CGFloat msgBubbleMaxWidth = (self.nim_width - 130);
        //: CGFloat bubbleLeftToContent = 5;
        CGFloat bubbleLeftToContent = 5;
        //: CGFloat contentRightToBubble = 5;
        CGFloat contentRightToBubble = 5;
        //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
        //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);
        labtran.frame = CGRectMake(5, 0, replySize.width, replySize.height);

//        UILabel *labtran = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 0, 0)];
//        labtran.text = [self.model.message.localExt objectForKey:@"NTESMessageTranslate"];
//        labtran.numberOfLines = 0;
//        labtran.font = [UIFont systemFontOfSize:12];
//        labtran.textColor = TextColor_4;
//        [_translationView addSubview:labtran];
//        [labtran sizeToFit];

        //: _translationView.hidden = NO;
        _translationView.hidden = NO;
    }
    //: else
    else
    {
        //: _translationView.hidden = YES;
        _translationView.hidden = YES;
    }
}



//: - (void)refreshEmoticonsView:(FFFMessageModel *)data
- (void)imageShow:(ShowModel *)data
{
    //: self.objects = nil;
    self.objects = nil;
    //: self.map = nil;
    self.map = nil;

    //: NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
    NSMapTable<NSNumber *, NIMQuickComment *> * result = data.quickComments;
    //: self.map = result;
    self.map = result;
    // 按最近评论优先排序
    //: self.objects = [FFFKitQuickCommentUtil sortedKeys:result];
    self.objects = [MessageUtil image:result];

    //: if (self.objects.count > 0)
    if (self.objects.count > 0)
    {
        //: NSLog(@"self.objects--%@",self.objects);

        //: NSArray *viewsArray = self.praiseView.subviews;
        NSArray *viewsArray = self.praiseView.subviews;
        //: for (int i = 0; i < viewsArray.count; i ++) {
        for (int i = 0; i < viewsArray.count; i ++) {
            //: UIView *subview = viewsArray[i];
            UIView *subview = viewsArray[i];
            //: [subview removeFromSuperview];
            [subview removeFromSuperview];
        }


        //: self.praiseView.hidden = NO;
        self.praiseView.hidden = NO;


        //: for (int i = 0; i < self.objects.count; i++) {
        for (int i = 0; i < self.objects.count; i++) {
            //: CGFloat x = 10 + i*(16+10);
            CGFloat x = 10 + i*(16+10);
            //: UIImageView *emotion = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_praise%@",self.objects[i]]]];
            UIImageView *emotion = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:StringFromElectrochemicalSeriesData(dream_consequentValue),self.objects[i]]]];
            //: emotion.frame = CGRectMake(x, 4, 16, 16);
            emotion.frame = CGRectMake(x, 4, 16, 16);
            //: [self.praiseView addSubview:emotion];
            [self.praiseView addSubview:emotion];

            //: if(i == 6){
            if(i == 6){
                //: return;
                return;
            }
        }
    }
    //: else
    else
    {
        //: self.praiseView.hidden = YES;
        self.praiseView.hidden = YES;
    }

}

//: - (void)refreshCollection:(FFFMessageModel *)data
- (void)big:(ShowModel *)data
{
    //: if ([data needShowEmoticonsView])
    if ([data date])
    {
        //: UICollectionView *collectionView = self.emoticonsContainerView;
        UICollectionView *collectionView = self.emoticonsContainerView;
        //: if (!collectionView)
        if (!collectionView)
        {
            //: UICollectionViewFlowLayout *flowLayout = [[FFFCollectionViewLeftAlignedLayout alloc] init];
            UICollectionViewFlowLayout *flowLayout = [[ActionFlowLayout alloc] init];
            //: flowLayout.minimumLineSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumLineSpacing = userErrorValue;
            //: flowLayout.minimumInteritemSpacing = NIMKitCommentUtilCellPadding;
            flowLayout.minimumInteritemSpacing = userErrorValue;
            //: collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
            collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                                //: collectionViewLayout:flowLayout];
                                                collectionViewLayout:flowLayout];
            //: [collectionView registerClass:[FFFQuickCommentCell class] forCellWithReuseIdentifier:kNIMListCellReuseID];
            [collectionView registerClass:[ShowReusableView class] forCellWithReuseIdentifier:dreamActionTitle];
            //: self.emoticonsContainerView = collectionView;
            self.emoticonsContainerView = collectionView;
            //: [self.contentView addSubview:collectionView];
            [self.contentView addSubview:collectionView];
        }

        //: self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        self.emoticonsContainerView.backgroundColor = [UIColor clearColor];
        //: collectionView.dataSource = self;
        collectionView.dataSource = self;
        //: collectionView.delegate = self;
        collectionView.delegate = self;
        //: collectionView.hidden = NO;
        collectionView.hidden = NO;
    }
}

//: - (void)refreshPinView:(FFFMessageModel *)data
- (void)valueCell:(ShowModel *)data
{
    //: if (data.pinUserName.length && data.shouldShowPinContent)
    if (data.pinUserName.length && data.shouldShowPinContent)
    {
        //: [_pinView setTitle:[NSString stringWithFormat:@"%@标记了这条消息".nim_localized, data.pinUserName] forState:UIControlStateNormal];
        [_pinView setTitle:[NSString stringWithFormat:StringFromElectrochemicalSeriesData(dream_adultBlindAcheName).titleBy, data.pinUserName] forState:UIControlStateNormal];
        //: _pinView.hidden = NO;
        _pinView.hidden = NO;
    }
    //: else
    else
    {
        //: _pinView.hidden = YES;
        _pinView.hidden = YES;
    }
}

//: - (void)refreshReplyCountView:(FFFMessageModel *)data
- (void)show:(ShowModel *)data
{
    //: NSInteger count = data.childMessagesCount;
    NSInteger count = data.childMessagesCount;
    //: if (count > 0)
    if (count > 0)
    {
        //: if (count == 1)
        if (count == 1)
        {
            //: [_replyButton setTitle:@"1条回复".nim_localized forState:UIControlStateNormal];
            [_replyButton setTitle:StringFromElectrochemicalSeriesData(userRowLeastName).titleBy forState:UIControlStateNormal];
        }
        //: else
        else
        {
            //: [_replyButton setTitle:[NSString stringWithFormat:@"%zd条回复".nim_localized, count]
            [_replyButton setTitle:[NSString stringWithFormat:StringFromElectrochemicalSeriesData(show_complainName).titleBy, count]
                          //: forState:UIControlStateNormal];
                          forState:UIControlStateNormal];
        }

        //: _replyButton.hidden = NO;
        _replyButton.hidden = NO;
    }
    //: else
    else
    {
        //: _replyButton.hidden = YES;
        _replyButton.hidden = YES;
    }
}


//: #pragma mark - Layout
#pragma mark - Layout
//: - (void)layoutPinView
- (void)nobble
{
    //: if (self.pinView.hidden)
    if (self.pinView.hidden)
    {
        //: self.pinView.frame = CGRectZero;
        self.pinView.frame = CGRectZero;
    }
    //: else
    else
    {
        //: self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        self.pinView.nim_height = self.pinView.intrinsicContentSize.height;
        //: self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        self.pinView.nim_width = self.pinView.intrinsicContentSize.width + 8;
        //: self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        self.pinView.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        //: if (self.model.shouldShowLeft) {
        if (self.model.shouldShowLeft) {
            //: self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            self.pinView.nim_left = self.bubblesBackgroundView.nim_left;
            //: self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            self.pinView.nim_width = self.contentView.nim_width - self.pinView.nim_left - 8;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: } else {
        } else {
            //: self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            self.pinView.nim_width = self.bubblesBackgroundView.nim_right - 8;
            //: self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            self.pinView.nim_right = self.bubblesBackgroundView.nim_right;
            //: self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
            self.pinView.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        }
    }
}

//: - (void)layoutReplyCountView
- (void)should
{
    //: if (self.replyButton.hidden)
    if (self.replyButton.hidden)
    {
        //: self.replyButton.frame = CGRectZero;
        self.replyButton.frame = CGRectZero;
    }
    //: else
    else
    {
        //: self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        self.replyButton.nim_height = self.replyButton.intrinsicContentSize.height;
        //: self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        self.replyButton.nim_width = self.replyButton.intrinsicContentSize.width + 8;
        //: if (self.model.shouldShowLeft)
        if (self.model.shouldShowLeft)
        {
            //: self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
            self.replyButton.nim_left = self.pinView.hidden ? self.bubblesBackgroundView.nim_left : self.pinView.nim_left;
        }
        //: else
        else
        {
            //: self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
            self.replyButton.nim_right = self.pinView.hidden ? self.bubblesBackgroundView.nim_right : self.pinView.nim_right;
        }

        //: if (self.pinView.hidden)
        if (self.pinView.hidden)
        {
            //: self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
            self.replyButton.nim_top = self.bubblesBackgroundView.nim_bottom + 5.f;
        }
        //: else
        else
        {
            //: self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
            self.replyButton.nim_top = self.pinView.nim_bottom + 5.f;
        }
    }
}

//: - (void)layoutEmoticonsContainerViewSize
- (void)background
{
    //: if ([self.model needShowEmoticonsView])
    if ([self.model date])
    {
        //: CGSize size = self.model.emoticonsContainerSize;
        CGSize size = self.model.emoticonsContainerSize;
        //: self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
        self.emoticonsContainerView.nim_size = CGSizeMake(size.width + 2, size.height);
    }
    //: else
    else
    {
        //: self.emoticonsContainerView.frame = CGRectZero;
        self.emoticonsContainerView.frame = CGRectZero;
        //: self.emoticonsContainerView = nil;
        self.emoticonsContainerView = nil;
    }
}

//: - (void)fixPositions
- (void)createColor
{
    //: if (self.replyedBubbleView)
    if (self.replyedBubbleView)
    {
        //: self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
        self.bubblesBackgroundView.nim_top = self.replyedBubbleView.nim_top-5;
    }
    //: else
    else
    {
        //: self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
        self.bubblesBackgroundView.nim_top = self.bubbleView.nim_top;
    }

    //: if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    if (!self.emoticonsContainerView || self.emoticonsContainerView.hidden)
    {
        //: return;
        return;
    }

    //: CGFloat left = 0;
    CGFloat left = 0;
    //: CGFloat protraitRightToBubble = 15.f;
    CGFloat protraitRightToBubble = 15.f;
    //: if (!self.model.shouldShowLeft)
    if (!self.model.shouldShowLeft)
    {
        //: CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        CGFloat right = self.model.shouldShowAvatar? CGRectGetMinX(self.headImageView.frame) - protraitRightToBubble : self.nim_width;
        //: left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
        left = right - CGRectGetWidth(self.bubblesBackgroundView.bounds);
    //: } else {
    } else {
        //: left = self.bubbleView.nim_left;
        left = self.bubbleView.nim_left;
    }

    //: self.replyedBubbleView.nim_left = left+5;
    self.replyedBubbleView.nim_left = left+5;
    //: self.bubbleView.nim_left = left;
    self.bubbleView.nim_left = left;
    //: self.emoticonsContainerView.nim_left = left + kNIMAdvancedBackgroundPadding;
    self.emoticonsContainerView.nim_left = left + appWillImageName;
    //: self.bubblesBackgroundView.nim_left = left;
    self.bubblesBackgroundView.nim_left = left;

    //: self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
    self.emoticonsContainerView.nim_top = ((UIView *)self.bubbleView).nim_bottom;
}

//: - (void)layoutBubblesBackgroundView
- (void)indueView
{
    //: CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    CGFloat height = self.replyedBubbleView.nim_height + self.bubbleView.nim_height;
    //: height += self.emoticonsContainerView.nim_height;
    height += self.emoticonsContainerView.nim_height;

    //: CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    CGFloat width = self.replyedBubbleView.nim_width > self.bubbleView.nim_width ? self.replyedBubbleView.nim_width : self.bubbleView.nim_width;
    //: CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + kNIMAdvancedBackgroundPadding * 2;
    CGFloat emoticonsWidth = self.emoticonsContainerView.nim_width + appWillImageName * 2;
    //: width = width > emoticonsWidth ? width : emoticonsWidth;
    width = width > emoticonsWidth ? width : emoticonsWidth;
    //: self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height);
    self.bubblesBackgroundView.nim_size = CGSizeMake(width+10, height);
    //: self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;
    self.bubblesBackgroundView.nim_left = self.bubbleView.nim_left;

    //: [self fixPositions];
    [self createColor];
}

//: - (void)layoutReadButton{
- (void)stigmatise{

    //: if (!self.readButton.isHidden) {
    if (!self.readButton.isHidden) {

        //: CGFloat left = self.bubbleView.nim_left;
        CGFloat left = self.bubbleView.nim_left;
        //: CGFloat bottom = self.bubbleView.nim_bottom;
        CGFloat bottom = self.bubbleView.nim_bottom;

        //: self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
        self.readButton.nim_left = left - CGRectGetWidth(self.readButton.bounds) - 2;
//        self.readButton.nim_bottom = bottom;
        //: self.readButton.nim_centerY = self.bubbleView.nim_centerY;
        self.readButton.nim_centerY = self.bubbleView.nim_centerY;
    }
}

//: #pragma mark - Action
#pragma mark - Action

//: - (void)onReplyClicked:(id)sender
- (void)replies:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onClickReplyButton:)])
    if ([self.delegate respondsToSelector:@selector(dated:)])
    {
        //: [self.delegate onClickReplyButton:self.model.message];
        [self.delegate dated:self.model.message];
    }
}


//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource

//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //: return self.objects.count;
    return self.objects.count;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: FFFQuickCommentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kNIMListCellReuseID forIndexPath:indexPath];
    ShowReusableView *cell = [collectionView dequeueReusableCellWithReuseIdentifier:dreamActionTitle forIndexPath:indexPath];
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: [cell refreshWithData:comments model:self.model];
    [cell to:comments tool:self.model];
    //: return cell;
    return cell;
}

//: #pragma mark - UICollectionViewDelegate
#pragma mark - UICollectionViewDelegate

//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    NSNumber *number = [self.objects objectAtIndex:indexPath.item];
    //: NSArray *comments = [self.map objectForKey:number];
    NSArray *comments = [self.map objectForKey:number];
    //: CGSize size = [FFFKitQuickCommentUtil itemSizeWithComments:comments];
    CGSize size = [MessageUtil should:comments];
    //: return size;
    return size;
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    //: return UIEdgeInsetsMake(0, NIMKitCommentUtilCellPadding, 0, NIMKitCommentUtilCellPadding);
    return UIEdgeInsetsMake(0, userErrorValue, 0, userErrorValue);
}

//: - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    //: NIMQuickComment *comment = [FFFKitQuickCommentUtil myCommentFromComments:indexPath.item
    NIMQuickComment *comment = [MessageUtil name:indexPath.item
                                                                 //: keys:self.objects
                                                                 infoTo:self.objects
                                                             //: comments:self.map];
                                                             inventoryItemComments:self.map];
    //: if ([self.delegate respondsToSelector:@selector(onClickEmoticon:comment:selected:)])
    if ([self.delegate respondsToSelector:@selector(numberervalSession:gray:media:)])
    {
        //: BOOL hasCommentThisEmoticon = comment ? YES : NO;
        BOOL hasCommentThisEmoticon = comment ? YES : NO;
        //: if (!comment)
        if (!comment)
        {
            //: NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            NSNumber *number = [self.objects objectAtIndex:indexPath.item];
            //: NSArray *comments = [self.map objectForKey:number];
            NSArray *comments = [self.map objectForKey:number];
            //: comment = [comments firstObject];
            comment = [comments firstObject];
        }
        //: [self.delegate onClickEmoticon:self.model.message
        [self.delegate numberervalSession:self.model.message
                               //: comment:comment
                               gray:comment
                              //: selected:hasCommentThisEmoticon];
                              media:hasCommentThisEmoticon];
    }
}





//: @end
@end

Byte * ElectrochemicalSeriesDataToCache(Byte *data) {
    int drinkingBind = data[0];
    int factor = data[1];
    Byte defender = data[2];
    int atTroop = data[3];
    if (!drinkingBind) return data + atTroop;
    for (int i = atTroop; i < atTroop + factor; i++) {
        int value = data[i] + defender;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[atTroop + factor] = 0;
    return data + atTroop;
}

NSString *StringFromElectrochemicalSeriesData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ElectrochemicalSeriesDataToCache(data)];
}
