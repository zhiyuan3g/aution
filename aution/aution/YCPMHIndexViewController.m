//
//  YCPMHIndexViewController.m
//  aution
//
//  Created by xusc on 16/2/22.
//  Copyright © 2016年 xusc. All rights reserved.
//

#import "YCPMHIndexViewController.h"
#import "YCPMHTableViewCell.h"

@interface YCPMHIndexViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation YCPMHIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.backgroundColor = [UIColor colorWithRed:1.000 green:0.843 blue:0.815 alpha:1.00];
    UIImageView * bgIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"640bg"]];
    self.tableView.backgroundView = bgIV;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    // 去掉分割线
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    
    //---
    
    NSArray *familyNames =[[NSArray alloc]initWithArray:[UIFont familyNames]];
    NSArray *fontNames;
    NSInteger indFamily, indFont;
    NSLog(@"[familyNames count]===%lu",[familyNames count]);
    for(indFamily=0;indFamily<[familyNames count];++indFamily)
        
    {
        NSLog(@"Family name: %@", [familyNames objectAtIndex:indFamily]);
        fontNames =[[NSArray alloc]initWithArray:[UIFont fontNamesForFamilyName:[familyNames objectAtIndex:indFamily]]];
        
        for(indFont=0; indFont<[fontNames count]; ++indFont)
            
        {
            NSLog(@"Font name: %@",[fontNames objectAtIndex:indFont]);
            
        }
        

    }
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YCPMHTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"YCPMHCell" forIndexPath:indexPath];
    cell.nameLabel.text = @"香港秋季拍卖会";
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150.0;
}

@end
