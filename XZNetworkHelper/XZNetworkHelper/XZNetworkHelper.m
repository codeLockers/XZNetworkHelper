//
//  XZNetworkHelper.m
//  XZNetworkHelper
//
//  Created by 徐章 on 16/9/1.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "XZNetworkHelper.h"
#import <AFNetworking/AFNetworking.h>

@implementation XZNetworkHelper{

    AFHTTPSessionManager *_manager;
}

+ (instancetype)helper{
    static XZNetworkHelper *helper = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        helper = [[XZNetworkHelper alloc] init];
    });
    
    return helper;
}

- (instancetype)init{
    
    self = [super init];
    
    if (self) {
        
        _manager = [AFHTTPSessionManager manager];
        [_manager.requestSerializer setTimeoutInterval:10.f];
    }
    
    return self;
}

- (void)postWithUrl:(NSString *)url params:(NSDictionary *)params callback:(void(^)(NSDictionary *response, NSString *error))completion{
    
    if (!params) {
        params = [NSDictionary dictionary];
    }
    
    [_manager POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        completion(responseObject, nil);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completion(nil, @"error");
    }];
}

- (void)getWithUrl:(NSString *)url params:(NSDictionary *)params callback:(void(^)(NSDictionary *response, NSString *error))completion{
    
    
    if (!params) {
        params = [NSDictionary dictionary];
    }
    
    [_manager GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        completion(responseObject, nil);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        completion(nil, @"error");
    }];
    
}

- (void)putWithUrl:(NSString *)url params:(NSDictionary *)params callback:(void(^)(NSDictionary *response, NSString *error))completion{
    
    if (!params) {
        params = [NSDictionary dictionary];
    }

    [_manager PUT:url parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        completion(responseObject, nil);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completion(nil, @"error");
    }];
    
}


- (void)deleteWithUrl:(NSString *)url params:(NSDictionary *)params callback:(void(^)(NSDictionary *response, NSString *error))completion{
    
    if (!params) {
        params = [NSDictionary dictionary];
    }

    [_manager DELETE:url parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        completion(responseObject, nil);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completion(nil, @"error");
    }];
    
}


@end
