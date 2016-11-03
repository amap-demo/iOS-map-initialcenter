//
//  ViewController.m
//  MapInitialcenterDemo
//
//  Created by xiaoming han on 16/11/3.
//  Copyright © 2016年 AutoNavi. All rights reserved.
//

#import "ViewController.h"

#import <MAMapKit/MAMapKit.h>


@interface ViewController ()<MAMapViewDelegate>

@property (nonatomic, strong) MAMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
    self.mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.mapView.delegate = self;
    
    // 这是地图中心点为杭州
    self.mapView.centerCoordinate = CLLocationCoordinate2DMake(30.245122, 120.147589);
    
    [self.view addSubview:self.mapView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
