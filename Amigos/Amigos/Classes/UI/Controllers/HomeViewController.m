//
//  HomeViewController.m
//  Amigos
//
//  Created by Kashan Khan on 28/04/2014.
//  Copyright (c) 2014 Kashan Khan. All rights reserved.
//

#import "HomeViewController.h"
#import "BALHandler.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadPatent {

    BALHandler *balHandler = [BALHandler new];
    [balHandler performRequest:BALTypePatentDBInitailizer parameters:nil block:^(id response, NSError *error) {
        NSLog(@" response : %@", response);
        NSLog(@" error : %@", error);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
