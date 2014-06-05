//
//  sssViewController.m
//  Switch_Slider_SegmentedControlSample
//
//  Created by Patrick on 14-6-5.
//  Copyright (c) 2014年 Patrick. All rights reserved.
//

#import "sssViewController.h"

@interface sssViewController ()

@end

@implementation sssViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)valueChanged:(id)sender
{

    UISwitch *witchSwitch = (UISwitch *) sender;
    BOOL setting = witchSwitch.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)sliderValueChange:(id)sender {
    UISlider *slider = (UISlider *) sender;
    int progressAsInt = (int)(slider.value + 0.5f);
    NSString *newText = [[NSString alloc]initWithFormat:@"%d",progressAsInt];
    self.SliderValue.text = newText;
}
- (IBAction)touchDown:(id)sender{
    if (_leftSwitch.hidden == YES) {
        self.rightSwitch.hidden = NO;
        self.leftSwitch.hidden = NO;
    } else {
        self.rightSwitch.hidden = YES;
        self.leftSwitch.hidden = YES;
    }
}

@end
