// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFInputProtocol.h
// Secret
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

// __M_A_C_R_O__

//: @class FFFMediaItem;
@class RecordAlbumItem;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol SizeDelegate <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(FFFMediaItem *)item;
- (BOOL)shareMedia:(RecordAlbumItem *)item;

//: - (void)onTextChanged:(id)sender;
- (void)celling:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)pinSecret:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           accountTing:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)monthCatalog:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 interval:(NSString *)catalogId;

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage;
- (void)language:(NSString *)text nameReplymessage:(NSArray *)atUsers cell:(NIMMessage *)replymessage;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)anointClean:(id)emoticon;

//: - (void)onCancelRecording;
- (void)viewNext;

//: - (void)onStopRecording;
- (void)pullUp;

//: - (void)onStartRecording;
- (void)keepPop;

//: - (void)onTapMoreBtn:(id)sender;
- (void)green:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)pathBlock:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)eventOnShow:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)progressed:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)lengthsing:(id)sender;

//: - (void)didReplyCancelled;
- (void)nameReply;

//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message;
- (void)item:(NSInteger)index input:(NIMMessage *)message;

//: - (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets;
- (void)accounts:(NSArray<PHAsset *> *)assets;

//: @end
@end