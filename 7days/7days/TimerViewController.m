//
//  TimerViewController.m
//  7days
//
//  Created by Bobby Quennell on 8/04/2015.
//  Copyright (c) 2015 bobby. All rights reserved.
//

#import "TimerViewController.h"

@interface TimerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *timeLeftLabel;

@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.TrackStartTime = [NSDate date];
    
    // Do any additional setup after loading the view.
    [self updateMainTime];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - timer
- (void)updateMainTime
{
    NSDate * now = [NSDate date];
    //NSLog(@"now-----:%@", now);
    NSTimeInterval trackingTimeInSeconds = [now timeIntervalSinceDate:self.TrackStartTime];
    //NSLog(@"trackingInSeconds-------:%d", (int)trackingTimeInSeconds);
    NSDate *timerDate = [NSDate dateWithTimeIntervalSinceReferenceDate:trackingTimeInSeconds];
    //NSLog(@"timerDate---:%@", timerDate);
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"HH:mm:ss"];
    [dateFormat setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"GMT+0:00"]];

     self.trackTimeLabel.text = [dateFormat stringFromDate:timerDate];
    //NSLog(@"TimeLabel-----:%@", self.trackTimeLabel.text);
    [self performSelector:@selector(updateMainTime) withObject:self afterDelay:1.0];
}
- (IBAction)ResetTimerChores:(id)sender {
    self.TrackStartTime = [NSDate date];
}
@end
