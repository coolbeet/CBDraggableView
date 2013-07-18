//
//  ViewController.m
//  draggableView
//
//  Created by coolbeet on 7/18/13.
//  Copyright (c) 2013 suyu zhang. All rights reserved.
//

#import "ViewController.h"
#import "DraggableView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    DraggableView *dView1 = [[DraggableView alloc] initWithFrame:CGRectMake(160-100, 120, 200, 200) image:[UIImage  imageNamed:@"fay.jpg"]];
    DraggableView *dView2 = [[DraggableView alloc] initWithFrame:CGRectMake(160-100, 120, 200, 200) image:[UIImage  imageNamed:@"suyu.jpg"]];
    DraggableView *dView3 = [[DraggableView alloc] initWithFrame:CGRectMake(160-100, 120, 200, 200) image:[UIImage  imageNamed:@"coolbeet.jpg"]];

    [self.view addSubview:dView3];
    [self.view addSubview:dView2];
    [self.view addSubview:dView1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
