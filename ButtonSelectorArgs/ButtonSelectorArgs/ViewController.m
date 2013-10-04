//
//  ViewController.m
//  ButtonSelectorArgs
//
//  Created by navzou on 10/4/13.
//  Copyright (c) 2013 navzou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Hello" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(
                                (self.view.frame.size.width / 2) - (200 / 2),
                                (self.view.frame.size.height / 2) - (40 / 2),
                                200,
                                40)];
    button.tag = 1;
    
    [button addTarget:self
               action:@selector(buttonTouchUpInsideEvent:)
     forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)buttonTouchUpInsideEvent:(id)sender
{
    UIButton *button = (UIButton *)sender;
    
    NSLog(@"%d", button.tag);
}

@end
