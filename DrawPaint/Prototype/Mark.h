//
//  Mark.h
//  DrawPaint
//
//  Created by 林鹏 on 6/4/14.
//  Copyright (c) 2014 林鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Mark <NSObject>

@property(nonatomic,retain)UIColor *color;
@property(nonatomic,assign)CGFloat size;
@property(nonatomic,assign)CGPoint location;
@property(nonatomic,readonly)id <Mark> lastChild;

//-(id)copy;
-(void)addMark:(id <Mark> )mark;
-(void)removeMark:(id <Mark> )mark;
-(id <Mark> )childMarkAtIndex:(NSInteger)index;
@end
