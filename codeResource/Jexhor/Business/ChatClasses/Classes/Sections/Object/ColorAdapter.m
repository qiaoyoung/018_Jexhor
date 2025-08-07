
#import <Foundation/Foundation.h>

@interface PlungeData : NSObject

+ (instancetype)sharedInstance;

//: not support model
@property (nonatomic, copy) NSString *mSchoolSessionName;

//: NTESMessageTranslate
@property (nonatomic, copy) NSString *appNeedValue;

//: defaultCellID
@property (nonatomic, copy) NSString *showMustContent;

//: Unsupported model type: %@
@property (nonatomic, copy) NSString *dream_accountText;

//: UnsupportedCell
@property (nonatomic, copy) NSString *appFortunateName;

//: Unsupported Model
@property (nonatomic, copy) NSString *noti_sizeText;

@end

@implementation PlungeData

+ (instancetype)sharedInstance {
    static PlungeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PlungeDataToCache:(Byte *)data {
    int stargaze = data[0];
    int turn = data[1];
    for (int i = 0; i < stargaze / 2; i++) {
        int begin = turn + i;
        int end = turn + stargaze - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[turn + stargaze] = 0;
    return data + turn;
}

- (NSString *)StringFromPlungeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PlungeDataToCache:data]];
}  

//: Unsupported Model
- (NSString *)noti_sizeText {
    if (!_noti_sizeText) {
        Byte value[] = {17, 4, 63, 45, 108, 101, 100, 111, 77, 32, 100, 101, 116, 114, 111, 112, 112, 117, 115, 110, 85, 143};
        _noti_sizeText = [self StringFromPlungeData:value];
    }
    return _noti_sizeText;
}

//: not support model
- (NSString *)mSchoolSessionName {
    if (!_mSchoolSessionName) {
        Byte value[] = {17, 2, 108, 101, 100, 111, 109, 32, 116, 114, 111, 112, 112, 117, 115, 32, 116, 111, 110, 42};
        _mSchoolSessionName = [self StringFromPlungeData:value];
    }
    return _mSchoolSessionName;
}

//: Unsupported model type: %@
- (NSString *)dream_accountText {
    if (!_dream_accountText) {
        Byte value[] = {26, 7, 243, 222, 103, 173, 40, 64, 37, 32, 58, 101, 112, 121, 116, 32, 108, 101, 100, 111, 109, 32, 100, 101, 116, 114, 111, 112, 112, 117, 115, 110, 85, 63};
        _dream_accountText = [self StringFromPlungeData:value];
    }
    return _dream_accountText;
}

//: defaultCellID
- (NSString *)showMustContent {
    if (!_showMustContent) {
        Byte value[] = {13, 11, 82, 143, 74, 22, 86, 218, 197, 95, 209, 68, 73, 108, 108, 101, 67, 116, 108, 117, 97, 102, 101, 100, 61};
        _showMustContent = [self StringFromPlungeData:value];
    }
    return _showMustContent;
}

//: UnsupportedCell
- (NSString *)appFortunateName {
    if (!_appFortunateName) {
        Byte value[] = {15, 6, 64, 11, 159, 126, 108, 108, 101, 67, 100, 101, 116, 114, 111, 112, 112, 117, 115, 110, 85, 194};
        _appFortunateName = [self StringFromPlungeData:value];
    }
    return _appFortunateName;
}

//: NTESMessageTranslate
- (NSString *)appNeedValue {
    if (!_appNeedValue) {
        Byte value[] = {20, 8, 97, 155, 246, 205, 204, 54, 101, 116, 97, 108, 115, 110, 97, 114, 84, 101, 103, 97, 115, 115, 101, 77, 83, 69, 84, 78, 80};
        _appNeedValue = [self StringFromPlungeData:value];
    }
    return _appNeedValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.m
// MessageContent
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTableAdapter.h"
#import "ColorAdapter.h"
//: #import "FFFMessageModel.h"
#import "ShowModel.h"
//: #import "FFFMessageCellFactory.h"
#import "PhoneMessageSystemCanneryFactory.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "M80AttributedLabel.h"
#import "VideoTextView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "VideoTextView+MessageContent.h"

//: @interface FFFSessionTableAdapter()
@interface ColorAdapter()

//: @property (nonatomic,strong) FFFMessageCellFactory *cellFactory;
@property (nonatomic,strong) PhoneMessageSystemCanneryFactory *cellFactory;

//: @end
@end

//: @implementation FFFSessionTableAdapter
@implementation ColorAdapter

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _cellFactory = [[FFFMessageCellFactory alloc] init];
        _cellFactory = [[PhoneMessageSystemCanneryFactory alloc] init];
    }
    //: return self;
    return self;
}

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //: return [self.interactor items].count;
    return [self.interactor with].count;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: UITableViewCell *cell = nil;
    UITableViewCell *cell = nil;
    //: id model = [[self.interactor items] objectAtIndex:indexPath.row];
    id model = [[self.interactor with] objectAtIndex:indexPath.row];
    //: if ([model isKindOfClass:[FFFMessageModel class]]) {
    if ([model isKindOfClass:[ShowModel class]]) {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory quantity:tableView
                                   //: forMessageMode:model];
                                   pastLifeStyle:model];
        //: [(FFFMessageCell *)cell setDelegate:self.delegate];
        [(CellView *)cell setDelegate:self.delegate];
        //: [self.interactor willDisplayMessageModel:model];
        [self.interactor when:model];
        //: [(FFFMessageCell *)cell refreshData:model];
        [(CellView *)cell flushVideo:model];
    }
    //: else if ([model isKindOfClass:[FFFTimestampModel class]])
    else if ([model isKindOfClass:[EngraftTing class]])
    {
        //: cell = [self.cellFactory cellInTable:tableView
        cell = [self.cellFactory valueModel:tableView
                                     //: forTimeModel:model];
                                     from:model];
    }
    //: else
    else
    {
        // Release 模式下兜底处理
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UnsupportedCell"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[PlungeData sharedInstance].appFortunateName];
        //: cell.textLabel.text = @"Unsupported Model";
        cell.textLabel.text = [PlungeData sharedInstance].noti_sizeText;

        //: NSAssert(0, @"Unsupported model type: %@", [model class]);
        NSAssert(0, [PlungeData sharedInstance].dream_accountText, [model class]);

    }
    // 最终检查，确保不会返回 nil
    //: if (!cell) {
    if (!cell) {
        //: cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"defaultCellID"];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[PlungeData sharedInstance].showMustContent];
    }

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if ([self.delegate respondsToSelector:@selector(tableView:willDisplayCell:forRowAtIndexPath:)])
    if ([self.delegate respondsToSelector:@selector(courseOfAction:child:checked:)])
    {
        //: [self.delegate tableView:tableView willDisplayCell:cell forRowAtIndexPath:indexPath];
        [self.delegate courseOfAction:tableView child:cell checked:indexPath];
    }
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: CGFloat cellHeight = 0;
    CGFloat cellHeight = 0;
    //: id modelInArray = [[self.interactor items] objectAtIndex:indexPath.row];
    id modelInArray = [[self.interactor with] objectAtIndex:indexPath.row];
    //: if ([modelInArray isKindOfClass:[FFFMessageModel class]])
    if ([modelInArray isKindOfClass:[ShowModel class]])
    {
        //: FFFMessageModel *model = (FFFMessageModel *)modelInArray;
        ShowModel *model = (ShowModel *)modelInArray;

        // 撤回的消息 发送自定义消息
        //: if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
        if (model.message.messageType == NIMMessageTypeCustom && model.message.messageSubType == 20) {
            //: return 0.f;
            return 0.f;
        }
//        if (model.message.messageType == NIMMessageTypeCustom) {
//            return 0.f;
//        }

        //: NIMNotificationObject *object = model.message.messageObject;
        NIMNotificationObject *object = model.message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: return 0.f;
            return 0.f;
        }

        //: CGSize size = [model contentSize:tableView.nim_width];
        CGSize size = [model all:tableView.nim_width];
        //: CGFloat avatarMarginY = [model avatarMargin].y;
        CGFloat avatarMarginY = [model avatarMargin].y;

        //: UIEdgeInsets contentViewInsets = model.contentViewInsets;
        UIEdgeInsets contentViewInsets = model.contentViewInsets;
        //: UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        UIEdgeInsets bubbleViewInsets = model.bubbleViewInsets;
        //: cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;
        cellHeight = size.height + contentViewInsets.top + contentViewInsets.bottom + bubbleViewInsets.top + bubbleViewInsets.bottom;

        //: if ([model needShowRepliedContent]){
        if ([model joint]){
            //: CGSize replySize = [model replyContentSize:tableView.width];
            CGSize replySize = [model high:tableView.width];
            //: UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            UIEdgeInsets replyContentViewInsets = model.replyContentViewInsets;
            //: UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            UIEdgeInsets replyBubbleViewInsets = model.replyBubbleViewInsets;
            //: cellHeight += replySize.height+20 +
            cellHeight += replySize.height+20 +
                            //: replyContentViewInsets.top +
                            replyContentViewInsets.top +
                            //: replyContentViewInsets.bottom +
                            replyContentViewInsets.bottom +
                            //: replyBubbleViewInsets.top +
                            replyBubbleViewInsets.top +
                            //: replyBubbleViewInsets.bottom;
                            replyBubbleViewInsets.bottom;
        }

        //: if([model.message.localExt.allKeys containsObject:@"NTESMessageTranslate"])
        if([model.message.localExt.allKeys containsObject:[PlungeData sharedInstance].appNeedValue])
        {
            //: NSString *aString = [model.message.localExt objectForKey:@"NTESMessageTranslate"];
            NSString *aString = [model.message.localExt objectForKey:[PlungeData sharedInstance].appNeedValue];

            //: M80AttributedLabel *labtran = [[M80AttributedLabel alloc]initWithFrame:CGRectZero];
            VideoTextView *labtran = [[VideoTextView alloc]initWithFrame:CGRectZero];
            //: [labtran nim_setText:aString];
            [labtran infoCookie:aString];
            //: labtran.font = [UIFont systemFontOfSize:13];
            labtran.font = [UIFont systemFontOfSize:13];

            //: CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            CGFloat msgBubbleMaxWidth = (tableView.nim_width - 130);
            //: CGFloat bubbleLeftToContent = 14;
            CGFloat bubbleLeftToContent = 14;
            //: CGFloat contentRightToBubble = 14;
            CGFloat contentRightToBubble = 14;
            //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);
            CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - contentRightToBubble - bubbleLeftToContent);

            //: CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
            CGSize replySize = [labtran sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];

            //: cellHeight += replySize.height+10;
            cellHeight += replySize.height+10;

        }




        //: if ([model needShowEmoticonsView])
        if ([model date])
        {
            //: cellHeight += model.emoticonsContainerSize.height;
            cellHeight += model.emoticonsContainerSize.height;
        }

        //: if (model.shouldShowPinContent && model.pinUserName.length) {
        if (model.shouldShowPinContent && model.pinUserName.length) {
            //: cellHeight += 22;
            cellHeight += 22;
        }

        //: if ([model needShowReplyCountContent] && model.childMessagesCount > 0)
        if ([model tingList] && model.childMessagesCount > 0)
        {
            //: cellHeight += 25;
            cellHeight += 25;
        }


        //: cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;
        cellHeight = cellHeight > (model.avatarSize.height + avatarMarginY) ? cellHeight : model.avatarSize.height + avatarMarginY;


    }
    //: else if ([modelInArray isKindOfClass:[FFFTimestampModel class]])
    else if ([modelInArray isKindOfClass:[EngraftTing class]])
    {
        //: cellHeight = [(FFFTimestampModel *)modelInArray height];
        cellHeight = [(EngraftTing *)modelInArray height];
    }
    //: else
    else
    {
        //: NSAssert(0, @"not support model");
        NSAssert(0, [PlungeData sharedInstance].mSchoolSessionName);
    }
    //: return cellHeight;
    return cellHeight;
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    //: CGFloat currentOffsetY = scrollView.contentOffset.y;
    CGFloat currentOffsetY = scrollView.contentOffset.y;
    //: if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {
    if (currentOffsetY + scrollView.frame.size.height > scrollView.contentSize.height && scrollView.frame.size.height <= scrollView.contentSize.height && scrollView.isDragging) {

        //: [self.interactor pullUp];
        [self.interactor step];
    }
}

//: @end
@end