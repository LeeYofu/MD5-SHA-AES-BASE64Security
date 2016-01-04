//
//  YFSecurityUtil.m
//  test
//
//  Created by 李友富 on 16/1/4.
//  Copyright © 2016年 李友富. All rights reserved.
//

#import "YFSecurityUtil.h"
#import "GTMBase64.h"
#import "NSData+YFAES.h"
#import "NSString+YFMD5_Sha.h"

#define kPublicPassword @"liyoufu"

@implementation YFSecurityUtil

#pragma mark - MD5加密
//16位MD5加密方式
+ (NSString *)getMd5_16Bit_String:(NSString *)inputString {
    return [inputString getMd5_16Bit_String];
}

//32位MD5加密方式
+ (NSString *)getMd5_32Bit_String:(NSString *)inputString {
    return [inputString getMd5_32Bit_String];
}

#pragma mark - SHA加密
//sha1加密方式
+ (NSString *)getSha1String:(NSString *)inputString {
    return [inputString getSha1String];
}

//sha256加密方式
+ (NSString *)getSha256String:(NSString *)inputString {
    return [inputString getSha256String];
}

//sha384加密方式
+ (NSString *)getSha384String:(NSString *)inputString {
    return [inputString getSha384String];
}

//sha512加密方式
+ (NSString *)getSha512String:(NSString*)inputString {
    return [inputString getSha512String];
}

#pragma mark - base64
+ (NSString *)getEncodeBase64String:(NSString *)inputString {
    NSData *data = [inputString dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [GTMBase64 encodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}

+ (NSString *)getDecodeBase64String:(NSString *)inputString {
    NSData *data = [inputString dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [GTMBase64 decodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}

+ (NSString *)getEncodeBase64Data:(NSData *)inputdData {
    inputdData = [GTMBase64 encodeData:inputdData];
    NSString *base64String = [[NSString alloc] initWithData:inputdData encoding:NSUTF8StringEncoding];
    return base64String;
}

+ (NSString *)getDecodeBase64Data:(NSData *)inputdData {
    inputdData = [GTMBase64 decodeData:inputdData];
    NSString *base64String = [[NSString alloc] initWithData:inputdData encoding:NSUTF8StringEncoding];
    return base64String;
}

#pragma mark - AES加密
//将string转成带密码的data
+ (NSData *)getEncryptAESString:(NSString*)inputString {
    //将nsstring转化为nsdata
    NSData *data = [inputString dataUsingEncoding:NSUTF8StringEncoding];
    //使用密码对nsdata进行加密
    NSData *encryptedData = [data getAES256EncryptWithKey:kPublicPassword];
    return encryptedData;
}

//将带密码的data转成string
+ (NSString*)getDecryptAESData:(NSData*)inputdData {
    //使用密码对data进行解密
    NSData *decryData = [inputdData getAES256DecryptWithKey:kPublicPassword];
    //将解了密码的nsdata转化为nsstring
    NSString *string = [[NSString alloc] initWithData:decryData encoding:NSUTF8StringEncoding];
    return string;
}

@end
