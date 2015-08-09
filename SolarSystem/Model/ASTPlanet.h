//
//  ASTPlanet.h
//  Solar System
//
//  Created by Andrii Stashko on 9/8/15.
//  Copyright (c) 2015 Andrii Stashko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASTPlanet : NSObject

@property(nonatomic, readonly) NSString *name, *imageName;

- (id)initWithName:(NSString*)name planetImageName:(NSString*)imageName;

@end

