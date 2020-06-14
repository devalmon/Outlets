//
//  ViewController.h
//  Outlets
//
//  Created by Alexey Baryshnikov on 26.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//
//@property (nonatomic, weak) IBOutlet UIView *testView;
//@property (weak, nonatomic) IBOutlet UIView *testView1;
//@property (weak, nonatomic) IBOutlet UIView *testView2;
//@property (weak, nonatomic) IBOutlet UIView *testView3;
//@property (weak, nonatomic) IBOutlet UIView *testView4;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *arrayViews;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

