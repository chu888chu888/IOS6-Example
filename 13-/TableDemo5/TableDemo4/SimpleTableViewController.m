//
//  SimpleTableViewController.m
//  TableDemo4
//
//  Created by chuguangming on 14-6-5.
//  Copyright (c) 2014年 chuguangming. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SimpleTableCell.h"
#import "DetailViewController.h"
@interface SimpleTableViewController ()
@property (strong, nonatomic) IBOutlet UITableView *mytable;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentChange;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (strong, nonatomic) IBOutlet UISearchDisplayController *mySearchDisplayController;
@property (strong, nonatomic) NSMutableArray *storeResults;
@property (strong, nonatomic) NSMutableArray *results;
@end

@implementation SimpleTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=@"表格演示";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    self.searchBar.delegate = self;
    self.mySearchDisplayController.searchResultsDataSource = self;
    self.mySearchDisplayController.searchResultsDelegate = self;
    self.mySearchDisplayController.delegate = self;
    
    self.storeResults = [NSMutableArray arrayWithObjects:@"A", @"A", @"上海", @"深圳", @"香港", @"广东", @"北师大", @"北大", @"香江", @"香菜", @"北海道", @"惠州", @"东莞", @"杭州", nil];
    self.results = [NSMutableArray array];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UISearchDisplayDelegate

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString {
    [self filterContentForSearchText:searchString
                               scope:[self.searchBar scopeButtonTitles][self.searchBar.selectedScopeButtonIndex]];
    
    return YES;
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchScope:(NSInteger)searchOption {
    [self filterContentForSearchText:self.searchBar.text
                               scope:self.searchBar.scopeButtonTitles[searchOption]];
    
    return YES;
}

-(void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope {
    NSMutableArray *tempResults = [NSMutableArray array];
    NSUInteger searchOptions = NSCaseInsensitiveSearch | NSDiacriticInsensitiveSearch;
    
    for (int i = 0; i < self.storeResults.count; i++) {
        NSString *storeString = self.storeResults[i];
        NSRange storeRange = NSMakeRange(0, storeString.length);
        NSRange foundRange = [storeString rangeOfString:searchText options:searchOptions range:storeRange];
        if (foundRange.length) {
            [tempResults addObject:storeString];
        }
    }
    [self.results removeAllObjects];
    [self.results addObjectsFromArray:tempResults];
}
#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.mySearchDisplayController.searchResultsTableView) {
        return self.results.count;
    }
    else {
        return self.storeResults.count;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *kCellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellIdentifier];
    }
    
    if (tableView == self.mySearchDisplayController.searchResultsTableView) {
        cell.textLabel.text = self.results[indexPath.row];
    }
    else {
        cell.textLabel.text = self.storeResults[indexPath.row];
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.mySearchDisplayController.searchResultsTableView) {
        NSLog(@"%@", self.results[indexPath.row]);
    }
    else {
        NSLog(@"%@", self.storeResults[indexPath.row]);
    }
}
@end
