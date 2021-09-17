//
//  ViewController.m
//  KonboardingProject
//
//  Created by Kellyane Nogueira on 29/07/21.
//

#import "ViewController.h"
#import <Konboarding/Konboarding.h>

@implementation ViewController

BOOL onboardingPresented = NO;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.cyanColor;
    
    if (!onboardingPresented) {
        onboardingPresented = YES;
        [self presentOnboarding];
    }
}

-(void) presentOnboarding {

  
    PageViewController * pageViewController1 = [[PageViewController alloc] initWithTitle:@"Recepcione bem" text:@"Humanize a comunicação e faça o primeiro contato com o aplicativo ser mais agradável." imageName:@"heart1"];
    
    pageViewController1.backgroundColor = [UIColor systemPinkColor];
    pageViewController1.titleColor = [UIColor whiteColor];
    pageViewController1.textColor = [UIColor whiteColor];
    pageViewController1.buttonCloseColor = [UIColor whiteColor];
    pageViewController1.buttonPreviewColor = [UIColor whiteColor];
    pageViewController1.buttonNextColor = [UIColor whiteColor];

    
    PageViewController * pageViewController2 = [[PageViewController alloc] initWithTitle:@"Torne conhecido" text:@"Dê o período necessário para que seu cliente julgue se o aplicativo é útil para as necessidades dele." imageName:@"heart1"];
    
    pageViewController2.backgroundColor = [UIColor systemPurpleColor];
    pageViewController2.titleColor = [UIColor whiteColor];
    pageViewController2.textColor = [UIColor whiteColor];
    pageViewController2.buttonCloseColor = [UIColor whiteColor];
    pageViewController2.buttonPreviewColor = [UIColor whiteColor];
    pageViewController2.buttonNextColor = [UIColor whiteColor];
    
    PageViewController * pageViewController3 = [[PageViewController alloc] initWithTitle:@"Mostre como se faz!" text:@"Apresente, de forma educativa, as principais funções e serviços da aplicação." imageName:@"heart1"];
    
    pageViewController3.backgroundColor = [UIColor darkGrayColor];
    pageViewController3.titleColor = [UIColor whiteColor];
    pageViewController3.textColor = [UIColor whiteColor];
    pageViewController3.buttonCloseColor = [UIColor whiteColor];
    pageViewController3.buttonPreviewColor = [UIColor whiteColor];
    pageViewController3.buttonNextColor = [UIColor whiteColor];
    
    
    KonboardingViewController * konboardingViewController = [[KonboardingViewController alloc] initWithContent:@[pageViewController1, pageViewController2, pageViewController3]];
    konboardingViewController.modalInPresentation = YES;
    
    [self.navigationController presentViewController:konboardingViewController animated:YES completion:nil];
}

@end
