//
//  LoginViewController.m
//  Login
//
//  Created by Jlius Suweno on 23/11/20.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)loginButtonPressed:(id)sender {
    NSString *username = _usernameTextField.text;
    NSString *password = _passwordTextField.text;
    if ([username length] == 0) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Login"
                                   message:@"Username tidak boleh kosong!"
                                   preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {}];

        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    } else if ([password length] == 0) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Login"
                                   message:@"Password tidak boleh kosong!"
                                   preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {}];

        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    } else if (![username isEqualToString:@"admin"]) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Login"
                                   message:@"Username tidak ditemukan!"
                                   preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {}];

        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    } else if (![password isEqualToString:@"123456"]) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Login"
                                   message:@"Password salah!"
                                   preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction * action) {}];

        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
- (IBAction)registerButtonPressed:(id)sender {
    NSBundle *podBundle = [NSBundle bundleForClass:[LoginViewController class]];
    id data = [podBundle URLForResource:@"Register" withExtension:@"bundle"];
    NSBundle *bundle = [NSBundle bundleWithURL:data];
    LoginViewController *loginView = [[LoginViewController alloc]initWithNibName:@"LoginViewController" bundle:bundle];
    loginView.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:loginView animated:YES completion:nil];
}


@end
