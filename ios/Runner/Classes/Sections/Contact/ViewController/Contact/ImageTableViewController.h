// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageTableViewController.h
//  NIM
//
//  Created by Genning-Work on 2020/1/2.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol NTESContactSearchDelegate <NSObject>
@protocol ContactInsertSearchDelegate <NSObject>

//不搜索team
//: - (BOOL)disableSearchTeam;
- (BOOL)titleTable;

//忽略大小写
//: - (BOOL)ignoreCase;
- (BOOL)contentTing;

//: @end
@end

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESContactSearchViewController : UITableViewController
@interface ImageTableViewController : UITableViewController

//: @property (nonatomic, assign) id <NTESContactSearchDelegate> delegate;
@property (nonatomic, assign) id <ContactInsertSearchDelegate> delegate;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END