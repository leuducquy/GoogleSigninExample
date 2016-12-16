//
//  ViewController.m
//  GoogleSignin
//
//  Created by Quy on 12/16/16.
//  Copyright © 2016 Quy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()< GIDSignInUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [GIDSignIn sharedInstance].uiDelegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
