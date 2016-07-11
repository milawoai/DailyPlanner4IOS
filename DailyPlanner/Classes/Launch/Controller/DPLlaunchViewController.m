//
//  DPLlaunchViewController.m
//  DailyPlanner
//
//  Created by zhou on 16/6/23.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import "DPLlaunchViewController.h"
#import "UIImageView+WebCache.h"
#import "DPLStyle.h"
#import "DPLResistanceHelper.h"
#import "DPLMainViewController.h"
#import "AppDelegate.h"

@interface DPLlaunchViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backImageView;

@property (weak, nonatomic) IBOutlet UILabel *logoContants;
@property (weak, nonatomic) IBOutlet UIImageView *logoImage;
@end

@implementation DPLlaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *url = [DPLResistanceHelper getLaunchUrl];
    if (url) {
        [self.backImageView sd_setImageWithURL:[NSURL URLWithString:url]];
    };
    
    DPLMainViewController *mainvc = [[DPLMainViewController alloc] init];
    [mainvc view];
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    delegate.mainController = mainvc;
    [UIApplication sharedApplication].keyWindow.rootViewController = mainvc;
    /*
    [SYZhihuTool getLaunchImageWithCompleted:^(id obj) {
        [kUserDefaults setObject:obj forKey:@"launchScreen"];
        [self.backgroundImageView sd_setImageWithURL:[NSURL URLWithString:obj]];
        
     
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [UIView animateWithDuration:1.89 animations:^{
                self.backgroundImageView.alpha = 0.0;
                self.backgroundImageView.transform = CGAffineTransformMakeScale(1.2, 1.2);
            } completion:^(BOOL finished) {
                
                [UIApplication sharedApplication].keyWindow.rootViewController = mainvc;
            }];
        });
    } failure:^{
        [MBProgressHUD showError:@"网络不给力啊，亲~请稍后再试..."];
    }];*/
    

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
