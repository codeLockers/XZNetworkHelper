//
//  ViewController.m
//  XZNetworkHelper
//
//  Created by 徐章 on 16/9/1.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "ViewController.h"
#import "XZNetworkHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //使用
    [[XZNetworkHelper helper] postWithUrl:@"url"
                                   params:@{}
                                 callback:^(NSDictionary *response, NSString *error) {
       
                                    if (error) {
                                        //请求失败
                                    }else{
                                        //请求成功
                                    }
    }];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
