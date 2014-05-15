//
//  ViewController.m
//  PhotoDemo
//
//  Created by Harry on 12-12-6.
//  Copyright (c) 2012年 Harry. All rights reserved.
//

#import "ViewController.h"

#import "HGPhotoWall.h"

@interface ViewController () <HGPhotoWallDelegate>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) UIBarButtonItem *barButtonEdit;
@property (strong, nonatomic) UIBarButtonItem *barButtonCancel;
@property (strong, nonatomic) UIBarButtonItem *barButtonDone;

@property (strong, nonatomic) HGPhotoWall *photoWall;

@property (nonatomic) BOOL isEditModel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"HGPhoto Demo";
    
    self.barButtonEdit = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(actionEdit)];
    self.barButtonCancel = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(actionCancel)];
    self.barButtonDone = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(actionDone)];
    self.navigationItem.rightBarButtonItem = self.barButtonEdit;
    self.navigationItem.leftBarButtonItem = nil;
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.photoWall = [[HGPhotoWall alloc] initWithFrame:CGRectZero];
    [self.photoWall setPhotos:[NSArray arrayWithObjects:
                                   @"http://www.weiphone.com/images_v3/logo.png",
                                   @"http://www.cocoachina.com/cms/uploads/allimg/121204/4196-1212041055480-L.jpg",
                                   @"http://www.cocoachina.com/cms/uploads/allimg/121204/4196-1212041513010-L.jpg",
                                   @"http://www.cocoachina.com/cms/uploads/allimg/121204/4196-1212041F4430-L.jpg",
                                   @"http://www.cocoachina.com/cms/uploads/allimg/121204/4196-121204091R70-L.jpg",
                                   @"http://cc.cocimg.com/bbs/attachment/upload/21/126211338811104.jpg", nil]];
    self.photoWall.delegate = self;
    
    [self.view addSubview:self.tableView];
    
    self.isEditModel = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

- (void)actionEdit
{
    self.navigationItem.rightBarButtonItem = self.barButtonDone;
    self.navigationItem.leftBarButtonItem = self.barButtonCancel;
    
    self.isEditModel = YES;
    [self.photoWall setEditModel:self.isEditModel];
    
    [self.tableView reloadData];
}

- (void)actionCancel
{
    self.navigationItem.rightBarButtonItem = self.barButtonEdit;
    self.navigationItem.leftBarButtonItem = nil;
    
    self.isEditModel = NO;
    [self.photoWall setEditModel:self.isEditModel];
    
    [self.tableView reloadData];
}

- (void)actionDone
{
    self.navigationItem.rightBarButtonItem = self.barButtonEdit;
    self.navigationItem.leftBarButtonItem = nil;
    
    self.isEditModel = NO;
    [self.photoWall setEditModel:self.isEditModel];
    
    [self.tableView reloadData];
}

#pragma mark -

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Cell = @"Cell";
    
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:Cell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle  reuseIdentifier:Cell];
    }
    
    cell.textLabel.text = @"Made By Harry";
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return self.photoWall;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return self.photoWall.frame.size.height;
}

#pragma mark -

- (void)photoWallPhotoTaped:(NSUInteger)index
{
    UIActionSheet *actionSheetTemp = [[UIActionSheet alloc] initWithTitle:nil
                                                                 delegate:self
                                                        cancelButtonTitle:@"取消"
                                                   destructiveButtonTitle:@"删除图片"
                                                        otherButtonTitles:nil, nil];
    [actionSheetTemp showInView:self.view];
    [actionSheetTemp release];
}

- (void)photoWallMovePhotoFromIndex:(NSInteger)index toIndex:(NSInteger)newIndex
{
    
}

- (void)photoWallAddAction
{
    [self.photoWall addPhoto:@"http://cc.cocimg.com/bbs/attachment/upload/92/1226921340986127.jpg"];
}

- (void)photoWallAddFinish
{
    
}

- (void)photoWallDeleteFinish
{
    
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != actionSheet.cancelButtonIndex) {
        [self.photoWall deletePhotoByIndex:0];
    }
}

@end
