//
//  NSString+YFMD5_Sha.h
//  test
//
//  Created by 李友富 on 16/1/4.
//  Copyright © 2016年 李友富. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (YFMD5_Sha)

//16位MD5加密方式
- (NSString *)getMd5_16Bit_String;

//32位MD5加密方式
- (NSString *)getMd5_32Bit_String;

//sha1加密方式
- (NSString *)getSha1String;

//sha256加密方式
- (NSString *)getSha256String;

//sha384加密方式
- (NSString *)getSha384String;

//sha512加密方式
- (NSString *) getSha512String;

@end
