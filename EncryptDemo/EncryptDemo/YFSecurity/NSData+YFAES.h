//
//  NSData+YFAES.h
//  test
//
//  Created by 李友富 on 16/1/4.
//  Copyright © 2016年 李友富. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (YFAES)

- (NSData *)getAES256EncryptWithKey:(NSString *)key;   // 加密
- (NSData *)getAES256DecryptWithKey:(NSString *)key;   // 解密

@end
