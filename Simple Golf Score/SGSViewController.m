//
//  SGSViewController.m
//  Simple Golf Score
//
//  Created by Blair Kiel on 1/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SGSViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation SGSViewController
@synthesize NextHoleButton;
@synthesize StrokeStepperOutlet;
@synthesize HoleScoreRoundScoreViews;
@synthesize StrokeDisplay;
@synthesize Holescorevalue;
@synthesize Roundscorevalue;
@synthesize HoleNumber;
@synthesize HoleNumbervar;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    HoleNumbervar = 1;
    HoleNumber.text = @"1";
    StrokeDisplay.layer.cornerRadius = 5.0;
    StrokeDisplay.layer.masksToBounds = YES;
    

}

- (void)viewDidUnload
{
    [self setStrokeDisplay:nil];
    [self setNextHoleButton:nil];
    [self setStrokeStepperOutlet:nil];
    [self setHoleScoreRoundScoreViews:nil];
    [self setHoleNumber:nil];
    [self setHoleNumber:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)StrokeStepperAction:(UIStepper*)sender {
    Holescorevalue = [sender value];
    StrokeDisplay.text = [NSString stringWithFormat:@"%d", Holescorevalue];
    
}

- (IBAction)NextHoleButton:(id)sender {
    Roundscorevalue+= Holescorevalue;
    StrokeDisplay.text = @"";
    StrokeStepperOutlet.value = 0;
    HoleNumbervar++;
    HoleNumber.text = [NSString stringWithFormat:@"%d",HoleNumbervar];
    if (HoleNumbervar <= 18) {
        [NextHoleButton setTitle: @"Next Hole" forState:UIControlStateNormal];
    }
    if (HoleNumbervar == 18) {
        [NextHoleButton setTitle: @"New Game" forState:UIControlStateNormal];
        StrokeStepperOutlet = 0;
        Roundscorevalue = 0;
        Holescorevalue = 0;
        StrokeDisplay.text = @"";
        HoleNumbervar = 0;
        
    
       //TODO seperate Roundscorevalue from inside this method, see if I can put it in View interface
}
}
- (IBAction)HoleScoreRoundScoreAction:(id)sender {
    if (HoleScoreRoundScoreViews.selectedSegmentIndex == 0) {
        StrokeStepperOutlet.enabled = true;
        StrokeStepperOutlet.hidden = false;
        NextHoleButton.enabled = true;
        NextHoleButton.hidden = false;
        StrokeDisplay.text = [NSString stringWithFormat:@"%d",Holescorevalue];
    }
    if (HoleScoreRoundScoreViews.selectedSegmentIndex == 1) {
        StrokeStepperOutlet.enabled = false;
        StrokeStepperOutlet.hidden = true;
        NextHoleButton.enabled = false;
        NextHoleButton.hidden = true;
        StrokeDisplay.text =[NSString stringWithFormat:@"%d", Roundscorevalue];

    }
}

@end
