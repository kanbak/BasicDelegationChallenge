//
//  colorDelegate.h
//  DelegateFun
//
//  Created by Umut Kanbak on 7/15/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol colorDelegate <NSObject>

-(void)changeColor:(UIColor *)color;
-(void)changeText:(NSString *)text;


@end
