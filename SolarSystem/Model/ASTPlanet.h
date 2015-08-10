//
//  ASTPlanet.h
//  Solar System
//
//  Created by Andrii Stashko on 9/8/15.
//  Copyright (c) 2015 Andrii Stashko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASTPlanet : NSObject

#warning свойства пиши с новой строки каждое. не забывай добавлять ключевые слова strong/weak/assign/copy, хоть по умолчанию и подходщая тебе реализация
@property(nonatomic, readonly) NSString *name, *imageName;

#warning здесь также ошибка в форматировании кода
- (id)initWithName:(NSString*)name planetImageName:(NSString*)imageName;

@end

