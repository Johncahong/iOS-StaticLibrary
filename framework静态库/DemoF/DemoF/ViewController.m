//
//  ViewController.m
//  DemoF
//
//  Created by Hello Cai on 2022/3/3.
//

#import "ViewController.h"
#import "StaticLibraryTool/Person.h"
#import "StaticLibraryTool/UIImage+Extension.h"

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
