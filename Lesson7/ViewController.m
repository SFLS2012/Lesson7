//
//  ViewController.m
//  Lesson7
//
//  Created by 朱 皓斌 on 12-10-28.
//  Copyright (c) 2012年 朱 皓斌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myIndicator,myProgress,myTime,progressPercent;
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

- (IBAction)touchSegment:(id)sender {
    NSLog(@"%i",[(UISegmentedControl *)sender selectedSegmentIndex]);
}

- (IBAction)SliderChange:(id)sender {
    NSLog(@"%f",[(UISlider *)sender value]);
}

- (IBAction)swichChange:(id)sender {
    if ([(UISwitch *)sender isOn]) {
        NSLog(@"%@",@"on");
        myTime=[NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(timeChange) userInfo:nil repeats:YES];
        [myIndicator startAnimating];
    }else{
        NSLog(@"%@",@"off");
        [myTime invalidate];
    }
    
}
-(void)timeChange{
    myProgress.progress +=0.01f;
    progressPercent.text=[NSString stringWithFormat:@"%3.2f%%",myProgress.progress*100];
}

@end
