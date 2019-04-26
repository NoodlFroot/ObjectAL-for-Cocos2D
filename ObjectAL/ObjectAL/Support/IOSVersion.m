//
//  IOSVersion.m
//  ObjectiveGems
//
//  Created by Karl Stenerud on 10-11-07.
//

#import "IOSVersion.h"
#import "ccMacros.h"
#if __CC_PLATFORM_IOS
#import <UIKit/UIKit.h>
#endif

SYNTHESIZE_SINGLETON_FOR_CLASS_PROTOTYPE(IOSVersion);


@implementation IOSVersion

SYNTHESIZE_SINGLETON_FOR_CLASS(IOSVersion);

- (id) init
{
	if(nil != (self = [super init]))
	{
#if __CC_PLATFORM_IOS
		// Only really any good for the major version as 4.10.3 would show as 4.1 which is less than what 4.2.2 (4.2) would return.
		version = [[[UIDevice currentDevice] systemVersion] floatValue];
#else
        version = 5;
#endif
	}
	return self;
}

@synthesize version;

@end
