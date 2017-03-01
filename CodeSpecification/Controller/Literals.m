//
//  Literals.m
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles. All rights reserved.
//

#import "Literals.h"

@interface Literals ()

@end

@implementation Literals

- (void)arraySpecification {
    
    // 不推荐
    NSArray *addressArray = [NSArray arrayWithObjects:@"Beijing", @"Xian", @"ShangeHai", nil];
    
    // 推荐 使用字面值来创建不可变的集合
    NSArray *addressArray2 = @[@"Beijing", @"Xian", @"ShangeHai"];
    
    
    // 下面代码消除警告，大家忽略
    NSLog(@"%@%@", addressArray, addressArray2);
}

- (void)dictionarySpecification {
    
    // 不推荐
    NSDictionary *productManagers = [NSDictionary dictionaryWithObjectsAndKeys: @"Kate", @"iPhone", @"Kamal", @"iPad", @"Bill", @"Mobile Web", nil];
    
    // 推荐
    NSDictionary *productManagers2 = @{@"iPhone" : @"Kate", @"iPad" : @"Kamal", @"Mobile Web" : @"Bill"};
    
    
    // 下面代码消除警告，大家忽略
    NSLog(@"%@%@", productManagers, productManagers2);
}

- (void)numberSpecification {

    // 不推荐
    NSNumber *shouldUseLiterals = [NSNumber numberWithBool:YES];
    NSNumber *buildingZIPCode = [NSNumber numberWithInteger:1024];
    
    // 推荐
    NSNumber *shouldUseLiterals2 = @YES;
    NSNumber *buildingZIPCode2 = @1024;
    
    // 下面代码消除警告，大家忽略
    NSLog(@"%@%@%@%@", shouldUseLiterals, buildingZIPCode, shouldUseLiterals2, buildingZIPCode2);
}

@end
