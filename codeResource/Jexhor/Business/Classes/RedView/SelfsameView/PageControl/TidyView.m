
#import <Foundation/Foundation.h>

typedef struct {
    Byte midafternoon;
    Byte *physicalProperty;
    unsigned int future;
} StructGoatData;

@interface GoatData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation GoatData

+ (instancetype)sharedInstance {
    static GoatData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)GoatDataToByte:(StructGoatData *)data {
    for (int i = 0; i < data->future; i++) {
        data->physicalProperty[i] ^= data->midafternoon;
    }
    data->physicalProperty[data->future] = 0;
    return data->physicalProperty;
}

- (NSString *)StringFromGoatData:(StructGoatData *)data {
    return [NSString stringWithUTF8String:(char *)[self GoatDataToByte:data]];
}

//: You must override %@ in %@
- (NSString *)mainMilkValue {
    /* static */ NSString *mainMilkValue = nil;
    if (!mainMilkValue) {
        StructGoatData value = (StructGoatData){150, (Byte []){207, 249, 227, 182, 251, 227, 229, 226, 182, 249, 224, 243, 228, 228, 255, 242, 243, 182, 179, 214, 182, 255, 248, 182, 179, 214, 20}, 26};
        mainMilkValue = [self StringFromGoatData:&value];
    }
    return mainMilkValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TidyView.m
//  ActivityControl
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAAbstractDotView.h"
#import "TidyView.h"

//: @implementation TAAbstractDotView
@implementation TidyView


//: - (id)init
- (id)init
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:[[GoatData sharedInstance] mainMilkValue], NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}


//: - (void)changeActivityState:(BOOL)active
- (void)changeState:(BOOL)active
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:[[GoatData sharedInstance] mainMilkValue], NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}

//: @end
@end