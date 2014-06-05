//
//  Stroke.m
//  DrawPaint
//
//  Created by 林鹏 on 6/4/14.
//  Copyright (c) 2014 林鹏. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke
@synthesize color;
@synthesize size;
@dynamic location;

-(id)init
{
    if (self=[super init]) {
        children=[[NSMutableArray alloc ]initWithCapacity:5];
    }
    return self;
}

-(void)setLocation:(CGPoint)apoint
{
    
}

-(CGPoint )location
{
    if ([children count]>0) {
        return [(id <Mark> )[children objectAtIndex:0] location];
    }
    return CGPointZero;
}

-(void)addMark:(id <Mark> )mark
{
    [children addObject:mark];
}

-(void)removeMark:(id <Mark> )mark
{
    if ([children containsObject:mark]) {
        [children removeObject:mark];
    }
    else
    {
        [children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

-(id <Mark> )childMarkAtIndex:(NSInteger)index
{
    if ([children count]<index) {
        return nil;
    }
    else
    {
        return [children objectAtIndex:index];
    }
}

-(id <Mark>)lastChild
{
    return [children lastObject];
}

-(NSInteger) count
{
    return [children count];
}

-(id)copyWithZone:(NSZone *)zone
{
    Stroke *strokeCopy=[[[self class]allocWithZone:zone]init];
    [strokeCopy setColor:color];
    [strokeCopy setSize:size];
    for (id<Mark> child in children) {
        id<Mark> childCopy=[child copy];
        [strokeCopy addMark:childCopy];
    }
    return strokeCopy;
}


@end
