//
//  ViewController.m
//  ObjectiveC
//
//  Created by Zakee Tanksley on 1/2/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Courses";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    //method call
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier: @"cellId"];

}

//Number of rows in TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView numberOfRowsInSection: (NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Type    pointer Object
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    cell.backgroundColor = UIColor.redColor;
    return cell;
}


@end
