
#import <Foundation/Foundation.h>

NSString *StringFromNameData(Byte *data);


//: cell
Byte showNameBlackKey[] = {85, 4, 62, 12, 215, 42, 156, 32, 63, 151, 79, 171, 161, 163, 170, 170, 47};

//: #F4E9FF
Byte app_blueMsg[] = {48, 7, 81, 7, 90, 151, 12, 116, 151, 133, 150, 138, 151, 151, 144};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MustScrollView.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListView.h"
#import "MustScrollView.h"

//: @interface SelectedListView ()<UITableViewDelegate , UITableViewDataSource>
@interface MustScrollView ()<UITableViewDelegate , UITableViewDataSource>

//: @property (nonatomic , strong ) NSMutableArray *dataArray;
@property (nonatomic , strong ) NSMutableArray *dataArray;

//: @end
@end

//: @implementation SelectedListView
@implementation MustScrollView

//: - (void)dealloc{
- (void)dealloc{

    //: _dataArray = nil;
    _dataArray = nil;
}

//: - (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{

    //: self = [super initWithFrame:frame style:style];
    self = [super initWithFrame:frame style:style];

    //: if (self) {
    if (self) {

        //初始化数据

        //: [self initData];
        [self initMax];
    }

    //: return self;
    return self;
}

//: #pragma mark - 初始化数据
#pragma mark - 初始化数据

//: - (void)initData{
- (void)initMax{

    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

    //: self.delegate = self;
    self.delegate = self;

    //: self.dataSource = self;
    self.dataSource = self;

    //: self.bounces = NO;
    self.bounces = NO;

    //: self.allowsMultipleSelectionDuringEditing = YES; 
    self.allowsMultipleSelectionDuringEditing = YES; //支持同时选中多行

    //: self.separatorInset = UIEdgeInsetsMake(0, 15, 0, 15);
    self.separatorInset = UIEdgeInsetsMake(0, 15, 0, 15);

    //: self.separatorColor = [[UIColor grayColor] colorWithAlphaComponent:0.2f];
    self.separatorColor = [[UIColor grayColor] colorWithAlphaComponent:0.2f];

    //: self.dataArray = [NSMutableArray array];
    self.dataArray = [NSMutableArray array];

    //: [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:StringFromNameData(showNameBlackKey)];
}

//: - (void)setArray:(NSArray<SelectedListModel *> *)array{
- (void)setArray:(NSArray<DeviceCenterModel *> *)array{

    //: _array = array;
    _array = array;

    //: [self reloadData];
    [self reloadData];

    //: [self setEditing:!self.isSingle animated:NO];
    [self setEditing:!self.isSingle animated:NO];

    //: CGRect selfFrame = self.frame;
    CGRect selfFrame = self.frame;

    //: selfFrame.size.height = array.count * 50.0f;
    selfFrame.size.height = array.count * 50.0f;

    //: self.frame = selfFrame;
    self.frame = selfFrame;
}

//: - (void)setIsSingle:(BOOL)isSingle{
- (void)setIsSingle:(BOOL)isSingle{

    //: _isSingle = isSingle;
    _isSingle = isSingle;

    //: [self setEditing:!isSingle animated:NO];
    [self setEditing:!isSingle animated:NO];
}

//: - (void)finish{
- (void)inputDayModel{

    //: if (self.selectedBlock) self.selectedBlock(self.dataArray);
    if (self.selectedBlock) self.selectedBlock(self.dataArray);
}

//: #pragma mark - UITableViewDelegate , UITableViewDataSource
#pragma mark - UITableViewDelegate , UITableViewDataSource

//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    //: return 1;
    return 1;
}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    //: return self.array.count;
    return self.array.count;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    //: return 50.0f;
    return 50.0f;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    //: UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:StringFromNameData(showNameBlackKey)];

    //: SelectedListModel *model = self.array[indexPath.row];
    DeviceCenterModel *model = self.array[indexPath.row];

    //: cell.textLabel.text = model.title;
    cell.textLabel.text = model.title;

    //: cell.backgroundColor = [UIColor clearColor];
    cell.backgroundColor = [UIColor clearColor];

    //: cell.selectedBackgroundView = [UIView new];
    cell.selectedBackgroundView = [UIView new];

    //: cell.selectedBackgroundView.backgroundColor = [UIColor colorWithHexString:@"#F4E9FF"];
    cell.selectedBackgroundView.backgroundColor = [UIColor user:StringFromNameData(app_blueMsg)];

    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: id model = self.array[indexPath.row];
    id model = self.array[indexPath.row];

    //: [self.dataArray addObject:model];
    [self.dataArray addObject:model];

    //: if (self.isSingle) {
    if (self.isSingle) {

        //: [tableView deselectRowAtIndexPath:indexPath animated:YES];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];

        //: [self finish];
        [self inputDayModel];

    //: } else {
    } else {

        //: if (self.changedBlock) self.changedBlock(self.dataArray);
        if (self.changedBlock) self.changedBlock(self.dataArray);
    }

}

//: - (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {

    //: id model = self.array[indexPath.row];
    id model = self.array[indexPath.row];

    //: if (!self.isSingle) {
    if (!self.isSingle) {

        //: [self.dataArray removeObject:model];
        [self.dataArray removeObject:model];

        //: if (self.changedBlock) self.changedBlock(self.dataArray);
        if (self.changedBlock) self.changedBlock(self.dataArray);
    }
}

//: @end
@end

Byte * NameDataToCache(Byte *data) {
    int downwards = data[0];
    int emotion = data[1];
    Byte sizeMain = data[2];
    int userColor = data[3];
    if (!downwards) return data + userColor;
    for (int i = userColor; i < userColor + emotion; i++) {
        int value = data[i] - sizeMain;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[userColor + emotion] = 0;
    return data + userColor;
}

NSString *StringFromNameData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)NameDataToCache(data)];
}
