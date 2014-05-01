ZJSwitch
========

ZJSwitch is a simple implmentation for swtich control that similar to UISwitch. 

ZJSwitch can add text on control for on of off status.

How to use ZJWitch
--------

```Objective-C
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
```

(http://jameszjhe.qiniudn.com/zjswitch)


