//
//  Vertex.h
//  DrawPaint
//
//  Created by 林鹏 on 6/4/14.
//  Copyright (c) 2014 林鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Vertex : NSObject<Mark,NSCopying>
{
    @protected
    CGPoint location;
}

@property(nonatomic,retain)UIColor *color;
@property(nonatomic,assign)CGFloat size;
@property(nonatomic,assign)CGPoint location;
@property(nonatomic,readonly)id <Mark> lastChild;

-(id)initWithLocation:(CGPoint)location;
-(void)addMark:(id <Mark> )mark;
-(void)removeMark:(id <Mark> )mark;
-(id <Mark> )childMarkAtIndex:(NSInteger)index;
-(id)copyWithZone:(NSZone *)zone;
@end
