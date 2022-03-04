//
//  ViewController.m
//  DemoA
//
//  Created by Hello Cai on 2020/7/10.
//  Copyright © 2020 Hello Cai. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "UIImage+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    Person *p = [Person new];
    [p age];
    [Person eat];
    
    
    UIImageView *imagev = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imagev.center = self.view.center;
    imagev.image = [[UIImage imageNamed:@"music"] cutCircleImage];
    [self.view addSubview:imagev];
}


@end
