//
//  DQHomeViewController.m
//  SinaWeibo-OC
//
//  Created by admin on 2016/9/23.
//  Copyright © 2016年 Derrick_Qin. All rights reserved.
//

#import "DQHomeViewController.h"
#import "UIBarButtonItem+Extension.h"
#import "DQTempViewController.h"

@interface DQHomeViewController ()

@end

@implementation DQHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIBarButtonItem *rightBarbuttonItem = [[UIBarButtonItem alloc]initWithImage:@"navigationbar_pop" title:nil target:self action:@selector(rightBarButtonItemClick)];
    self.navigationItem.rightBarButtonItem = rightBarbuttonItem;
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (void)rightBarButtonItemClick{
    DQTempViewController *tempVC = [[DQTempViewController alloc]init];
    [self.navigationController pushViewController:tempVC animated:YES];
}


@end
