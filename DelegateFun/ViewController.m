//
//  ViewController.m
//  DelegateFun
//
//  Created by Umut Kanbak on 7/15/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UILabel *colorLabel;
    SecondViewController *secondViewController;
}


@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    [self.view addSubview:secondViewController.view];
    secondViewController.view.center = self.view.center;
    
    secondViewController.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark colorDelegate
-(void)changeColor:(UIColor *)color;

{
self.view.backgroundColor = color;
}

#pragma mark textDelegate
-(void)changeText:(NSString *)text;
{
    colorLabel.text = text;
}

@end
