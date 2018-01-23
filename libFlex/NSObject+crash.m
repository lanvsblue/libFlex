//
//  NSObject+crash.m
//  libFlex
//
//  Created by 蓝布鲁 on 2018/1/22.
//

#import "NSObject+crash.h"

@implementation NSObject (crash)
-(NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id)buffer count:(NSUInteger)len{
    NSLog(@"======================%@",[NSThread callStackSymbols]);
    return 0;
}
@end
