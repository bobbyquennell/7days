//
//  PieChartViewController.h
//  7days
//
//  Created by Bobby Quennell on 7/04/2015.
//  Copyright (c) 2015 bobby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PNChart.h"
@interface PieChartViewController : UIViewController<PNChartDelegate>
@property (nonatomic) PNPieChart * pieChart;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;

@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;

@property (weak, nonatomic) IBOutlet UIView *pieChartView;
- (IBAction)leftSwitchChanged:(id)sender;
- (IBAction)rightSwitchChanged:(id)sender;


@end
