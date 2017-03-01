//
//  TypedefMacro.h
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles All rights reserved.
//

#ifndef TypedefMacro_h
#define TypedefMacro_h

/**
 *  枚举类型命名规则：命名时使用驼峰命名法，勿使用下划线命名法
 */
typedef NS_ENUM(NSUInteger, LoginformType){
    
    /**
     *  手机号
     */
    OYLoginformTypeTel                 = 1,
    /**
     *  邮箱
     */
    OYLoginformTypeEmail               = 2,
    /**
     *  新浪微博
     */
    OYLoginformTypeSinaWeibo           = 3,
};

#endif /* TypedefMacro_h */
