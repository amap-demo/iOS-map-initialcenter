//
//  RootViewController.m
//  MapInitialcenterDemo
//
//  Created by eidan on 16/12/1.
//  Copyright © 2016年 AutoNavi. All rights reserved.
//

#import "RootViewController.h"
#import "MapViewController.h"

#define RGB(R,G,B)              [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]

@interface RootViewController ()

@property (weak, nonatomic) IBOutlet UIButton *beijingBtn;
@property (weak, nonatomic) IBOutlet UIButton *hangzhouBtn;
@property (weak, nonatomic) IBOutlet UIButton *shanghaiBtn;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"选择地图中心点所在城市";
    
    self.beijingBtn.layer.cornerRadius = self.hangzhouBtn.layer.cornerRadius = self.shanghaiBtn.layer.cornerRadius = 8;
    self.beijingBtn.layer.borderWidth = self.hangzhouBtn.layer.borderWidth = self.shanghaiBtn.layer.borderWidth = 1;
    self.beijingBtn.layer.borderColor = self.hangzhouBtn.layer.borderColor = self.shanghaiBtn.layer.borderColor = RGB(0, 122, 255).CGColor;
    
    // Do any additional setup after loading the view.
}

#pragma -mark xib click

- (IBAction)cityBtnClick:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    
    MapViewController *mapVC = [[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil];
    
    if (btn.tag == 1) {  //北京
        mapVC.latitude = 39.904983;
        mapVC.longitude = 116.427287;
    } else if (btn.tag == 2){  //杭州
        mapVC.latitude = 30.245122;
        mapVC.longitude = 120.147589;
    } else if (btn.tag == 3){  //上海
        mapVC.latitude = 31.231706;
        mapVC.longitude = 121.472644;
    }
    
    [self.navigationController pushViewController:mapVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
