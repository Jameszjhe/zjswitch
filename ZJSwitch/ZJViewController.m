/*
 * Copyright (c) 2014, James <jamesqianlee@gmail.com> All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of James nor the names of its contributors may
 *       be used to endorse or promote products derived from this software
 *       without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY JAMES "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL JAMES AND CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

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
    
    ZJSwitch *switch0 = [[ZJSwitch alloc] initWithFrame:CGRectMake(100, 100, 60, 31)];
    switch0.backgroundColor = [UIColor clearColor];
    [switch0 addTarget:self action:@selector(handleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:switch0];
    
    ZJSwitch *switch1 = [[ZJSwitch alloc] initWithFrame:CGRectMake(100, 140, 60, 31)];
    switch1.backgroundColor = [UIColor clearColor];
    switch1.tintColor = [UIColor orangeColor];
    [switch1 addTarget:self action:@selector(handleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:switch1];
    
    ZJSwitch *switch2 = [[ZJSwitch alloc] initWithFrame:CGRectMake(100, 180, 80, 31)];
    switch2.backgroundColor = [UIColor clearColor];
    switch2.tintColor = [UIColor orangeColor];
    switch2.onText = @"ON";
    switch2.offText = @"OFF";
    [switch2 addTarget:self action:@selector(handleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:switch2];
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
