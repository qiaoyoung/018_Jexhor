
#import <Foundation/Foundation.h>

@interface WingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WingData

+ (instancetype)sharedInstance {
    static WingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WingDataToCache:(Byte *)data {
    int go = data[0];
    Byte randomDefine = data[1];
    int cheeryStrange = data[2];
    for (int i = cheeryStrange; i < cheeryStrange + go; i++) {
        int value = data[i] - randomDefine;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[cheeryStrange + go] = 0;
    return data + cheeryStrange;
}

- (NSString *)StringFromWingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self WingDataToCache:data]];
}

//: LaunchImage
- (NSString *)mainSizeContent {
    /* static */ NSString *mainSizeContent = nil;
    if (!mainSizeContent) {
        Byte value[] = {11, 23, 11, 127, 18, 178, 56, 92, 219, 243, 19, 99, 120, 140, 133, 122, 127, 96, 132, 120, 126, 124, 238};
        mainSizeContent = [self StringFromWingData:value];
    }
    return mainSizeContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "WaitViewController.h"
#import "DataViewController.h"

//: @interface WaitViewController ()
@interface DataViewController ()

//: @end
@end

//: @implementation WaitViewController
@implementation DataViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bgImgV = [[UIImageView alloc] init];
    UIImageView *bgImgV = [[UIImageView alloc] init];
    //: bgImgV.image = [UIImage imageNamed:@"LaunchImage"];
    bgImgV.image = [UIImage imageNamed:[[WingData sharedInstance] mainSizeContent]];
    //: bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    //: [self.view addSubview:bgImgV];
    [self.view addSubview:bgImgV];
}

//: @end
@end