
#import <Foundation/Foundation.h>

@interface TinData : NSObject

+ (instancetype)sharedInstance;

//: Image
@property (nonatomic, copy) NSString *dreamHmmIconText;

//: %@@%dx.png
@property (nonatomic, copy) NSString *dream_hostagePath;

//: Voice
@property (nonatomic, copy) NSString *main_richText;

//: xml_file
@property (nonatomic, copy) NSString *user_quipInputKey;

//: file
@property (nonatomic, copy) NSString *mainGravData;

//: %@.imageset
@property (nonatomic, copy) NSString *m_speakerUrl;

//: Emoji
@property (nonatomic, copy) NSString *dream_dismissFormat;

//: Lproj
@property (nonatomic, copy) NSString *notiVacuumAidMessage;

//: StableBehindSuper
@property (nonatomic, copy) NSString *main_relaxLightlyStr;

//: kSSZipArchiveManagerVersionKey
@property (nonatomic, copy) NSString *user_leaveIdent;

//: %@.png
@property (nonatomic, copy) NSString *main_viewTitle;

//: .zip
@property (nonatomic, copy) NSString *app_provedIdent;

//: html
@property (nonatomic, copy) NSString *main_creaseVileMsg;

@end

@implementation TinData

+ (instancetype)sharedInstance {
    static TinData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TinDataToCache:(Byte *)data {
    int itemSample = data[0];
    Byte legallyShow = data[1];
    int maxiCouple = data[2];
    for (int i = maxiCouple; i < maxiCouple + itemSample; i++) {
        int value = data[i] - legallyShow;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[maxiCouple + itemSample] = 0;
    return data + maxiCouple;
}

- (NSString *)StringFromTinData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TinDataToCache:data]];
}

//: %@.imageset
- (NSString *)m_speakerUrl {
    if (!_m_speakerUrl) {
        Byte value[] = {11, 60, 13, 192, 186, 215, 105, 165, 198, 3, 59, 228, 169, 97, 124, 106, 165, 169, 157, 163, 161, 175, 161, 176, 99};
        _m_speakerUrl = [self StringFromTinData:value];
    }
    return _m_speakerUrl;
}

//: %@@%dx.png
- (NSString *)dream_hostagePath {
    if (!_dream_hostagePath) {
        Byte value[] = {10, 8, 11, 57, 223, 213, 196, 88, 56, 64, 70, 45, 72, 72, 45, 108, 128, 54, 120, 118, 111, 194};
        _dream_hostagePath = [self StringFromTinData:value];
    }
    return _dream_hostagePath;
}

//: %@.png
- (NSString *)main_viewTitle {
    if (!_main_viewTitle) {
        Byte value[] = {6, 18, 5, 80, 9, 55, 82, 64, 130, 128, 121, 15};
        _main_viewTitle = [self StringFromTinData:value];
    }
    return _main_viewTitle;
}

//: StableBehindSuper
- (NSString *)main_relaxLightlyStr {
    if (!_main_relaxLightlyStr) {
        Byte value[] = {17, 42, 10, 126, 74, 62, 17, 18, 100, 165, 125, 158, 139, 140, 150, 143, 108, 143, 146, 147, 152, 142, 125, 159, 154, 143, 156, 181};
        _main_relaxLightlyStr = [self StringFromTinData:value];
    }
    return _main_relaxLightlyStr;
}

//: Image
- (NSString *)dreamHmmIconText {
    if (!_dreamHmmIconText) {
        Byte value[] = {5, 68, 10, 91, 107, 158, 181, 155, 200, 189, 141, 177, 165, 171, 169, 205};
        _dreamHmmIconText = [self StringFromTinData:value];
    }
    return _dreamHmmIconText;
}

//: Lproj
- (NSString *)notiVacuumAidMessage {
    if (!_notiVacuumAidMessage) {
        Byte value[] = {5, 91, 8, 206, 108, 3, 81, 198, 167, 203, 205, 202, 197, 181};
        _notiVacuumAidMessage = [self StringFromTinData:value];
    }
    return _notiVacuumAidMessage;
}

//: .zip
- (NSString *)app_provedIdent {
    if (!_app_provedIdent) {
        Byte value[] = {4, 9, 10, 203, 139, 52, 145, 199, 131, 104, 55, 131, 114, 121, 196};
        _app_provedIdent = [self StringFromTinData:value];
    }
    return _app_provedIdent;
}

//: Emoji
- (NSString *)dream_dismissFormat {
    if (!_dream_dismissFormat) {
        Byte value[] = {5, 50, 12, 110, 204, 205, 231, 27, 217, 39, 22, 29, 119, 159, 161, 156, 155, 141};
        _dream_dismissFormat = [self StringFromTinData:value];
    }
    return _dream_dismissFormat;
}

//: kSSZipArchiveManagerVersionKey
- (NSString *)user_leaveIdent {
    if (!_user_leaveIdent) {
        Byte value[] = {30, 25, 8, 182, 76, 143, 173, 130, 132, 108, 108, 115, 130, 137, 90, 139, 124, 129, 130, 143, 126, 102, 122, 135, 122, 128, 126, 139, 111, 126, 139, 140, 130, 136, 135, 100, 126, 146, 225};
        _user_leaveIdent = [self StringFromTinData:value];
    }
    return _user_leaveIdent;
}

//: Voice
- (NSString *)main_richText {
    if (!_main_richText) {
        Byte value[] = {5, 89, 9, 12, 215, 42, 241, 25, 208, 175, 200, 194, 188, 190, 130};
        _main_richText = [self StringFromTinData:value];
    }
    return _main_richText;
}

//: file
- (NSString *)mainGravData {
    if (!_mainGravData) {
        Byte value[] = {4, 93, 10, 228, 34, 245, 138, 160, 186, 166, 195, 198, 201, 194, 151};
        _mainGravData = [self StringFromTinData:value];
    }
    return _mainGravData;
}

//: html
- (NSString *)main_creaseVileMsg {
    if (!_main_creaseVileMsg) {
        Byte value[] = {4, 53, 5, 57, 111, 157, 169, 162, 161, 95};
        _main_creaseVileMsg = [self StringFromTinData:value];
    }
    return _main_creaseVileMsg;
}

//: xml_file
- (NSString *)user_quipInputKey {
    if (!_user_quipInputKey) {
        Byte value[] = {8, 99, 13, 66, 209, 125, 16, 187, 225, 110, 193, 57, 152, 219, 208, 207, 194, 201, 204, 207, 200, 54};
        _user_quipInputKey = [self StringFromTinData:value];
    }
    return _user_quipInputKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "SharedContentView.h"
//: #import "NTESMigrateHeader.h"
#import "MemoryMain.h"

//: @interface SSZipArchiveManager()
@interface SharedContentView()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation SharedContentView

//: + (instancetype)sharedManager {
+ (instancetype)manager {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static SharedContentView *sharedInstance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [[self alloc] init];
        sharedInstance = [[self alloc] init];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static SSZipArchiveManager *sharedInstance = nil;
    static SharedContentView *sharedInstance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [super allocWithZone:zone];
        sharedInstance = [super allocWithZone:zone];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)begin:(NSZone *)zone {
    //: return self;
    return self;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _appResPath = [self calculateAppResPath];
        _appResPath = [self to];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)to {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"StableBehindSuper"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:[TinData sharedInstance].main_relaxLightlyStr];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:[TinData sharedInstance].user_leaveIdent];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[MemoryMain initWithMessage].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"StableBehindSuper"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:[TinData sharedInstance].mainGravData] stringByAppendingPathComponent:[TinData sharedInstance].main_relaxLightlyStr];
    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[MemoryMain initWithMessage].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[MyUserKit sharedKit].emoticonBundle pathForResource:@"StableBehindSuper" ofType:@".zip"];
    NSString *path = [[Secret highlight].emoticonBundle pathForResource:[TinData sharedInstance].main_relaxLightlyStr ofType:[TinData sharedInstance].app_provedIdent];
    //: if (!path) {
    if (!path) {
        //: return @""; 
        return @""; // Return empty string if path is nil
    }

    //: BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
    BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
                                 //: toDestination:docuPath
                                 toDestination:docuPath
                                     //: overwrite:YES
                                     overwrite:YES
                                      //: password:@"StableBehindSuper"
                                      password:[TinData sharedInstance].main_relaxLightlyStr
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[NTESMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[MemoryMain initWithMessage].appVersion forKey:[TinData sharedInstance].user_leaveIdent];
        //: [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] synchronize];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
            //: return resDir;
            return resDir;
        //: } else {
        } else {
            //: return fileResDir;
            return fileResDir;
        }
    }

    //: return @""; 
    return @""; // Return empty string if unzip fails
}

//: - (NSString *)getHtml_filePath {
- (NSString *)bottom {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:[TinData sharedInstance].main_creaseVileMsg];
}

//: - (NSString *)getXML_filePath {
- (NSString *)margin {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:[TinData sharedInstance].user_quipInputKey];
}

//: - (NSString *)getEmojiPath {
- (NSString *)titleModel {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:[TinData sharedInstance].dream_dismissFormat];
}

//: - (NSString *)getLprojPath {
- (NSString *)value {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:[TinData sharedInstance].notiVacuumAidMessage];
}

//: - (NSString *)getVoicePath {
- (NSString *)itemOf {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:[TinData sharedInstance].main_richText];
}

//: - (NSString *)getImagesPath {
- (NSString *)valueSearchion {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:[TinData sharedInstance].dreamHmmIconText];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)enabling:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self valueSearchion] stringByAppendingPathComponent:[NSString stringWithFormat:[TinData sharedInstance].m_speakerUrl, name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:[TinData sharedInstance].dream_hostagePath, name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:[TinData sharedInstance].dream_hostagePath, name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:[TinData sharedInstance].main_viewTitle, name]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
        //: return [UIImage imageWithContentsOfFile:normalPath];
        return [UIImage imageWithContentsOfFile:normalPath];
    }

    //: return nil;
    return nil;
}

//: @end
@end