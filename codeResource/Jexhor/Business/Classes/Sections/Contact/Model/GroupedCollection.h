// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupedCollection.h
//  NIM
//
//  Created by Xuhui on 15/3/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @protocol NTESGroupMemberProtocol <NSObject>
@protocol CentreProtocol <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)policy;
//: - (NSString *)memberId;
- (NSString *)examineed;
//: - (id)sortKey;
- (id)key;

//: @end
@end

//: @interface NTESGroupedDataCollection : NSObject
@interface GroupedCollection : NSObject

//: @property (nonatomic, strong) NSArray *members;
@property (nonatomic, strong) NSArray *members;
//: @property (nonatomic, copy) NSComparator groupTitleComparator;
@property (nonatomic, copy) NSComparator groupTitleComparator;
//: @property (nonatomic, copy) NSComparator groupMemberComparator;
@property (nonatomic, copy) NSComparator groupMemberComparator;
//: @property (nonatomic, readonly) NSArray *sortedGroupTitles;
@property (nonatomic, readonly) NSArray *sortedGroupTitles;

//: - (void)addGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)userMember:(id<CentreProtocol>)member;

//: - (void)removeGroupMember:(id<NTESGroupMemberProtocol>)member;
- (void)reply:(id<CentreProtocol>)member;

//: - (void)addGroupAboveWithTitle:(NSString *)title members:(NSArray *)members;
- (void)exceptApplyTable:(NSString *)title messageAll:(NSArray *)members;

//: - (NSString *)titleOfGroup:(NSInteger)groupIndex;
- (NSString *)fiscalYear:(NSInteger)groupIndex;

//: - (NSArray *)membersOfGroup:(NSInteger)groupIndex;
- (NSArray *)decisionMaker:(NSInteger)groupIndex;

//: - (id<NTESGroupMemberProtocol>)memberOfIndex:(NSIndexPath *)indexPath;
- (id<CentreProtocol>)recent:(NSIndexPath *)indexPath;

//: - (id<NTESGroupMemberProtocol>)memberOfId:(NSString *)uid;
- (id<CentreProtocol>)fastening:(NSString *)uid;

//: - (NSInteger)groupCount;
- (NSInteger)magnitudeInterval;

//: - (NSInteger)memberCountOfGroup:(NSInteger)groupIndex;
- (NSInteger)openSize:(NSInteger)groupIndex;

//: @end
@end