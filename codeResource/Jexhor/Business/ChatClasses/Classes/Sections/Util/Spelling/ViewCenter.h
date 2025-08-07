// __DEBUG__
// __CLOSE_PRINT__
//
//  BeforeCenter.h
//  NIM
//  用于拼音全称和简称生成查询读取的类
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NIMSpellingUnit : NSObject
@interface TempColor : NSObject
//: @property (nonatomic,strong) NSString *fullSpelling;
@property (nonatomic,strong) NSString *fullSpelling;
//: @property (nonatomic,strong) NSString *shortSpelling;
@property (nonatomic,strong) NSString *shortSpelling;
//: @end
@end

//: @interface FFFSpellingCenter : NSObject
@interface ViewCenter : NSObject
{
    //: NSMutableDictionary *_spellingCache; 
    NSMutableDictionary *_spellingCache; //全拼，简称cache
    //: NSString *_filepath;
    NSString *_filepath;
}
//: + (FFFSpellingCenter *)sharedCenter;
+ (ViewCenter *)centerStage;
//: - (void)saveSpellingCache; 
- (void)memberInsert; //写入缓存

//: - (NIMSpellingUnit *)spellingForString: (NSString *)source; 
- (TempColor *)total: (NSString *)source; //全拼，简拼 (全是小写)
//: - (NSString *)firstLetter: (NSString *)input; 
- (NSString *)premierCurrentDeadLetter: (NSString *)input; //首字母
//: @end
@end