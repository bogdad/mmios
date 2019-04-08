//
//  ViewController.m
//  MentalMaths2
//
//  Created by Vladimir Shakhov on 2019-04-08.
//  Copyright © 2019 Vladimir Shakhov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void)setupConstraints;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.mytitle = [[UILabel alloc] init];
    self.mytitle.text = @"Mental Math";
    self.mytitle.translatesAutoresizingMaskIntoConstraints = false;
             
    [self.view addSubview:self.mytitle];
    
    [self setupConstraints];
}

- (void)setupConstraints {
    NSLayoutConstraint *hCenter = [_mytitle.centerXAnchor constraintEqualToAnchor: [self.view centerXAnchor]];
    NSLayoutConstraint *vTop = [_mytitle.centerYAnchor constraintEqualToAnchor: [self.view centerYAnchor]];
    [NSLayoutConstraint activateConstraints:@[hCenter, vTop]];
}


@end
