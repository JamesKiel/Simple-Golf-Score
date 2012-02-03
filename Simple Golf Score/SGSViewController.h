//
//  SGSViewController.h
//  Simple Golf Score
//
//  Created by Blair Kiel on 1/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SGSViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIStepper *StrokeStepperOutlet;
@property (strong, nonatomic) IBOutlet UISegmentedControl *HoleScoreRoundScoreViews;
@property (strong, nonatomic) IBOutlet UIButton *NextHoleButton;
@property (strong, nonatomic) IBOutlet UILabel *StrokeDisplay;
@property (nonatomic)int Holescorevalue;
@property (nonatomic) int Roundscorevalue;
- (IBAction)StrokeStepperAction:(id)sender;
- (IBAction)NextHoleButton:(id)sender;
- (IBAction)HoleScoreRoundScoreAction:(id)sender;

@end
