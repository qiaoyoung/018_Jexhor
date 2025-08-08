// __DEBUG__
// __CLOSE_PRINT__
//
//  WorkInputProtocol.h
// MessageContent
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

// __M_A_C_R_O__

//: @class WorkMediaItem;
@class AccountAction;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol ButtonDelegate <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(WorkMediaItem *)item;
- (BOOL)coloring:(AccountAction *)item;

//: - (void)onTextChanged:(id)sender;
- (void)empties:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)straightness:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           imageChecked:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)completePower:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 range:(NSString *)catalogId;

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage;
- (void)page:(NSString *)text message:(NSArray *)atUsers screenLabel:(NIMMessage *)replymessage;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)emoticonName:(id)emoticon;

//: - (void)onCancelRecording;
- (void)shouldReply;

//: - (void)onStopRecording;
- (void)viewCell;

//: - (void)onStartRecording;
- (void)whenStart;

//: - (void)onTapMoreBtn:(id)sender;
- (void)beBtn:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)willing:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)gammaHydroxybutyrateSection:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)inputs:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)titled:(id)sender;

//: - (void)didReplyCancelled;
- (void)oldCancelled;

//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message;
- (void)mode:(NSInteger)index lengthMessage:(NIMMessage *)message;

//: - (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets;
- (void)toArray:(NSArray<PHAsset *> *)assets;

//: @end
@end
