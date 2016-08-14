# CodeSpecification
Object-C代码规范简单介绍。

1、声明类或方法时，注意空格的使用，参数过多时可换行保持对齐。
- (void)registerWithUserName:(NSString *)userName
                    passowrd:(NSString *)password
                        code:(NSString *)code;

2、调用方法时也是如此，参数都写在一行或换行冒号对齐，
UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示"
                                                        message:@"确认注册？"
                                                       delegate:nil
                                              cancelButtonTitle:@"取消"
                                              otherButtonTitles:@"确认", nil];

3、命名规则
类名首字母大写，方法首字母小写，方法中的参数首字母小写，同时尽量让方法的命名读起来像一句话，能够传达出方法的意思

变量名小写字母开头

4、写delegate的时候类型应该为weak弱引用，以避免循环引用，当delegate对象不存在后，我们写的delegate也就没有存在意义了自然是需要销毁的。
@protocol LoginDelegate <NSObject>

- (void)login;

@end

@interface Delegate : UIViewController

// 写delegate的时候类型应该为weak弱引用，以避免循环引用
@property (weak, nonatomic) id<LoginDelegate> delegate;

@end

5、建议使用“#pragma mark”，方便阅读代码
#pragma mark - Register Method

6、不要使用魔术数字命名
@property (strong, nonatomic) UIButton *oneButton;
@property (strong, nonatomic) UIButton *twoButton;

7、属性命名不要使用下划线命名方式， 使用驼峰风格。与系统保持一致
// 错误命名
@property (strong, nonatomic) NSString *end_time;
// 正确命名
@property (strong, nonatomic) NSString *endTime;

8、枚举类型的命名规则和函数的命名规则相同：命名时使用驼峰命名法，勿使用下划线命名法。
/**
 *  登录类型
 */
typedef NS_ENUM(NSUInteger, OYLoginformType){

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
    /**
     *  微信
     */
    OYLoginformTypeWechat              = 4,
    /**
     *  QQ
     */
    OYLoginformTypeQQ                  = 5,
};

9、一些非负数整形的数据建议用NSUInteger
@property (assign, nonatomic) NSUInteger age;// 年龄

10、头文件的引用：将系统头文件放在前面
#import <UIKit/UIKit.h>
#import "MemberVariable.h"

11、定义的变量要使用, 不然会有警告. 不要忽视这样警告.

12、关于大括号, 代码块的使用,：
- 大括号内的对象是有生命周期的, 出了大括号的话, 里面的对象就被释放掉了
- 巧妙的使用大括号, 可以使得代码更清晰整洁

13、三个叹号或者问号可以着重标记, 可以快速查找
// !!!: 宏的使用
// ???: 方法的调用

14变量命名规则
- 字符串命名后加     Str
- 集合后加     Array
- 字典后加     Dict
- Label后加     Label
- UIImageView后加     Img
- UIImage后加     Image
- 这时你会发现规律，在变量名后加类型说明符的后缀

15、 除了初始化方法（init、initWithCoder等）、dealloc方法和自定义的 setters 和 getters 内部，应避免直接访问实例变量。

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

#pragma mark - Private Methods

/*
 - (void)register {
 }
 */

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

16、条件判断
BOOL isLogIn;
if (isLogIn == YES) {// 反对
    NSLog(@"登录成功!");
}
if (isLogIn == YES) // 反对
    NSLog(@"登录成功!");

if (isLogIn) {// 推荐
    // 登录成功
}

if (!isLogIn) {// 推荐
    // 登录失败
}

17、方法

在方法签名中，在 -/+ 符号后应该有一个空格。方法片段之间也应该有一个空格。
- (void)loginWithUserName:(NSString *)userName passowrd:(NSString *)password;
+ (void)loginWithUserName:(NSString *)userName passowrd:(NSString *)password;

18、变量
@interface MemberVariable ()
{
//    NSArray *_dataList;// 反对
}
// 推荐
@property (strong, nonatomic) NSArray *dataList;

19、变量限定符
当涉及到在 ARC 中被引入变量限定符时， 限定符 (__strong, __weak, __unsafe_unretained, __autoreleasing) 应该位于星号和变量名之间，如：NSString * __weak text。

20、字面量
每当创建 NSString， NSDictionary， NSArray，和 NSNumber 类的不可变实例时，都应该使用字面量。要注意 nil 值不能传给 NSArray 和 NSDictionary 字面量，这样做会导致崩溃。

推荐：
NSArray *names = @[@"Brian", @"Matt", @"Chris", @"Alex", @"Steve", @"Paul"];
NSDictionary *productManagers = @{@"iPhone" : @"Kate", @"iPad" : @"Kamal", @"Mobile Web" : @"Bill"};
NSNumber *shouldUseLiterals = @YES;
NSNumber *buildingZIPCode = @10018;

反对：
NSArray *names = [NSArray arrayWithObjects:@"Brian", @"Matt", @"Chris", @"Alex", @"Steve", @"Paul", nil];
NSDictionary *productManagers = [NSDictionary dictionaryWithObjectsAndKeys: @"Kate", @"iPhone", @"Kamal", @"iPad", @"Bill", @"Mobile Web", nil];
NSNumber *shouldUseLiterals = [NSNumber numberWithBool:YES];
NSNumber *buildingZIPCode = [NSNumber numberWithInteger:10018];

21、CGRect 函数
当访问一个 CGRect 的 x， y， width， height 时，应该使用CGGeometry 函数代替直接访问结构体成员。
CGRect frame = self.view.frame;

CGFloat x = CGRectGetMinX(frame);
CGFloat y = CGRectGetMinY(frame);
CGFloat width = CGRectGetWidth(frame);
CGFloat height = CGRectGetHeight(frame);

// 不推荐
CGRect frame2 = self.view.frame;

CGFloat x2 = frame.origin.x;
CGFloat y2 = frame.origin.y;
CGFloat width2 = frame.size.width;
CGFloat height2 = frame.size.height;

22、枚举类型

当使用 enum 时，建议使用新的基础类型规范，因为它具有更强的类型检查和代码补全功能。现在 SDK 包含了一个宏来鼓励使用使用新的基础类型 - NS_ENUM()

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

23、如果一个 BOOL 属性名称是一个形容词，属性可以省略 “is” 前缀，但为 get 访问器指定一个惯用的名字，例如：

@property (assign, getter=isEditable) BOOL editable;

24、单例

单例对象应该使用线程安全的模式创建共享的实例。

+ (instancetype)sharedInstance {
   static id sharedInstance = nil;

   static dispatch_once_t onceToken;
   dispatch_once(&onceToken, ^{
      sharedInstance = [[self alloc] init];
   });

   return sharedInstance;
}

25、Xcode 工程

为了避免文件杂乱，物理文件应该保持和 Xcode 项目文件同步。Xcode 创建的任何组（group）都必须在文件系统有相应的映射。为了更清晰，代码不仅应该按照类型进行分组，也可以根据功能进行分组。
