//
//  PersonModel.h
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 1.set方法内存管理相关的参数
 * retain : release旧值，retain新值（适用于OC对象类型）
 * assign : 直接赋值（默认，适用于非OC对象类型）
 * copy   : release旧值，copy新值
 
 2.是否要生成set方法
 * readwrite : 同时生成setter和getter的声明、实现(默认)
 * readonly  : 只会生成getter的声明、实现
 
 3.多线程管理
 * nonatomic : 性能高 (一般就用这个)非原子的，nonatomic代表方法不需要考虑线程安全问题
 * atomic    : 性能低（默认）原子的，atomic就代表给方法进行加锁，保证线程安全（防止两个线程同时访问这个变量），所以会消耗内存，降低性能
 
 4.setter和getter方法的名称
 * setter : 决定了set方法的名称，一定要有个冒号 :  ！！！！！！！！！！！！
 * getter : 决定了get方法的名称(一般用在BOOL类型)
 */
@interface PersonModel : NSObject

// 返回BOOL类型的方法名一般以is开头
@property (getter = isRich) BOOL rich;

//          多线程   内存管理 生成setter和getter  方法的名称
@property (nonatomic, assign, readwrite, setter = toWeight:) int weight;

// toWeight:
// weight

// readwrite 默认实现
@property (nonatomic, assign, readwrite) int height;
// setHeight:
// height

@property (nonatomic, assign) int age;

// atomic 性能低（默认实现)
@property (retain) NSString *name;

@end
