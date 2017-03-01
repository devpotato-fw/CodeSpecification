//
//  MemberVariable.h
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles. All rights reserved.
//

#import <UIKit/UIKit.h>

// 类名首字母大写,用驼峰命名法
@interface MemberVariable : UIViewController

// 变量名小写字母开头,采用驼峰命名法
@property (strong, nonatomic) NSString *userNameStr;

// 不要使用魔术数字命名
@property (strong, nonatomic) UIButton *oneButton;
@property (strong, nonatomic) UIButton *twoButton;

// 属性命名不要使用下划线命名方式,使用驼峰风格,与系统保持一致
// 错误命名
@property (strong, nonatomic) NSString *end_time;
// 正确命名
@property (strong, nonatomic) NSString *endTime;

// 一些非负数整形的数据建议用NSUInteger
@property (assign, nonatomic) NSUInteger age;// 年龄

/*
 1、字符串命名后加     Str
 2、集合后加     Array
 3、字典后加     Dict
 4、Label后加     Label
 5、UIImageView后加     Img
 6、UIImage后加     Image
 
 这时你会发现规律，在变量名后加类型说明符的后缀
 */

@end
