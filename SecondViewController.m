//
//  SecondViewController.m
//  DelegateFun
//
//  Created by Umut Kanbak on 7/15/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () {
    
    __weak IBOutlet UITextField *colorTextBox;
}
- (IBAction)colorTextField:(UITextField*)sender;

- (IBAction)makeRed:(id)sender;
- (IBAction)makeGreen:(id)sender;
- (IBAction)makeBlue:(id)sender;
- (IBAction)makeBlack:(id)sender;


@end


@implementation SecondViewController


@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)makeRed:(id)sender {
    
    [delegate changeColor:[UIColor redColor]];
    
}
- (IBAction)makeGreen:(id)sender {
    [delegate changeColor:[UIColor greenColor]];
}

- (IBAction)makeBlue:(id)sender {
    [delegate changeColor:[UIColor blueColor]];
}

- (IBAction)makeBlack:(id)sender {
    [delegate changeColor:[UIColor blackColor]];
}
-(IBAction)colorTextField:(UITextField *)sender{
    [delegate changeText:sender.text];
     
}
    
    
@end