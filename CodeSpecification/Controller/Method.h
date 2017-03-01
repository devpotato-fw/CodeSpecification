//
//  Method.h
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Method : UIViewController

// 在方法中，在 -/+ 符号后应该有一个空格。方法片段之间也应该有一个空格。
- (void)loginWithUserName:(NSString *)userName passowrd:(NSString *)password;
+ (void)loginWithUserName:(NSString *)userName passowrd:(NSString *)password;

@end
