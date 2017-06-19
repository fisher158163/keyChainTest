//
//  ViewController.m
//  keyChainTest
//
//  Created by Liyu on 2017/6/2.
//  Copyright © 2017年 liyu. All rights reserved.
//

#import "ViewController.h"
#import "LYKeychainTool.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)saveBtn:(id)sender {
    [LYKeychainTool saveKeychainValue:self.userNameTextField.text key:@"userName"];
    [LYKeychainTool saveKeychainValue:self.passwordTextField.text key:@"password"];
}

- (IBAction)readeBtn:(id)sender {
    self.userNameTextField.text = [NSString stringWithFormat:@"读取到用户名:%@",[LYKeychainTool readKeychainValue:@"userName"]];
    self.passwordTextField.text = [NSString stringWithFormat:@"读取到用户密码:%@",[LYKeychainTool readKeychainValue:@"password"]];
}

- (IBAction)deleteBtn:(id)sender {
    [LYKeychainTool deleteKeychainValue:@"userName"];
    [LYKeychainTool deleteKeychainValue:@"password"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
