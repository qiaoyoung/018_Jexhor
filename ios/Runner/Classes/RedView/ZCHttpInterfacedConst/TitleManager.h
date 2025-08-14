// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleManager.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AFNetworking/AFNetworking.h>
#import <AFNetworking/AFNetworking.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>

/**
 *  是否开启https SSL 验证
 *  @return YES为开启，NO为关闭
 */


/**
 *  SSL 证书名称，仅支持cer格式。“app.bishe.com.cer”,则填“app.bishe.com”
 */


//请求成功的回调block
//: typedef void(^ResponseSuccess)(id responseObject);
typedef void(^ResponseSuccess)(id responseObject);

//请求失败的回调block
//: typedef void(^ResponseFailed)(id responseObject ,NSError *error);
typedef void(^ResponseFailed)(id responseObject ,NSError *error);

//文件下载的成功回调block
//: typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);
typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);

//文件下载的失败回调block
//: typedef void(^DownloadFailed)( NSError *error);
typedef void(^DownloadFailed)( NSError *error);

//文件上传下载的进度block
//: typedef void (^HttpProgress)(NSProgress *progress);
typedef void (^HttpProgress)(NSProgress *progress);


//: @interface ZCHttpManager : NSObject
@interface TitleManager : NSObject

/**
 管理者单例
 */
//: + (instancetype)sharedManager;
+ (instancetype)ting;

//: @property (nonatomic, copy) NSString *lastLang;
@property (nonatomic, copy) NSString *lastLang;


/**
 get请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)exhibitBackground:(NSString *)urlStr
            //: params:(NSDictionary *)params
            queryedBlockOf:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            managerToObject:(BOOL)isShow
           //: success:(ResponseSuccess)success
           presentResponseSuccess:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed;
            jump:(ResponseFailed)failed;

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)bottom: (NSString *)urlStr
            //: params: (NSDictionary *)params
            get: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            size: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         pullFailed: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       shareColorByFailed: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           tableOff: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed;
            button: (ResponseFailed)failed;




/**
 post请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */
//: + (void)postWithUrl: (NSString *)urlStr
+ (void)bringHome: (NSString *)urlStr
             //: params: (NSDictionary *)params
             militaryQuarters: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             comment: (BOOL)isShow
            //: success: (ResponseSuccess)success
            shareFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             time: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)view: (NSString *)urlStr
             //: params: (NSDictionary *)params
             betweenName: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             appFailed: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          from: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        filter: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            deviceFailed: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             enable: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)session: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           indexFailed: (NSString *)checksum
              //: nonce: (NSString *)nonce
              find: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            thread: (NSString *)CurTime
             //: params: (NSDictionary *)params
             info: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            randomResponseSuccess: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             sound: (ResponseFailed)failed;

/**
 * 上传文件
 *  @param URL 请求地址
 *  @param parameters 请求参数
 *  @param name              文件对应服务器上的字段
 *  @param filePath     文件本地的沙盒路径
 *  @param progress     上传进度信息
 *  @param success       请求成功的回调
 *  @param failed    请求失败的回调
 */
//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)colorFailed:(NSString *)URL
               //: parameters:(id)parameters
               argument:(id)parameters
                     //: name:(NSString *)name
                     filter:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 demonstrate:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 scaleScreen:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  pressedUser:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed;
                   mediaResponseFailed:(ResponseFailed)failed;


/**
 * 上传单/多张图片
 * 注意：多张图片需要接口支持，有的服务接口只支持数组的第一个数据
 * @param URL  请求地址
 * @param parameters 请求参数
 * @param images 图片数组
 * @param progress 上传进度信息
 * @param success 请求成功的回调
 * @param failed 请求失败的回调
 */
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)along:(NSString *)URL
                 //: parameters:(id)parameters
                 name:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     scale:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   barHttpProgress:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    sessionMyInfo:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     forwardingUploadStreetwiseLastShowParametersSuccessBubble:(ResponseFailed)failed;



/**
 *  上传单/多张图片
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param name       图片对应服务器上的字段
 *  @param images     图片数组
 *  @param fileNames  图片文件名数组, 可以为nil, 数组内的文件名默认为当前日期时间"yyyyMMddHHmmss"
 *  @param imageScale 图片文件压缩比 范围 (0.f ~ 1.f)
 *  @param imageType  图片文件的类型,例:png、jpg(默认类型)....
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failed    请求失败的回调
 *
 */

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)maturity:(NSString *)URL
                 //: parameters:(id)parameters
                 file:(id)parameters
                       //: name:(NSString *)name
                       length:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     canHigh:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  childLoad:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 noneImage:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  stride:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   by:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    imagesColor:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     memoryImage:(ResponseFailed)failed;



/// 新增
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)netTitle:(NSString *)URL
                 //: parameters:(id)parameters
                 image:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     item:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 name:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   accept:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    language:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     complete:(ResponseFailed)failed;




//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)with:(NSString *)URL
                 //: parameters:(id)parameters
                 message:(id)parameters
                     //: images:(NSData *)videoData
                     spread:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 question:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   development:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    redWith:(ResponseSuccess)success
                    //: failed:(ResponseFailed)failed;
                    labelGreen:(ResponseFailed)failed;


/**
 *  下载文件
 *
 *  @param URL      请求地址
 *  @param fileDir  文件存储目录(默认存储目录为Download)
 *  @param progress 文件下载的进度信息
 *  @param success  下载成功的回调(回调参数filePath:文件的路径)
 *  @param failed  下载失败的回调
 *
 *   返回NSURLSessionDownloadTask实例，可用于暂停继续，暂停调用suspend方法，开始下载调用resume方法
 */
//: + (void)downloadWithURL:(NSString *)URL
+ (void)shared:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                with:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               progress:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                asScale:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed;
                 pin:(ResponseFailed)failed;

//: @end
@end