// __DEBUG__
// __CLOSE_PRINT__
//
//  ReferenceTitleManager.h
//  sohunews
//
//  Created by tianyulong on 2019/8/14.
//  Copyright © 2019 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "CCCContactPerson.h"
#import "ButtonInput.h"

//: @interface CCCAddressBookManager : NSObject
@interface ReferenceTitleManager : NSObject

//: + (instancetype)sharedInstance;;
+ (instancetype)addSession;;


//: - (void)showAlertFromController:(UIViewController *)controller;
- (void)table:(UIViewController *)controller;

/**
 请求授权
 
 @param completion 回调
 */
//: - (void)requestAddressBookAuthorization:(void (^) (BOOL authorization))completion;
- (void)colorOption:(void (^) (BOOL authorization))completion;

/**
 获取联系人列表（未分组的通讯录）（以用户为单位 ，不以手机号为单位）
 
 @param completcion 回调
 */
//: - (void)accessContactsComplection:(void (^)(BOOL succeed, NSArray <CCCContactPerson *> *contacts))completcion;
- (void)attackComplection:(void (^)(BOOL succeed, NSArray <ButtonInput *> *contacts))completcion;

/**
 获取联系人列表（已分组的通讯录）
 
 @param completcion 回调
 */
//: - (void)accessSectionContactsComplection:(void (^)(BOOL succeed, NSArray <LJSectionPerson *> *contacts, NSArray <NSString *> *keys))completcion;
- (void)labOf:(void (^)(BOOL succeed, NSArray <ImagePerson *> *contacts, NSArray <NSString *> *keys))completcion;



/**
 获取联系人列表（未分组的通讯录）（以手机号为单位）
 
 @param completcion 回调
 */
//: - (void)accessContactsWithMobileComplection:(void (^)(BOOL succeed, NSArray <NSDictionary *> *mobileContacts))completcion;
- (void)mobile:(void (^)(BOOL succeed, NSArray <NSDictionary *> *mobileContacts))completcion;

//: @end
@end