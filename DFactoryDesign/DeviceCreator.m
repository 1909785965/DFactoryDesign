//
//  DeviceCreator.m
//  DFactoryDesign
//
//  Created by SR Zhang on 2020/9/11.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import "DeviceCreator.h"

@implementation DeviceCreator

/*
 “专门定义一个类来负责创建其他类的实例，被创建的实例通常具有共同的父类。”
 世界上就是由一个工厂类，根据传入的参数，动态地决定创建出哪一个产品类的实例。
 
 */

+(BaseDevice *)deviceCreatorWithDeviceType:(DeviceType)deviceType{
    
    if (deviceType == kiPhone) {
        return [iPhoneDevice new];
    }else if (deviceType == kAndroid){
        return [AndroidDevice new];
    }else if (deviceType == kWindows){
        return [WindowsDevice new];
    }else{
        return [BaseDevice new];
    }
}

@end
