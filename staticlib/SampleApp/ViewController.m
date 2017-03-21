//
//  ViewController.m
//  SampleApp
//
//  Created by Benjamin Asher on 3/17/17.
//  Copyright © 2017 benasher44. All rights reserved.
//

#import "ViewController.h"

#import <SampleStaticLib/SampleStaticLib.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [Sample logTest];
}

@end
