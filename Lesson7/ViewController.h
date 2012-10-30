//
//  ViewController.h
//  Lesson7
//
//  Created by 朱 皓斌 on 12-10-28.
//  Copyright (c) 2012年 朱 皓斌. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)touchSegment:(id)sender;
- (IBAction)SliderChange:(id)sender;
- (IBAction)swichChange:(id)sender;
@property(strong,nonatomic)NSTimer *myTime;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *myIndicator;
@property (strong, nonatomic) IBOutlet UISlider *sliderChange;
@property (strong, nonatomic) IBOutlet UIProgressView *myProgress;
@property (strong, nonatomic) IBOutlet UILabel *progressPercent;

@end
