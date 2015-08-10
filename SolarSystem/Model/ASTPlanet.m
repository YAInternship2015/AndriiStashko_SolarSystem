//
//  ASTPlanet.m
//  Solar System
//
//  Created by Andrii Stashko on 9/8/15.
//  Copyright (c) 2015 Andrii Stashko. All rights reserved.
//

#import "ASTPlanet.h"

@implementation ASTPlanet

#warning поработай с форматированием кода
- (id)initWithName:(NSString*)name planetImageName:(NSString*)imageName
{
    self = [super init];
    if (self)
    {
        _name = name;
        _imageName = imageName;
    }
    return self;
}

@end
