//
//  sssViewController.h
//  Switch_Slider_SegmentedControlSample
//
//  Created by Patrick on 14-6-5.
//  Copyright (c) 2014年 Patrick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sssViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
- (IBAction)sliderValueChange:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *SliderValue;

- (IBAction)valueChanged:(id)sender;
- (IBAction)touchDown:(id)sender;

@end
