//
//  ViewController.m
//  Multithread-1
//
//  Created by student14 on 16/11/16.
//  Copyright © 2016 student14. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)download:(id)sender {
    
    NSString *imgpath=@"http://images.jagran.com/BadshahB_270815.jpg";
    
    [_indicator startAnimating];
    [NSThread detachNewThreadSelector:@selector(downloadimage:) toTarget:self withObject:imgpath];
    
}
-(void)downloadimage:(NSString *)imgpath
{
    NSURL *url=[NSURL URLWithString:imgpath];
    NSData *data=[NSData dataWithContentsOfURL:url];
    UIImage *img=[UIImage imageWithData:data];
    
    [self performSelectorOnMainThread:@selector(updateUI:) withObject:img waitUntilDone:NO];
    
}
-(void)updateUI:(UIImage *)img
{
    self.imgview.image=img;
    [_indicator stopAnimating];
}
@end
