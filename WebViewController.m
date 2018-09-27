//
//  WebViewController.m
//  atm2
//
//  Created by yoshinobu & hamham on 2013/03/23.
//  Copyright (c) 2013年 yoshinobu & hamham. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.indicator.hidesWhenStopped = YES;
//    self.gestureRecognizer.delegate = self;  // Web画面拡大時もスワイプできるようにする
    if (self.urlToShow == nil) {
        self.messageLabel.text = @"情報なし";
    } else if ([self.urlToShow isEqual:[NSURL URLWithString:@""]]) {
        self.messageLabel.text = @"このATMではご指定の銀行の\nキャッシュカードは利用できません";
    } else {
        self.messageLabel.text = @"";
    }
    NSURLRequest *request = [NSURLRequest requestWithURL:self.urlToShow];
    [self.webView loadRequest:request];
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [self.indicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    [self.indicator stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    if ([error code] != NSURLErrorCancelled) {
        NSString *errorMessage = [error localizedDescription];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:errorMessage delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        [self.indicator stopAnimating];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"backToMain"]) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        [self.indicator stopAnimating];
    }
}
/* Web画面を拡大した時でもスワイプできるようにする
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}
*/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
