//
//  LCReachability.m
//  ImmediatelyRefreshNetworkStatus
//
//  Created by 刘隆昌 on 15/11/15.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import "LCReachability.h"

@implementation LCReachability


+(void)lcWithSuccessBlock:(successBlock)success{
    
    [[self sharedManager] startMonitoring];
    [[self sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
    
        if (status == 0) {
            success(@"无连接");
        }else if (status == 1){
            success(@"3G/4G网络");
        }else if (status == 2){
            success(@"wifi状态下");
        }
        
        
        
    }];
    
}



@end
