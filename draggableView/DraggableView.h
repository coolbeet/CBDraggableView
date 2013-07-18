//
//  DraggableView.h
//  draggableView
//
//  Created by coolbeet on 7/18/13.
//  Copyright (c) 2013 suyu zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DraggableView : UIView {
    CGPoint offset;
}

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *yesLabel;
@property (nonatomic, strong) UILabel *noLabel;

- (id)initWithFrame:(CGRect)frame image:(UIImage*)aImage;

@end
