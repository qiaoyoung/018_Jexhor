
#import <Foundation/Foundation.h>

typedef struct {
    Byte broTitle;
    Byte *mythEvidence;
    unsigned int startOutPress;
	int phoneMessage;
	int inAnyEvent;
} StructEvidenceData;

@interface EvidenceData : NSObject

+ (instancetype)sharedInstance;

//: LaunchImage
@property (nonatomic, copy) NSString *kFileMiddleValue;

@end

@implementation EvidenceData

+ (instancetype)sharedInstance {
    static EvidenceData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EvidenceDataToByte:(StructEvidenceData *)data {
    for (int i = 0; i < data->startOutPress; i++) {
        data->mythEvidence[i] ^= data->broTitle;
    }
    data->mythEvidence[data->startOutPress] = 0;
	if (data->startOutPress >= 2) {
		data->phoneMessage = data->mythEvidence[0];
		data->inAnyEvent = data->mythEvidence[1];
	}
    return data->mythEvidence;
}

- (NSString *)StringFromEvidenceData:(StructEvidenceData *)data {
    return [NSString stringWithUTF8String:(char *)[self EvidenceDataToByte:data]];
}

//: LaunchImage
- (NSString *)kFileMiddleValue {
    if (!_kFileMiddleValue) {
        StructEvidenceData value = (StructEvidenceData){176, (Byte []){252, 209, 197, 222, 211, 216, 249, 221, 209, 215, 213, 172}, 11, 114, 208};
        _kFileMiddleValue = [self StringFromEvidenceData:&value];
    }
    return _kFileMiddleValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "WaitViewController.h"
#import "FrameworkViewController.h"

//: @interface WaitViewController ()
@interface FrameworkViewController ()

//: @end
@end

//: @implementation WaitViewController
@implementation FrameworkViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bgImgV = [[UIImageView alloc] init];
    UIImageView *bgImgV = [[UIImageView alloc] init];
    //: bgImgV.image = [UIImage imageNamed:@"LaunchImage"];
    bgImgV.image = [UIImage imageNamed:[EvidenceData sharedInstance].kFileMiddleValue];
    //: bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    //: [self.view addSubview:bgImgV];
    [self.view addSubview:bgImgV];
}

//: @end
@end