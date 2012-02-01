//
//  ViewController.h
//  DocInteractionTest
//
//  Created by 手代木 伸一 on 12/01/29.
//  Copyright (c) 2012年 paraches. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIDocumentInteractionControllerDelegate>

@property (strong, nonatomic) UIDocumentInteractionController *docInterCon;
@property (strong, nonatomic) IBOutlet UIButton *sendDocButton;

- (IBAction)touchSendButton:(id)sender;

@end
