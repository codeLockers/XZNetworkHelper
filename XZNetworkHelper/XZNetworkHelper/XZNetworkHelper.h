//
//  XZNetworkHelper.h
//  XZNetworkHelper
//
//  Created by 徐章 on 16/9/1.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XZNetworkHelper : NSObject


/**
 *  单例创建实例方法
 *
 *  @return 实例
 */
+ (instancetype)helper;
/**
 *  post请求
 *
 *  @param url        请求url
 *  @param params     请求参数
 *  @param completion 请求完成回调
 */
- (void)postWithUrl:(NSString *)url params:(NSDictionary *)params callback:(void(^)(NSDictionary *response, NSString *error))completion;
/**
 *  get请求
 *
 *  @param url        请求URL
 *  @param params     请求参数
 *  @param completion 请求完成回调
 */
- (void)getWithUrl:(NSString *)url params:(NSDictionary *)params callback:(void(^)(NSDictionary *response, NSString *error))completion;

/**
 *  put请求
 *
 *  @param url        请求URL
 *  @param params     请求参数
 *  @param completion 请求完成回调
 */
- (void)putWithUrl:(NSString *)url params:(NSDictionary *)params callback:(void(^)(NSDictionary *response, NSString *error))completion;


/**
 *  delete请求
 *
 *  @param url        请求URL
 *  @param params     请求参数
 *  @param completion 请求完成回调
 */
- (void)deleteWithUrl:(NSString *)url params:(NSDictionary *)params callback:(void(^)(NSDictionary *response, NSString *error))completion;

@end
