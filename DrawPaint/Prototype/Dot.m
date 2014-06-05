//
//  Dot.m
//  DrawPaint
//
//  Created by 林鹏 on 6/4/14.
//  Copyright (c) 2014 林鹏. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize size;
@synthesize color;

-(id)copyWithZone:(NSZone *)zone
{
    Dot *dotCopy=[[[self class]allocWithZone:zone]initWithLocation:location];
    [dotCopy setColor:color];
    [dotCopy setSize:size];
    return dotCopy;
}

@end
