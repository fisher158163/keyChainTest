//
//  LYKeychainTool.h
//  keyChainTest
//
//  Created by Liyu on 2017/6/2.
//  Copyright © 2017年 liyu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>

@interface LYKeychainTool : NSObject

/**
 *  储存字符串到钥匙串
 *  @param sValue 对应的Value
 *  @param sKey   对应的Key
 */
+ (void)saveKeychainValue:(NSString *)sValue key:(NSString *)sKey;

/**
 *  从钥匙串获取字符串
 *  @param sKey 对应的Key
 *  @return 返回储存的Value
 */
+ (NSString *)readKeychainValue:(NSString *)sKey;

/**
 *  从钥匙串删除字符串
 *  @param sKey 对应的Key
 */
+ (void)deleteKeychainValue:(NSString *)sKey;

@end
