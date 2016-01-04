//
//  ViewController.m
//  EncryptDemo
//
//  Created by 李友富 on 16/1/4.
//  Copyright © 2016年 李友富. All rights reserved.
//

#import "ViewController.h"
#import "YFSecurityUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *test = @"李友富";
    
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

}

@end
