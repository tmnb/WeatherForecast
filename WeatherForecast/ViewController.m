//
//  ViewController.m
//  WeatherForecast
//
//  Created by tomonobu on 2014/08/09.
//  Copyright (c) 2014年 Tomonobu Sato. All rights reserved.
//

#import "ViewController.h"

@import WeatherKit;

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"http://www.raywenderlich.com/demos/weather_sample/weather.php?format=json" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
