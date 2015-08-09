//
//  ViewController.m
//  SolarSystem
//
//  Created by Andrii Stashko on 9/8/15.
//  Copyright (c) 2015 Andrii Stashko. All rights reserved.
//

#import "ViewController.h"
#import "ASTPlanet.h"
#import "ASTSolarSystemModel.h"
#import "ASTCustomTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController
{
    ASTSolarSystemModel *solarSystem;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    solarSystem = [[ASTSolarSystemModel alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [solarSystem.planets count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *customCellIdentifier = @"customCell";
    
    ASTCustomTableViewCell *cell = (ASTCustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:customCellIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ASTCustomTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    ASTPlanet *currentPlanet = [solarSystem.planets objectAtIndex:indexPath.row];
    cell.nameLabel.text = currentPlanet.name;
    cell.imageView.image = [UIImage imageNamed:currentPlanet.imageName];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

@end
