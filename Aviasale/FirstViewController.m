//
//  ViewController.m
//  Aviasale
//
//  Created by admin on 28.02.2021.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"First Controller";
    self.view.backgroundColor = [UIColor greenColor];
    
    CGRect redViewFrame = CGRectMake(40.0, 100.0, [UIScreen mainScreen].bounds.size.width - 80.0, [UIScreen mainScreen].bounds.size.height - 140.0);
    UIView *redView = [[UIView alloc] initWithFrame: redViewFrame];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview: redView];
    
    [self configureControls];
}

#pragma mark - Navigation
- (void)openSecondViewController {
    SecondViewController *secondViewController = [SecondViewController new];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

#pragma mark - Configure UI

- (void)configureControls {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 200, 100);
    button.backgroundColor = [UIColor blueColor];
    button.center = self.view.center;
    [button setTitle:@"Нажми" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(openSecondViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


@end
