//
//  ViewController.m
//  TextView
//
//  Created by Mayuresh Rao on 10/24/15.
//  Copyright © 2015 Mayuresh Rao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *tvTextView;
@property (weak, nonatomic) IBOutlet UIButton *btnDone;
@property (weak, nonatomic) IBOutlet UILabel *lblLabel;
- (IBAction)btnDoneTouched:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tvTextView.delegate=self;
    self.btnDone.hidden=YES;
    
}
-(void)textViewDidBeginEditing:(UITextView *)textView{
    _btnDone.hidden=NO;

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnDoneTouched:(id)sender {
    self.lblLabel.text= self.tvTextView.text;
    [self.tvTextView resignFirstResponder];
}
@end
