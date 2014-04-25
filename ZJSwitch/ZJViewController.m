//
//  ZJViewController.m
//  ZJSwitch
//
//  Created by James Z.J. He on 4/24/14.
//  Copyright (c) 2014 mobieden. All rights reserved.
//

#import "ZJViewController.h"
#import "ZJSwitch.h"

@interface ZJViewController ()

- (void)handleSwitchEvent:(id)sender;

@end

@implementation ZJViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ZJSwitch *aSwitch = [[ZJSwitch alloc] initWithFrame:CGRectMake(100, 100, 60, 50)];
    aSwitch.backgroundColor = [UIColor clearColor];
    [aSwitch addTarget:self action:@selector(handleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:aSwitch];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)handleSwitchEvent:(id)sender
{
    NSLog(@"%s", __FUNCTION__);
}

@end
