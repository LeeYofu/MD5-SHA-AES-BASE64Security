# MD5-SHA-AES-BASE64Security
MD5/SHA/AES/BASE64Security

// arc 报错  GTMBase64.m 添加 -fno-objc-arc
// 导入头文件  YFSecurityUtil.h 即可使用
// QQ 390806992

#import "YFSecurityUtil.h"

// MD5
NSLog(@"16位MD5加密 = %@", [YFSecurityUtil getMd5_16Bit_String:test]);
NSLog(@"32位MD5加密 = %@", [YFSecurityUtil getMd5_32Bit_String:test]);

// SHA
NSLog(@"SHA1加密 = %@", [YFSecurityUtil getSha1String:test]);
NSLog(@"SHA256加密 = %@", [YFSecurityUtil getSha256String:test]);
NSLog(@"SHA384加密 = %@", [YFSecurityUtil getSha384String:test]);
NSLog(@"SHA512加密 = %@", [YFSecurityUtil getSha512String:test]);

// BASE64
NSLog(@"BASE64编码 = %@", [YFSecurityUtil getEncodeBase64String:test]);
NSLog(@"BASE64解码 = %@", [YFSecurityUtil getDecodeBase64String:[YFSecurityUtil getEncodeBase64String:test]]);

// AES
NSLog(@"将string转成带密码的data = %@", [YFSecurityUtil getEncryptAESString:test]);
NSLog(@"将带密码的data转成string = %@", [YFSecurityUtil getDecryptAESData:[YFSecurityUtil getEncryptAESString:test]]);

