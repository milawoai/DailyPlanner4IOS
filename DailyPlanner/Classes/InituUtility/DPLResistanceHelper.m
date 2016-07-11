//
//  DPLResistanceHelper.m
//  DailyPlanner
//
//  Created by zhou on 16/6/23.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "DPLResistanceHelper.h"


# define LaunchUrl @"launchScreenUrl"
@implementation DPLResistanceHelper

+ (NSString *)getLaunchUrl {
    return [DPLUserDefaults stringForKey:LaunchUrl];
}

+ (void)setLaunchUrl:(NSString *)launchUrl {
    [DPLUserDefaults setObject:launchUrl forKey:LaunchUrl];
}

@end
