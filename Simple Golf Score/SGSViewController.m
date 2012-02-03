//
//  SGSViewController.m
//  Simple Golf Score
//
//  Created by Blair Kiel on 1/27/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SGSViewController.h"

@implementation SGSViewController
@synthesize NextHoleButton;
@synthesize StrokeStepperOutlet;
@synthesize HoleScoreRoundScoreViews;
@synthesize StrokeDisplay;
@synthesize Holescorevalue;
@synthesize Roundscorevalue;
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
}

- (void)viewDidUnload
{
    [self setStrokeDisplay:nil];
    [self setNextHoleButton:nil];
    [self setStrokeStepperOutlet:nil];
    [self setHoleScoreRoundScoreViews:nil];
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
       //TODO seperate Roundscorevalue from inside this method, see if I can put it in View interface
}
- (IBAction)HoleScoreRoundScoreAction:(id)sender {
    if (HoleScoreRoundScoreViews.selectedSegmentIndex == 0) {
        StrokeStepperOutlet.enabled = true;
        NextHoleButton.enabled = true;
        StrokeDisplay.text = [NSString stringWithFormat:@"%d",Holescorevalue];
    }
    if (HoleScoreRoundScoreViews.selectedSegmentIndex == 1) {
        StrokeStepperOutlet.enabled = false;
        NextHoleButton.enabled = false;
        StrokeDisplay.text =[NSString stringWithFormat:@"%d", Roundscorevalue];

    }
}

//    HoleScoreRoundScoreViews.enabled = TRUE;
//    if (HoleScoreRoundScoreViews.selectedSegmentIndex == 0,sender) {
//    
//        
//    }  else {
//    if (HoleScoreRoundScoreViews.selectedSegmentIndex == 1,sender) {
//        StrokeStepperOutlet.enabled = false;
//        NextHoleButton.enabled = false;
//        StrokeDisplay.text = [NSString stringWithFormat:@"%d", Roundscorevalue;
//    }
@end
