//
//  libFlex.mm
//  libFlex
//
//  Created by 蓝布鲁 on 2018/1/22.
//  Copyright (c) 2018年 ___ORGANIZATIONNAME___. All rights reserved.
//

// CaptainHook by Ryan Petrich
// see https://github.com/rpetrich/CaptainHook/

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <Foundation/Foundation.h>
#import "FLEX.h"
//#import "CaptainHook/CaptainHook.h"
//#include <notify.h> // not required; for examples only

// Objective-C runtime hooking using CaptainHook:
//   1. declare class using CHDeclareClass()
//   2. load class using CHLoadClass() or CHLoadLateClass() in CHConstructor
//   3. hook method using CHOptimizedMethod()
//   4. register hook using CHHook() in CHConstructor
//   5. (optionally) call old method using CHSuper()


@interface libFlex : NSObject

@end

@implementation libFlex

- (id)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(appLaunched:)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
    }
    return self;
}

- (void)appLaunched:(NSNotification *)notification
{
    NSLog(@"======================= libFlex dylib show ========================");
    
    [[FLEXManager sharedManager] showExplorer];
}

@end


__attribute__((constructor)) static void entry()
{
    static libFlex *instance = [[libFlex alloc] init];
    NSLog(@"======================= libFlex dylib init =======================");
}
