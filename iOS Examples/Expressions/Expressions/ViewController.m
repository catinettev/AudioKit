//
//  ViewController.m
//  Expressions
//
//  Created by Aurelius Prochazka on 6/30/14.
//  Copyright (c) 2014 Hear For Yourself. All rights reserved.
//

#import "ViewController.h"
#import "AKFoundation.h"
#import "ExpressionInstrument.h"

@interface ViewController ()
{
    ExpressionInstrument *expressionInstrument;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    AKOrchestra *orch = [[AKOrchestra alloc] init];
    expressionInstrument = [[ExpressionInstrument alloc] init];
    [orch addInstrument:expressionInstrument];
    [[AKManager sharedAKManager] runOrchestra:orch];
}

- (IBAction)hit1:(id)sender
{
    [expressionInstrument playForDuration:3];
}
- (IBAction)hit2:(id)sender
{
    [expressionInstrument playForDuration:9];
}

@end