//
//  MLPMainViewController.m
//  DailyPlanner
//
//  Created by zhou on 16/6/23.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "DPLMainViewController.h"

@interface DPLMainViewController ()

@end

@implementation DPLMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.maximumLeftDrawerWidth = 200;
    self.shouldStretchDrawer = NO;
    self.showsShadow = NO;
    
    [DPLNotificationCenter addObserver:self selector:@selector(openDrawer) name:OpenDrawer object:nil];
    [DPLNotificationCenter addObserver:self selector:@selector(closeDrawer) name:CloseDrawer object:nil];
    [DPLNotificationCenter addObserver:self selector:@selector(toggleDrawer) name:ToggleDrawer object:nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [DPLNotificationCenter removeObserver:self];
}

#pragma mark event handler
- (void)openDrawer {
    [self openDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

- (void)closeDrawer {
    [self closeDrawerAnimated:YES completion:nil];
    
}

- (void)toggleDrawer {
    self.openSide == MMDrawerSideNone ? [self openDrawer]:[self closeDrawer];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
