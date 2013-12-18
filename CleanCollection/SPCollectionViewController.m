//
//  SPCollectionViewController.m
//  CleanCollection
//
//  Created by guo liang on 13-12-18.
//  Copyright (c) 2013年 sniper. All rights reserved.
//

#import "SPCollectionViewController.h"
#import "SPCollectionViewCell.h"
#import "CollectionDataSource.h"
#import "DataManager.h"
#import "SPCollectionViewCell+configureForVideo.h"
static NSString * const Cellidentifier = @"SPCell";


@interface SPCollectionViewController ()

@property (nonatomic,strong) CollectionDataSource *dataSource;

@end

@implementation SPCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self setupCollectionView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private

- (void) setupCollectionView
{
  
    CollectionViewCellConfigureBlock configrureCell = ^(id cell, id item,NSIndexPath *indexPath){
        SPCollectionViewCell *_cell = (SPCollectionViewCell *)cell;
        [_cell configureCellForVideo:item];
        
    };
    
    self.dataSource = [[CollectionDataSource alloc] initWithItems:[[DataManager shareInstance] getData] cellIdentifier:Cellidentifier configureCellBlock:configrureCell];
    
    self.collectionView.dataSource = self.dataSource;
    
}


- (void) setupCollectionViewNostoryboard
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    self.collectionView.collectionViewLayout = layout;
    
    [self.collectionView registerClass:[SPCollectionViewCell class] forCellWithReuseIdentifier:Cellidentifier];
    
    [self setupCollectionView];
}

@end
