//
//  ViewController.m
//  DFactoryDesign
//
//  Created by SR Zhang on 2020/9/11.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import "ViewController.h"
#import "BaseDevice.h"
#import "DeviceCreator.h"

@interface ViewController ()

@end

@implementation ViewController

/*
  创建工厂类，及定义产品类型
  创建工厂协议，规范接口实现
  创建基类，实现接口协议，便于子类继承重写
  创建子类，并重写协议的实现
  在工厂中，根据输入类型，用父类指针执行子类的实现对象，返回目标类。
  在目标类，输入类型，调用对象，完成具体子类对协议方法实现的调用。
 */

/*
  简单工厂模式
  优点
  客户端可以直接消费产品，而不必关心具体产品的实现，消除了客户端直接创建产品对象的责任，实现了对责任的分割。
  简单点说就是客户端调用简单明了，不需要关注太多的逻辑
 缺点
 工厂类集中了所有产品的创建逻辑，一旦不能正常工作，整个系统都会受到影响，而且当产品类别多结构复杂的时候，把所有创建工作放进一个工厂来，会使后期程序的扩展较为困难。产品类本身是符合开闭原则的，对扩展开放对修改关闭，但是工厂类却违反了开闭原则，因为每增加一个产品，工厂类都需要进行逻辑修改和判断，导致耦合度太高。例如增加一个BananaFruit，在工厂类FruitFactory就要新增加一个枚举FruitTypeBanana。
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BaseDevice * iPhone = [DeviceCreator deviceCreatorWithDeviceType:kiPhone];
    [iPhone phoneCall];
    NSLog(@"%@",[iPhone systemInfomation]);
    
    
    BaseDevice * android = [DeviceCreator deviceCreatorWithDeviceType:kAndroid];
    [android phoneCall];
     NSLog(@"%@",[android systemInfomation]);
    
    BaseDevice * window = [DeviceCreator deviceCreatorWithDeviceType:kWindows];
    [window phoneCall];
     NSLog(@"%@",[window systemInfomation]);
}


@end
