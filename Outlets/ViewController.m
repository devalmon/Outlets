//
//  ViewController.m
//  Outlets
//
//  Created by Alexey Baryshnikov on 26.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
}

- (float)randomFloatFromZeroToOne {
    return (float) (arc4random() % 256) / 255;
}

- (UIColor *)randomColor {
    CGFloat r = [self randomFloatFromZeroToOne];
    CGFloat g = [self randomFloatFromZeroToOne];
    CGFloat b = [self randomFloatFromZeroToOne];
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
//    self.testView.backgroundColor = [self randomColor];
//    self.testView1.backgroundColor = [self randomColor];
//    self.testView2.backgroundColor = [self randomColor];
//    self.testView3.backgroundColor = [self randomColor];
//    self.testView4.backgroundColor = [self randomColor];
    for (UIView *item in self.arrayViews) {
        item.backgroundColor = [self randomColor];
    }
}

- (void)dismissKeyboard {
    [self.view endEditing:YES];
}

@end
