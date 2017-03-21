//
//  Sample.m
//  SampleStaticLib
//
//  Created by Benjamin Asher on 3/17/17.
//  Copyright © 2017 benasher44. All rights reserved.
//

#import "Sample.h"

#define ddLogLevel DDLogLevelAll

#import <CocoaLumberjack/CocoaLumberjack.h>

@implementation Sample

+ (void)logTest {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
  });
  DDLogInfo(@"Test");
}

@end
