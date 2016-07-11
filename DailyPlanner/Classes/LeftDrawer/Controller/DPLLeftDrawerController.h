//
//  DPLLeftDrawerController.h
//  DailyPlanner
//
//  Created by zhou on 16/6/27.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPLMainViewController.h"
#import "DPLNavigationController.h"

@interface DPLLeftDrawerController : UIViewController

@property (nonatomic, strong) DPLNavigationController *naviHome;
@property (nonatomic, weak) DPLMainViewController *mainController;

@end
