//
//  ASTSolarSystemModel.h
//  Solar System
//
//  Created by Andrii Stashko on 9/8/15.
//  Copyright (c) 2015 Andrii Stashko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASTSolarSystemModel : NSObject

#warning не стоит показывать по сути внутренний массив в *.h. Так его можно модифицировать извне. Необходимо либо поменять ему доступ на readonly, либо еще лучше создать методы, которые нужны вью контроллеру (а его интерисует, сколько всего есть моделей, и модель по индексу), и показать в *.h только их
#warning опять же, не забывай про strong/weak.copy/assign
@property(nonatomic) NSArray *planets;

@end
