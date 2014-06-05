//
//  Vertex.m
//  DrawPaint
//
//  Created by 林鹏 on 6/4/14.
//  Copyright (c) 2014 林鹏. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
@synthesize location;
@dynamic color,size;

-(id)initWithLocation:(CGPoint)alocation;
{
    if (self=[super init]) {
        [self setLocation:alocation];
        
    }
    return self;
}

-(void)setColor:(UIColor *)color{}
-(UIColor *)color
{
    return nil;
}
-(void)setSize:(CGFloat)size{}
-(CGFloat)size
{
    return 0.0;
}


-(void)addMark:(id <Mark> )mark{}
-(void)removeMark:(id <Mark> )mark{}
-(id <Mark> )childMarkAtIndex:(NSInteger)index
{
    return nil;
}
-(id <Mark> )lastChild
{
    return nil;
}
-(NSUInteger) count
{
    return 0;
}
-(NSEnumerator*)enumerator
{
    return nil;
}
-(id)copyWithZone:(NSZone *)zone
{
    Vertex *vertexCopy=[[[self class]allocWithZone:zone]initWithLocation:location];
    return vertexCopy;
}
@end
