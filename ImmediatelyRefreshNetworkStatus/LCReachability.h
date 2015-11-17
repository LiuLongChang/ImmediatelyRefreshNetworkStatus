//
//  LCReachability.h
//  ImmediatelyRefreshNetworkStatus
//
//  Created by 刘隆昌 on 15/11/15.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef void (^successBlock)(NSString* status);


@interface LCReachability : AFNetworkReachabilityManager


/*
*   网络状态
*
*
*/
+(void)lcWithSuccessBlock:(successBlock)success;



@end
