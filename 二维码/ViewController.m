//
//  ViewController.m
//  二维码
//
//  Created by 王菲 on 16/1/26.
//  Copyright © 2016年 WangFei. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+QRCodeImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageCreatQRCodeImageWithFrame:CGRectMake(0, 0, 100, 100) String:@"http://d.nuomi.com/?ndq"];
    UIImageView *view =[[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 300, 300)];
    
    UIView *icon = [UIView new];
    icon.backgroundColor = [UIColor redColor];
    icon.frame = CGRectMake(0, 0, 80, 80);
    icon.center = view.center;
    NSLog(@"icon.center == %f,%f",icon.center.x,icon.center.y  );
    NSLog(@"view == %f,%f",view.center.x,view.center.y  );

    view.image = image;

    
    
    [self.view addSubview:view];
    
//    [self.view addSubview:icon];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
