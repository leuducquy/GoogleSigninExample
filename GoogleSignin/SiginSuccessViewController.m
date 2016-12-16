//
//  SiginSuccessViewController.m
//  GoogleSignin
//
//  Created by Quy on 12/16/16.
//  Copyright © 2016 Quy. All rights reserved.
//

#import "SiginSuccessViewController.h"
#import "ViewController.h"
@interface SiginSuccessViewController ()

@end

@implementation SiginSuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)signOut:(id)sender {
    [[GIDSignIn sharedInstance] signOut];
   
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    //[[SiginSuccessViewController alloc]initWithNibName:@"SiginSuccessViewController" bundle:nil];
    UINavigationController *nav = [[UINavigationController alloc]initWithNibName:@"NaviagtionRoot" bundle:nil];
    
    [nav setViewControllers:@[vc] animated:YES];
    [UIApplication sharedApplication].keyWindow.rootViewController  = nav;
}
@end
