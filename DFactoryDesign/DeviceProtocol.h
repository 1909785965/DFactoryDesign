//
//  DeviceProtocol.h
//  DFactoryDesign
//
//  Created by SR Zhang on 2020/9/11.
//  Copyright © 2020 SR Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DeviceProtocol <NSObject>

-(void)phoneCall;

-(NSString *)systemInfomation;

@end

NS_ASSUME_NONNULL_END
