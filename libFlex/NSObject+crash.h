//
//  NSObject+crash.h
//  libFlex
//
//  Created by 蓝布鲁 on 2018/1/22.
//

#import <Foundation/Foundation.h>

@interface NSObject (crash)
-(NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(id)buffer count:(NSUInteger)len;
@end
