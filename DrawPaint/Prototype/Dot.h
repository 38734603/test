//
//  Dot.h
//  DrawPaint
//
//  Created by 林鹏 on 6/4/14.
//  Copyright (c) 2014 林鹏. All rights reserved.
//

#import "Vertex.h"

@interface Dot : Vertex
{
    @private
    UIColor *color;
    CGFloat size;
}
@property(nonatomic,retain)UIColor *color;
@property(nonatomic,assign)CGFloat size;

-(id)copyWithZone:(NSZone *)zone;
@end
