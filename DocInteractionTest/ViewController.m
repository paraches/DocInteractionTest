//
//  ViewController.m
//  DocInteractionTest
//
//  Created by 手代木 伸一 on 12/01/29.
//  Copyright (c) 2012年 paraches. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize docInterCon;
@synthesize sendDocButton;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)touchSendButton:(id)sender
{
	//	データへの NSURL を作成
	NSBundle *bundle = [NSBundle mainBundle];
	NSString *dataFilePath = [bundle pathForResource:@"myPic" ofType:@"JPG"];
	NSURL *url = [NSURL fileURLWithPath:dataFilePath];

	//	UIDocumentInteractionController のインスタンスを作成して delegate 設定
	self.docInterCon = [UIDocumentInteractionController interactionControllerWithURL:url];
	self.docInterCon.delegate = self;

	//	アプリケーションを表示してユーザに選択してもらう
	BOOL isValid;
	isValid = [self.docInterCon presentOpenInMenuFromRect:self.view.frame inView:self.view animated:YES];
	if (!isValid) {
		NSLog(@"開けるアプリケーションが見つからない！");
	}
}

@end
