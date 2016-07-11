//
//  DPLMacroDefine.h
//  DailyPlanner
//
//  Created by zhou on 16/6/23.
//  Copyright © 2016年 zhou. All rights reserved.
//

#ifndef DPLMacroDefine_h
#define DPLMacroDefine_h

#define WEAKSELF typeof(self) __weak weakSelf = self;
#define SCREEN_WIDTH ([[UIScreen mainScreen]bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen]bounds].size.height)
#define SCREEN_BOUNDS [UIScreen mainScreen].bounds

#define UIColorFromRGBA(rgbValue, a) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0x0000FF))/255.0 \
alpha:a]

/*
 相对密度
 */
#define DENSITY (SCREEN_WIDTH/320.0)
#define evaluate(x) ceil((x)*DENSITY)

#define VERTICALDENSITY (SCREEN_HEIGHT/667.0)
#define verticalevaluate(x) ceil((x)*VERTICALDENSITY)

#define DENSITY375 (SCREEN_WIDTH/375)  //相对于iphone6的密度
#define evaluate375(x) ceil((x)*DENSITY375)

#define DPLUserDefaults       [NSUserDefaults standardUserDefaults]
#define DPLNotificationCenter [NSNotificationCenter defaultCenter]

#define OpenDrawer          @"leftdrawer_open"
#define CloseDrawer         @"leftdrawer_close"
#define ToggleDrawer        @"leftdrawer_toggle"

#endif /* DPLMacroDefine_h */
