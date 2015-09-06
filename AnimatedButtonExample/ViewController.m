//
//  ViewController.m
//  AnimatedButtonExample
//
//  Created by Andrey Sapunov on 06/09/15.
//  Copyright (c) 2015 Andrey Sapunov. All rights reserved.
//

#import "ViewController.h"
#import "ALAnimatedButtonWithMenu.h"

@interface ViewController () <ALAnimatedButtonWithMenuDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ALAnimatedButtonWithMenu * menuButton = [[ALAnimatedButtonWithMenu alloc] initWithImage:[UIImage imageNamed:@"button_plus"] inView:self.view];
    
    [menuButton addMenuButton:[UIImage imageNamed:@"button_1"] withTag:1];
    [menuButton addMenuButton:[UIImage imageNamed:@"button_2"] withTag:2];
    [menuButton addMenuButton:[UIImage imageNamed:@"button_3"] withTag:3];
    
    [menuButton setAnimatedButtonDelegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ALAnimatedButtonWithMenuDelegate

- (void) animatedMenuButtonSelected:(ALAnimatedButtonWithMenu *)animatedButtonWithMenu buttonTag:(NSInteger)buttonTag {
    NSLog(@"Menu button tapped: %d", (int) buttonTag);
}

@end
