//
//  ViewController.h
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles All rights reserved.
//

#import <UIKit/UIKit.h>

// 类名首字母大写
@interface ViewController : UIViewController





// 1、声明类或方法时，注意空格的使用，参数过多时可换行保持对齐
// 2、方法首字母小写，方法中的参数首字母小写，同时尽量让方法的命名读起来像一句话，能够传达出方法的意思
- (void)registerWithUserName:(NSString *)userName
                    passowrd:(NSString *)password
                        code:(NSString *)code;

@end
