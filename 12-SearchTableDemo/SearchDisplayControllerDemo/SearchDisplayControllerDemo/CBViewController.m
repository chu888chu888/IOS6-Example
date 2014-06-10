//
//  CBViewController.m
//  SearchDisplayControllerDemo
//
//  Created by Bob on 06/09/13.
//  Copyright (c) 2013 CocoaBob. All rights reserved.
//

#import "CBViewController.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.searchDisplayController setDisplaysSearchBarInNavigationBar:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    if (tableView == self.tableView) {
        cell.textLabel.text = [NSString stringWithFormat:@"Table Content Section %d Row %d",indexPath.section,indexPath.row];
    }
    else if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell.textLabel.text = [NSString stringWithFormat:@"Search Result Section %d Row %d",indexPath.section,indexPath.row];
    }
    return cell;
}

@end
