//
//  CGGeometry.m
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles. All rights reserved.
//

#import "CGGeometry.h"

@interface CGGeometry ()

@end

@implementation CGGeometry

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 推荐
    CGRect frame = self.view.frame;

    CGFloat x = CGRectGetMinX(frame);
    CGFloat y = CGRectGetMinY(frame);
    CGFloat width = CGRectGetWidth(frame);
    CGFloat height = CGRectGetHeight(frame);

    // 不推荐
    CGRect frame2 = self.view.frame;

    CGFloat x2 = frame2.origin.x;
    CGFloat y2 = frame2.origin.y;
    CGFloat width2 = frame2.size.width;
    CGFloat height2 = frame2.size.height;
    
    // 这样写消除警告，大家忽略
    NSLog(@"%f%f%f%f%f%f%f%f",x, x2, y, y2, width, width2, height, height2);
}

@end
