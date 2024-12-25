//
//  ViewController.m
//  A00CppInitMeasureExample
//
//  Created by denglibing3 on 2024/12/25.
//  Copyright © 2024 erduoniba. All rights reserved.
//

#import "ViewController.h"

#import <A00CppInitMeasure/A00CppInitMeasure.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [A00CppInitMeasure printStaticInitializerTimer];
}


@end
