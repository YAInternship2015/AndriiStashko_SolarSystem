//
//  ASTCustomTableViewCell.h
//  Solar System
//
//  Created by Andrii Stashko on 9/8/15.
//  Copyright (c) 2015 Andrii Stashko. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASTCustomTableViewCell : UITableViewCell

#warning в ксибе ячейки есть замечания по автолэйауту (много чего помечено красным). попытайся разобраться с этим, ячейка достаточно простая, не должно быть ни красных замечаний, ни желтых

#warning если перенесешь заполнение ячейки в метод ячейки, то объявление этих свойств можно будет перенести в *.m. Вообще стоит как можно меньше внутренней реализации класса показывать в *.h файлах
@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *nameLabel;

@end
