
#import <Foundation/Foundation.h>

@interface DomainNameData : NSObject

+ (instancetype)sharedInstance;

//: collectionCell
@property (nonatomic, copy) NSString *dream_preventionTitle;

@end

@implementation DomainNameData

+ (instancetype)sharedInstance {
    static DomainNameData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DomainNameDataToCache:(Byte *)data {
    int cliff = data[0];
    Byte sizeNovel = data[1];
    int submitSpeculate = data[2];
    for (int i = submitSpeculate; i < submitSpeculate + cliff; i++) {
        int value = data[i] + sizeNovel;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[submitSpeculate + cliff] = 0;
    return data + submitSpeculate;
}

- (NSString *)StringFromDomainNameData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DomainNameDataToCache:data]];
}

//: collectionCell
- (NSString *)dream_preventionTitle {
    if (!_dream_preventionTitle) {
        Byte value[] = {14, 94, 4, 241, 5, 17, 14, 14, 7, 5, 22, 11, 17, 16, 229, 7, 14, 14, 46};
        _dream_preventionTitle = [self StringFromDomainNameData:value];
    }
    return _dream_preventionTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  StatusInfoView.m
// MessageContent
//
//  Created by chris on 15/10/15.
//  Copyright © 2015年 NetEase. All rights reserved.
//
//: #pragma mark - NIMMemebrGroupData
#pragma mark - ActinideData

// __M_A_C_R_O__
//: #import "WorkMemberGroupView.h"
#import "StatusInfoView.h"
//: #import "WorkCardHeaderCell.h"
#import "NameReusableView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WorkCardOperationItem.h"
#import "ProviderItem.h"
//: #import "WorkTeamCardMemberItem.h"
#import "MessageItem.h"

//: @implementation NIMMemebrGroupData
@implementation ActinideData

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _opera = CardHeaderOpeatorNone;
        _opera = CardHeaderOpeatorNone;
    }
    //: return self;
    return self;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return [_userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
    return [_userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
}

//: @end
@end

//: #pragma mark - WorkMemberGroupView
#pragma mark - StatusInfoView

//: @interface WorkMemberGroupView()<UICollectionViewDataSource,UICollectionViewDelegate,WorkCardHeaderCellDelegate>
@interface StatusInfoView()<UICollectionViewDataSource,UICollectionViewDelegate,BottomSearchName>

//: @property (nonatomic,strong) NSMutableArray *data;
@property (nonatomic,strong) NSMutableArray *data;

//: @property (nonatomic,strong) NSMutableDictionary *operatorTitle;
@property (nonatomic,strong) NSMutableDictionary *operatorTitle;

//: @end
@end

//: @implementation WorkMemberGroupView
@implementation StatusInfoView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.collectionView.delegate = self;
        self.collectionView.delegate = self;
        //: self.collectionView.dataSource = self;
        self.collectionView.dataSource = self;
        //: [self addSubview:self.collectionView];
        [self addSubview:self.collectionView];
    }
    //: return self;
    return self;
}

//: - (void)refreshDatas:(NSArray <NIMMemebrGroupData *> *)datas
- (void)time:(NSArray <ActinideData *> *)datas
           //: operators:(NIMKitCardHeaderOpeator)operators{
           bubble:(NIMKitCardHeaderOpeator)operators{
    //: _showAddOperator = (operators & CardHeaderOpeatorAdd) != 0;
    _showAddOperator = (operators & CardHeaderOpeatorAdd) != 0;
    //: _showRemoveOperator = (operators & CardHeaderOpeatorRemove) != 0;
    _showRemoveOperator = (operators & CardHeaderOpeatorRemove) != 0;

    //normal item
    //: self.data = [[NSMutableArray alloc] initWithArray:datas];
    self.data = [[NSMutableArray alloc] initWithArray:datas];

    //add item
    //: if (self.showAddOperator) {
    if (self.showAddOperator) {
        //: NIMMemebrGroupData *groupData = [[NIMMemebrGroupData alloc] init];
        ActinideData *groupData = [[ActinideData alloc] init];
        //: groupData.opera = CardHeaderOpeatorAdd;
        groupData.opera = CardHeaderOpeatorAdd;
        //: [self.data addObject:groupData];
        [self.data addObject:groupData];
    }

    //remove item
    //: if (self.showRemoveOperator) {
    if (self.showRemoveOperator) {
        //: NIMMemebrGroupData *groupData = [[NIMMemebrGroupData alloc] init];
        ActinideData *groupData = [[ActinideData alloc] init];
        //: groupData.opera = CardHeaderOpeatorRemove;
        groupData.opera = CardHeaderOpeatorRemove;
        //: [self.data addObject:groupData];
        [self.data addObject:groupData];
    }
    //: [self.collectionView reloadData];
    [self.collectionView reloadData];
}

//: - (void)setTitle:(NSString *)title forOperator:(NIMKitCardHeaderOpeator)opera{
- (void)by:(NSString *)title nearScaleOperator:(NIMKitCardHeaderOpeator)opera{
    //: if (!self.operatorTitle) {
    if (!self.operatorTitle) {
        //: self.operatorTitle = [[NSMutableDictionary alloc] init];
        self.operatorTitle = [[NSMutableDictionary alloc] init];
    }
    //: self.operatorTitle[@(opera)] = title;
    self.operatorTitle[@(opera)] = title;
}

//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: CGFloat width = size.width;
    CGFloat width = size.width;
    //: NSInteger sectionNumber = [self numberOfSections:width];
    NSInteger sectionNumber = [self quantityMin:width];
    //: CGFloat height = 80 * sectionNumber + 15 * (sectionNumber-1) + 25 * 2;
    CGFloat height = 80 * sectionNumber + 15 * (sectionNumber-1) + 25 * 2;
    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.collectionView.contentInset = self.sectionInsets;
    self.collectionView.contentInset = self.searched;
}

//: #pragma mark - UICollectionViewDataSource
#pragma mark - UICollectionViewDataSource
//: - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //: NSInteger lastTotal = self.collectionItemNumber * section;
    NSInteger lastTotal = self.oortCloud * section;
    //: NSInteger remain = self.data.count - lastTotal;
    NSInteger remain = self.data.count - lastTotal;
    //: return remain < self.collectionItemNumber ? remain:self.collectionItemNumber;
    return remain < self.oortCloud ? remain:self.oortCloud;
}

//: - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    //: NSInteger sections = self.data.count / self.collectionItemNumber;
    NSInteger sections = self.data.count / self.oortCloud;
    //: return self.data.count % self.collectionItemNumber ? sections + 1 : sections;
    return self.data.count % self.oortCloud ? sections + 1 : sections;
}

//: - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    //: WorkCardHeaderCell *cell;
    NameReusableView *cell;
    //: NIMMemebrGroupData *data = [self dataAtIndexPath:indexPath];
    ActinideData *data = [self send:indexPath];
    //: if (data.opera == CardHeaderOpeatorAdd || data.opera == CardHeaderOpeatorRemove) {
    if (data.opera == CardHeaderOpeatorAdd || data.opera == CardHeaderOpeatorRemove) {
        //: cell = [self buildOperatorCell:data.opera indexPath:indexPath];
        cell = [self graduatedTable:data.opera content:indexPath];
    //: }else{
    }else{
        //: cell = [self buildUserCell:data indexPath:indexPath];
        cell = [self input:data title:indexPath];
    }
    //: cell.delegate = self;
    cell.delegate = self;
    //: return cell;
    return cell;
}

//: - (NIMMemebrGroupData *)dataAtIndexPath:(NSIndexPath*)indexpath{
- (ActinideData *)send:(NSIndexPath*)indexpath{
    //: NSInteger index = indexpath.section * self.collectionItemNumber;
    NSInteger index = indexpath.section * self.oortCloud;
    //: index += indexpath.row;
    index += indexpath.row;
    //: return self.data[index];
    return self.data[index];
}

//: #pragma mark - WorkCardHeaderCellDelegate
#pragma mark - BottomSearchName
//: - (void)cellDidSelected:(WorkCardHeaderCell *)cell{
- (void)userDown:(NameReusableView *)cell{
    //: NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    //: NIMMemebrGroupData *groupData = [self dataAtIndexPath:indexPath];
    ActinideData *groupData = [self send:indexPath];
    //: if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(didSelectMemberId:)]) {
    if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(associates:)]) {
        //: [self.delegate didSelectMemberId:groupData.userId];
        [self.delegate associates:groupData.userId];
    //: }else if ([self.delegate respondsToSelector:@selector(didSelectOperator:)]){
    }else if ([self.delegate respondsToSelector:@selector(menuTo:)]){
        //: [self.delegate didSelectOperator:groupData.opera];
        [self.delegate menuTo:groupData.opera];
    }
}

//: - (void)cellShouldBeRemoved:(WorkCardHeaderCell*)cell{
- (void)untilImage:(NameReusableView*)cell{
    //: NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    //: NIMMemebrGroupData *groupData = [self dataAtIndexPath:indexPath];
    ActinideData *groupData = [self send:indexPath];
    //: if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(didSelectRemoveButtonWithMemberId:)]) {
    if (groupData.opera == CardHeaderOpeatorNone && [self.delegate respondsToSelector:@selector(pending:)]) {
        //: [self.delegate didSelectRemoveButtonWithMemberId:groupData.userId];
        [self.delegate pending:groupData.userId];
    }
}

//: #pragma mark - UICollectionViewDelegateFlowLayout
#pragma mark - UICollectionViewDelegateFlowLayout
//: - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
- (CGSize)key_strong:(UICollectionView *)collectionView start:(UICollectionViewLayout*)collectionViewLayout at:(NSIndexPath *)indexPath{
    //: return CGSizeMake(58, 80);
    return CGSizeMake(58, 80);
}

//: - (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
- (UIEdgeInsets)sizeIndex:(UICollectionView *)collectionView nearColor:(UICollectionViewLayout*)collectionViewLayout message:(NSInteger)section{
    //: if (section == 0) {
    if (section == 0) {
        //: return UIEdgeInsetsMake(25, 0, 0, 0);
        return UIEdgeInsetsMake(25, 0, 0, 0);
    }
    //: return UIEdgeInsetsMake(15, 0, 0, 0);
    return UIEdgeInsetsMake(15, 0, 0, 0);
}

//: #pragma mark - Getter & Setter
#pragma mark - Getter & Setter
//: - (UICollectionView *)collectionView{
- (UICollectionView *)collectionView{
    //: if (!_collectionView) {
    if (!_collectionView) {
        //: UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        //: layout.minimumInteritemSpacing = self.collectionEdgeInsetLeftRight;
        layout.minimumInteritemSpacing = self.pastTitle;
        //: _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        //: _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        _collectionView.backgroundColor = [UIColor colorWithRed:236.0/255.0 green:241.0/255.0 blue:245.0/255.0 alpha:1];
        //: _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        //: _collectionView.delegate = self;
        _collectionView.delegate = self;
        //: _collectionView.dataSource = self;
        _collectionView.dataSource = self;
        //: [_collectionView registerClass:[WorkCardHeaderCell class] forCellWithReuseIdentifier:@"collectionCell"];
        [_collectionView registerClass:[NameReusableView class] forCellWithReuseIdentifier:[DomainNameData sharedInstance].dream_preventionTitle];
    }
    //: return _collectionView;
    return _collectionView;
}

//: - (CGFloat)collectionEdgeInsetLeftRight{
- (CGFloat)pastTitle{
    //: return 20;
    return 20;
}

//: #pragma mark - Private
#pragma mark - Private
//: - (WorkCardHeaderCell *)buildUserCell:(NIMMemebrGroupData *)data indexPath:(NSIndexPath *)indexPath{
- (NameReusableView *)input:(ActinideData *)data title:(NSIndexPath *)indexPath{
    //: WorkCardHeaderCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    NameReusableView *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:[DomainNameData sharedInstance].dream_preventionTitle forIndexPath:indexPath];
    //: NIMCardMemberItem *item = [[NIMCardMemberItem alloc] init];
    MinorLeagueTeamTing *item = [[MinorLeagueTeamTing alloc] init];
    //: item.userId = data.userId;
    item.userId = data.userId;

    //: [cell refreshData:item];
    [cell collageData:item];
    //: cell.removeBtn.hidden = (self.enableRemove ? item.isMyUserId : YES);
    cell.removeBtn.hidden = (self.enableRemove ? item.isMyUserId : YES);
    //: return cell;
    return cell;
}

//: - (WorkCardHeaderCell *)buildOperatorCell:(NIMKitCardHeaderOpeator)operator indexPath:(NSIndexPath *)indexPath{
- (NameReusableView *)graduatedTable:(NIMKitCardHeaderOpeator)operator content:(NSIndexPath *)indexPath{
    //: WorkCardHeaderCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    NameReusableView *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:[DomainNameData sharedInstance].dream_preventionTitle forIndexPath:indexPath];
    //: WorkCardOperationItem *item = [[WorkCardOperationItem alloc] initWithOperation:operator];
    ProviderItem *item = [[ProviderItem alloc] initWithViewRecord:operator];
    //: if (self.operatorTitle[@(operator)]) {
    if (self.operatorTitle[@(operator)]) {
        //: item.title = self.operatorTitle[@(operator)];
        item.title = self.operatorTitle[@(operator)];
    }
    //: [cell refreshData:item];
    [cell collageData:item];
    //: cell.removeBtn.hidden = YES;
    cell.removeBtn.hidden = YES;
    //: return cell;
    return cell;
}

//: - (UIEdgeInsets)sectionInsets {
- (UIEdgeInsets)searched {
    //: CGFloat left = (self.collectionView.nim_width - ((58 + self.collectionEdgeInsetLeftRight)) * self.collectionItemNumber - self.collectionEdgeInsetLeftRight) * 0.5;
    CGFloat left = (self.collectionView.nim_width - ((58 + self.pastTitle)) * self.oortCloud - self.pastTitle) * 0.5;
    //: left = left > 20 ? left : 20;
    left = left > 20 ? left : 20;
    //: return UIEdgeInsetsMake(self.collectionView.contentInset.top, left, self.collectionView.contentInset.bottom, left);
    return UIEdgeInsetsMake(self.collectionView.contentInset.top, left, self.collectionView.contentInset.bottom, left);
}

//: - (NSInteger)collectionItemNumber{
- (NSInteger)oortCloud{
    //: return [self collectionItemNumber:self.collectionView.nim_width];
    return [self exceptShowShould:self.collectionView.nim_width];
}

//: - (NSInteger)collectionItemNumber:(CGFloat)width{
- (NSInteger)exceptShowShould:(CGFloat)width{
    //: CGFloat minSpace = 20; 
    CGFloat minSpace = 20; //防止计算到最后出现左右贴边的情况
    //: return (int)((width - minSpace)/ (58 + self.collectionEdgeInsetLeftRight));
    return (int)((width - minSpace)/ (58 + self.pastTitle));
}

//: - (NSInteger)numberOfSections:(CGFloat)width{
- (NSInteger)quantityMin:(CGFloat)width{
    //: NSInteger collectionNumber = [self collectionItemNumber:width];
    NSInteger collectionNumber = [self exceptShowShould:width];
    //: NSInteger sections = self.data.count / collectionNumber;
    NSInteger sections = self.data.count / collectionNumber;
    //: return self.data.count % collectionNumber ? sections + 1 : sections;
    return self.data.count % collectionNumber ? sections + 1 : sections;
}

//: @end
@end
