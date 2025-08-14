// __DEBUG__
// __CLOSE_PRINT__
//
//  DataCollection.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol NTESGroupMemberProtocol <NSObject>
@protocol SessionCreate <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)groupTitle;
//: - (NSString *)memberId;
- (NSString *)memberId;
//: - (id)sortKey;
- (id)sortKey;

//: @end
@end

//: @interface NTESGroupedDataCollection : NSObject
@interface DataCollection : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;

//: - (void)addGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)time:(id<SessionCreate>)member;

//: - (void)removeGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)need:(id<SessionCreate>)member;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)with:(NSString *)title counternalRepresentation:(NSArray *)members;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)parent:(NSInteger)groupIndex;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)upwardly:(NSInteger)groupIndex;

//: - (id<NTESGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<SessionCreate>)fullMargin:(NSIndexPath *)indexPath;

//: - (id<NTESGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<SessionCreate>)commissionerColorId:(NSString *)uid;

//: - (NSInteger)groupCount;
- (NSInteger)someSuccess;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)show:(NSInteger)groupIndex;

//: @end
@end
