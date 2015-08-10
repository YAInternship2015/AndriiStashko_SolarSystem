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
#warning вместо ivar'ов использую @property, с ними легче изменять поведение класс в наследниках
    ASTSolarSystemModel *solarSystem;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    solarSystem = [[ASTSolarSystemModel alloc] init];
}

#warning пустые методы надо удалять
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
    
#warning такую проверку в современном objective-c уже не пишут,  метод - (id)dequeueReusableCellWithIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath гаранитировано вернет тебе ячейку и следующей проверки на nil не будет
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ASTCustomTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    ASTPlanet *currentPlanet = [solarSystem.planets objectAtIndex:indexPath.row];
#warning заполнение ячейки моделью лучше инкапсулировать в самой ячейке. Необходимо создать у нее метод вроде setupWithPlanet:, в котором ячейка сама будет себя заполнять моделью
    cell.nameLabel.text = currentPlanet.name;
    cell.imageView.image = [UIImage imageNamed:currentPlanet.imageName];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
#warning так как у вас все ячейки одной высоты, значение высоты ячейки можно задать в таблице либо в сториборде, либо через свойство rowHeight. Данный метод стоит реализовывать, если ячейки в таблице имеют разную высоту
    return 80;
}

@end
