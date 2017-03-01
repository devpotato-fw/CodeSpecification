//
//  ViewController.m
//  CodeSpecification
//
//  Created by 王方 on 16/8/13.
//  Copyright © 2016年 http://www.jianshu.com/users/db5d90611afa/latest_articles All rights reserved.
//

#import "ViewController.h"

// 头文件的引用：将系统头文件放在前面
#import <UIKit/UIKit.h>
#import "MemberVariable.h"

@interface ViewController ()

@end

@implementation ViewController

// ---------------------- VC方法规范 ----------------------

/**
 *  Description
 *  1.第一区块 viewDidLoad,viewWillAppear,viewDidAppear,viewWillDisappear,viewDidDisappear等方法
 *
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)viewWillAppear:(BOOL)animated {}
- (void)viewDidAppear:(BOOL)animated {}

- (void)viewWillDisappear:(BOOL)animated {}
- (void)viewDidDisappear:(BOOL)animated {}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 建议使用“#pragma mark”，方便阅读代码
#pragma mark - Private Methods

- (void)registerWithUserName:(NSString *)userName
                    passowrd:(NSString *)password
                        code:(NSString *)code {

    // 调用方法时，如果参数过多时，参数可以换行冒号对齐
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示"
                                                        message:@"确认注册？"
                                                       delegate:nil
                                              cancelButtonTitle:@"取消"
                                              otherButtonTitles:@"确认", nil];
    [alertView show];
}

#pragma mark - UITableViewDataSource

/*
 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 return 0;
 }
 
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 return 0;
 }
 
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
 
 // Configure the cell...
 
 return cell;
 }
 */

#pragma mark - UITableViewDelegate

/*
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // do something
 }
 */

#pragma mark - CustomeDelegate
/*
 -(void)didSelectView....
 */

#pragma mark - Event Action
/*
 -(IBAction)buttonDidTouchUpInside:(id)sender
 {
 }
 */

#pragma mark - Getters And Setters

@end
