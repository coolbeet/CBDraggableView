//
//  DraggableView.m
//  draggableView
//
//  Created by coolbeet on 7/18/13.
//  Copyright (c) 2013 suyu zhang. All rights reserved.
//

#import "DraggableView.h"

@implementation DraggableView

@synthesize imageView, yesLabel, noLabel;

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//    }
//    return self;
//}

- (id)initWithFrame:(CGRect)frame image:(UIImage*)aImage
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

        self.imageView = [[UIImageView alloc] initWithImage:aImage];        
        imageView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
        [self addSubview:imageView];
        
        self.noLabel = [[UILabel alloc] initWithFrame:CGRectMake(frame.size.width-90, 0, 90, 50)];
        noLabel.text = @"PASS";
        noLabel.font = [UIFont fontWithName:@"ArialRoundedMTBold" size:26];
        noLabel.textAlignment = NSTextAlignmentCenter;
        noLabel.backgroundColor = [UIColor clearColor];
        noLabel.textColor = [UIColor redColor];
        noLabel.alpha = 0.0f;
        [self addSubview:noLabel];
        
        self.yesLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 90, 50)];
        yesLabel.text = @"LIKE";
        yesLabel.font = [UIFont fontWithName:@"ArialRoundedMTBold" size:26];
        yesLabel.textAlignment = NSTextAlignmentCenter;
        yesLabel.backgroundColor = [UIColor clearColor];
        yesLabel.textColor = [UIColor greenColor];
        yesLabel.alpha = 0.0f;
        [self addSubview:yesLabel];
        
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *aTouch = [touches anyObject];
    offset = [aTouch locationInView: self];
    
    //bring me to top 
    [self.superview bringSubviewToFront:self];
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *aTouch = [touches anyObject];
    CGPoint location = [aTouch locationInView:self.superview];
    
    CGPoint temp = CGPointMake(location.x - offset.x + 100, location.y - offset.y + 100);
    
    [UIView beginAnimations:@"Dragging A DraggableView" context:nil];
    self.center = temp;
    [UIView commitAnimations];
    
    //swipe right
    if (self.center.x >= 160) {
        //rotation
        [self setTransform:CGAffineTransformMakeRotation(((self.center.x - 160.0f)/160.0f) * (M_PI/5))];
        
        //labels
        yesLabel.alpha = (self.center.x - 160.0f)/160.0f;
        noLabel.alpha = 0.0f;
    }
    //swipe left
    else {
        //rotation
        [self setTransform:CGAffineTransformMakeRotation((self.center.x - 160.0f)/160.0f * (M_PI/5))];
        
        //labels
        noLabel.alpha = (160.0f - self.center.x)/160.0f;
        yesLabel.alpha = 0.0f;
    }
    
}

@end
