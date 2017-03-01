//
//  Delegate.h
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginDelegate <NSObject>

- (void)login;

@end

@interface Delegate : UIViewController

// 写delegate的时候类型应该为weak弱引用，以避免循环引用
@property (weak, nonatomic) id<LoginDelegate> delegate;

@end
