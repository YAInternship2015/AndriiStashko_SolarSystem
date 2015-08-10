//
//  ASTSolarSystemModel.m
//  Solar System
//
//  Created by Andrii Stashko on 9/8/15.
//  Copyright (c) 2015 Andrii Stashko. All rights reserved.
//

#import "ASTSolarSystemModel.h"
#import "ASTPlanet.h"

@implementation ASTSolarSystemModel

#warning @synthesize тебе не нужен здесь
@synthesize planets = _planets;

#warning Поработай над форматированием кода, ссылка на гайдлайны ялантис есть в гугл группе
-(id) init
{
    self = [super init];
    if(self){
        
        ASTPlanet *sun = [[ASTPlanet alloc] initWithName:@"Sun" planetImageName:@"Sun.png"];
        ASTPlanet *mercury = [[ASTPlanet alloc] initWithName:@"Mercury" planetImageName:@"Mercury.png"];
        ASTPlanet *venus = [[ASTPlanet alloc] initWithName:@"Venus" planetImageName:@"Venus.png"];
        ASTPlanet *earth = [[ASTPlanet alloc] initWithName:@"Earth" planetImageName:@"Earth.png"];
        ASTPlanet *mars = [[ASTPlanet alloc] initWithName:@"Mars" planetImageName:@"Mars.png"];
        ASTPlanet *jupiter = [[ASTPlanet alloc] initWithName:@"Jupiter" planetImageName:@"Jupiter.png"];
        ASTPlanet *saturn = [[ASTPlanet alloc] initWithName:@"Saturn" planetImageName:@"Saturn.png"];
        ASTPlanet *uranus = [[ASTPlanet alloc] initWithName:@"Uranus" planetImageName:@"Uranus.png"];
        ASTPlanet *neptune = [[ASTPlanet alloc] initWithName:@"Neptune" planetImageName:@"Neptune.png"];
        ASTPlanet *pluto = [[ASTPlanet alloc] initWithName:@"Pluto" planetImageName:@"Pluto.png"];
        
        _planets = [NSArray arrayWithObjects:
                       sun, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, nil];
    }
    return self;
}

@end