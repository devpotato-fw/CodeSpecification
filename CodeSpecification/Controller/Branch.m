//
//  Branch.m
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles. All rights reserved.
//

#import "Branch.h"

@interface Branch ()

@end

@implementation Branch

// if 条件语句 使用注意
- (void)ifSpecification {
    
    if (1) {// 永远为真
        
    }
    
    if (0) {// 永远为假
        
    }
    
    /*
     // 下面的代码是错误的：count作用域不明确，即使if后面的代码块里只有一行语句，建议也把{}加上，可读性强
     if (age > 25)
     int count = 5;
     // 如果要在if后面的语句中定义新的变量，必须用大括号{}
     NSLog("count = %d\n", count);
     */
    
    
    BOOL isLogIn;
    if (isLogIn == YES) {// 反对
        NSLog(@"登录成功!");
    }
    if (isLogIn == YES) // 反对
        NSLog(@"登录成功!");
    
    
    if (isLogIn) {// 推荐
        // 登录成功
    }
    
    if (!isLogIn) {// 推荐
        // 登录失败
    }
    
    
    NSString *nameStr;
    if (nameStr == nil) {// 反对
        
    }
    
    if (nameStr) {// 推荐
        
    }
    
    if (!nameStr) {// 推荐
        
    }
    
    //---------------------------------------------------------------------------------
    
    // 使用多个 return 可以避免增加循环的复杂度，并提高代码的可读性
    // 比如常见的登录操作判断
    
    // 不推荐
    NSString *phoneStr;
    NSString *passwordStr;
    if (!phoneStr) {
        return ;
    } else if (!passwordStr) {
        return ;
    }
    
    // 推荐
    if (!phoneStr) {
        return ;
    }
    
    if (!passwordStr) {
        return ;
    }
    
    
    //当你有一个复杂的 if 子句的时候，你应该把它们提取出来赋给一个 BOOL 变量，这样可以让逻辑更清楚，而且让每个子句的意义体现出来。
    BOOL isHasPhone = NO;
    BOOL isHasPassword = NO;
    if (phoneStr) {
        isHasPhone = YES;
    }
    
    if (!passwordStr) {
        isHasPassword = YES;
    }
    
    
    BOOL isLogInSuccess = isHasPhone && isHasPassword;
    if (isLogInSuccess) {
        // Do something
    }
    
    //---------------------------------------------------------------------------------
    
    // 对于三目运算符
    int a = 10;
    int b = 21;
    int c = 45;
    
    // 不推荐
    int max = a > b ? ( a > c ? a : c ) : (b > c ? b :c );
    
    // 推荐
    int max1 = a > b ? a : b;
    int max2 = max1 > c ? max1 : c;
}

// switch 条件语句 使用注意
- (void)switchSpecification {
    
    // break:退出整个switch语句
    // 如果case后面没有break，就会执行后面所有case中的语句，直到遇到break为止
    int grade = 10;
    switch (grade)
    {
        case 10:
            printf("A\n");
        case 5:
            printf("B\n");
            break;
        case 0:
            printf("C\n");
            break;
        default:
            printf("D\n");
            break;
    }
    
    
    char c = '+';
    int a = 10;
    int b = 20;
    // 如果要在case后面定义新的变量，必须用大括号{}包住
    switch (c) {
        case '+':
        {
            int sum = a + b;
            NSLog(@"和是%d\n", sum);
            break;
        }
            
        case '-':
        {
            int minus = a - b;
            NSLog(@"差是%d\n", minus);
            break;
        }
    }
}

@end
