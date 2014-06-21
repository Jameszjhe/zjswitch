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
    
    ZJSwitch *switch0 = nil;
    UIColor *onTintColor = nil;
    UIColor *tintColor = nil;
    UIColor *thumbTintColor = nil;
    ZJSwitchStyle style = ZJSwitchStyleBorder;
    NSString *onText = nil;
    NSString *offText = nil;
    
    for (NSInteger i = 0; i < 13; i++) {
        style = i % 2 == 0 ? ZJSwitchStyleBorder : ZJSwitchStyleNoBorder;
        
        srand((unsigned int)i + 1);
        onTintColor = [UIColor colorWithRed:(rand() % 256) / 255.0
                                      green:(rand() % 256) / 255.0
                                       blue:(rand() % 256) / 255.0
                                      alpha:1.0];
        
        srand((unsigned int)(i + 1) * 2);
        tintColor = [UIColor colorWithRed:(rand() % 256) / 255.0
                                    green:(rand() % 256) / 255.0
                                     blue:(rand() % 256) / 255.0
                                    alpha:1.0];
        
        srand((unsigned int)(i + 1) * 3);
        thumbTintColor = [UIColor colorWithRed:(rand() % 256) / 255.0
                                         green:(rand() % 256) / 255.0
                                          blue:(rand() % 256) / 255.0
                                         alpha:1.0];
        
        onText = (i % 3 == 0) ? @"ON" : nil;
        offText = (i % 3 == 0) ? @"OFF" : nil;
        
        switch0 = [[ZJSwitch alloc] initWithFrame:CGRectMake(20, i * (10 + 31) + 40, 60, 31)];
        switch0.style = style;
        switch0.onTintColor = onTintColor;
        switch0.tintColor = tintColor;
        switch0.thumbTintColor = thumbTintColor;
        switch0.onText = onText;
        switch0.offText = offText;
        [switch0 addTarget:self action:@selector(handleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:switch0];
        
        switch0 = [[ZJSwitch alloc] initWithFrame:CGRectMake(180, i * (10 + 31) + 40, 60, 31)];
        switch0.style = style;
        switch0.onTintColor = onTintColor;
        switch0.tintColor = tintColor;
        switch0.thumbTintColor = thumbTintColor;
        switch0.onText = onText;
        switch0.offText = offText;
        [switch0 addTarget:self action:@selector(handleSwitchEvent:) forControlEvents:UIControlEventValueChanged];
        [self.view addSubview:switch0];
        
        switch0.on = YES;
    }

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
