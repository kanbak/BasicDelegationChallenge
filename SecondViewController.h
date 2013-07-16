//
//  SecondViewController.h
//  DelegateFun
//
//  Created by Umut Kanbak on 7/15/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "colorDelegate.h"


@interface SecondViewController : UIViewController

@property (strong, nonatomic) id <colorDelegate> delegate;

@end
