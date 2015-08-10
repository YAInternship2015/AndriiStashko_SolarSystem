//
//  ASTCustomTableViewCell.m
//  Solar System
//
//  Created by Andrii Stashko on 9/8/15.
//  Copyright (c) 2015 Andrii Stashko. All rights reserved.
//

#import "ASTCustomTableViewCell.h"

@implementation ASTCustomTableViewCell

#warning @synthesize дл обычных свойств можно не писать, если не ошибаюсь, начиная с Xcode 5.
@synthesize imageView = _imageView, nameLabel = _nameLabel;

#warning пустые методы необходимо удалять
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
