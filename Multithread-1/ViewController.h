//
//  ViewController.h
//  Multithread-1
//
//  Created by student14 on 16/11/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgview;
- (IBAction)download:(id)sender;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;




@end

