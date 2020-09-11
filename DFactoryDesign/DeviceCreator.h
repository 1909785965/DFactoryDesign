//
//  DeviceCreator.h
//  DFactoryDesign
//
//  Created by SR Zhang on 2020/9/11.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeviceProtocol.h"
#import "iPhoneDevice.h"
#import "AndroidDevice.h"
#import "WindowsDevice.h"
#import "BaseDevice.h"

typedef enum:NSUInteger{
    kAndroid,
    kiPhone,
    kWindows,
} DeviceType;

NS_ASSUME_NONNULL_BEGIN

@interface DeviceCreator : NSObject

+(BaseDevice *)deviceCreatorWithDeviceType:(DeviceType)deviceType;

@end

NS_ASSUME_NONNULL_END
