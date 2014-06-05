//
//  Stroke.h
//  DrawPaint
//
//  Created by 林鹏 on 6/4/14.
//  Copyright (c) 2014 林鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"

@interface Stroke : NSObject<Mark,NSCopying>
{
    @protected
    UIColor *color;
    CGFloat size;
    NSMutableArray *children;
}

@property(nonatomic,retain)UIColor *color;
@property(nonatomic,assign)CGFloat size;
@property(nonatomic,assign)CGPoint location;
@property(nonatomic,assign)NSInteger count;
@property(nonatomic,readonly)id <Mark> lastChild;

-(void)addMark:(id <Mark> )mark;
-(void)removeMark:(id <Mark> )mark;
-(id <Mark> )childMarkAtIndex:(NSInteger)index;
-(id)copyWithZone:(NSZone *)zone;
@end
