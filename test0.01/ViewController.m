//
//  ViewController.m
//  test0.01
//
//  Created by CYL－Mac on 2017/3/28.
//  Copyright © 2017年 CYL－Mac. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"03-HTML" withExtension:@"pdf"];
    
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:req];
    
    //    detectsPhoneNumbers
    //    dataDetectorTypes
    //    allowsInlineMediaPlayback
    //    mediaPlaybackRequiresUserAction
    //    mediaPlaybackAllowsAirPlay
    //    suppressesIncrementalRendering
    //    keyboardDisplayRequiresUserAction
    //    paginationMode
    //    paginationBreakingMode
    //    pageLength
    //    gapBetweenPages
    self.webView.scalesPageToFit = NO;
    self.webView.dataDetectorTypes = UIDataDetectorTypePhoneNumber ;
    self.webView.allowsInlineMediaPlayback = NO;
    self.webView.mediaPlaybackRequiresUserAction = NO;
    self.webView.gapBetweenPages = 0.0;
    self.webView.pageLength = 0.0;
    self.webView.scrollView.showsVerticalScrollIndicator = NO;
    
    
}

- (nullable NSString *)stringByEvaluatingJavaScriptFromString:(NSString *)script{
    NSLog(@"%s--%d",__func__,__LINE__);
    return [NSString stringWithFormat:@"dadwaw"];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"%s--%d",__func__,__LINE__);
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    NSLog(@"%s--%d--%ld--%@",__func__,__LINE__,navigationType,webView);
    return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"%s--%d",__func__,__LINE__);
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"%s--%d",__func__,__LINE__);
}
- (void)loadRequest:(NSURLRequest *)request{
    NSLog(@"%s--%d",__func__,__LINE__);
}
- (void)loadHTMLString:(NSString *)string baseURL:(nullable NSURL *)baseURL{
    NSLog(@"%s--%d",__func__,__LINE__);
}
- (void)loadData:(NSData *)data MIMEType:(NSString *)MIMEType textEncodingName:(NSString *)textEncodingName baseURL:(NSURL *)baseURL{
    NSLog(@"%@",__func__);
}


- (void)avfundation{
    extern NSString *CTSettingCopyMyPhoneNumber();
    
    NSString *s = [[UIDevice currentDevice] systemName];
    NSLog(@"%@-",s);
    
    
    NSArray *arry = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4", nil];
    NSString *str = [arry componentsJoinedByString:@"+"];
    NSLog(@"%@",str);
    
    //实例化一个嘴的对象
    AVSpeechSynthesizer *sps = [AVSpeechSynthesizer new];
    
    //实例化一个舌头
    AVSpeechUtterance *sut = [[AVSpeechUtterance alloc]initWithString:@"填文本框输入文字"];
    
    //设置舌头 rate语速  volume音量   pitchmultiplier音调
    
    sut.rate = 5;//[0-1]
    
    sut.volume = 0.7;//[0-1] Default = 1
    
    sut.pitchMultiplier = 1.5;// [0.5 - 2] Default = 1
    
    [sps speakUtterance:sut];
    
}


@end
