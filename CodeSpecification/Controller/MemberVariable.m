//
//  MemberVariable.m
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles. All rights reserved.
//

#import "MemberVariable.h"

@interface MemberVariable ()
{
//    NSArray *_dataList;// 反对
}
// 推荐
@property (strong, nonatomic) NSArray *dataList;

@end

@implementation MemberVariable

- (instancetype)init {

    if (self == [super init]) {
        
        // 除了初始化方法（init、initWithCoder等）、dealloc方法和自定义的 setters 和 getters 内部，应避免直接访问实例变量。
        _userNameStr = @"CodeSpecification";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 三三个叹号或者问号可以着重标记, 可以快速查找
    // !!! 这个变量没有使用
    // ??? nameStr变量为什么没有使用
    NSString *nameStr = @"CodeSpecification";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
