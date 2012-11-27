//
//  MainViewController.m
//  DemoCollectionViewController
//
//  Created by hemant kumar on 22/11/12.
//  Copyright (c) 2012 hemant kumar. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end


@implementation MainViewController
@synthesize carImages=_carImages;

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
    _carImages = [@[@"chevy_small.jpg",
                  @"mini_small.jpg",
                  @"rover_small.jpg",
                  @"smart_small.jpg",
                  @"highlander_small.jpg",
                  @"venza_small.jpg",
                  @"volvo_small.jpg",
                  @"vw_small.jpg",
                  @"ford_small.jpg",
                  @"nissan_small.jpg",
                  @"honda_small.jpg",
                  @"jeep_small.jpg"] mutableCopy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -
#pragma mark UICollectionViewDataSource

-(NSInteger)numberOfSectionsInCollectionView:
(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section
{
    return _carImages.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MyCollectionViewCell *myCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"MyCell"
                                    forIndexPath:indexPath];
    
    UIImage *image;
    int row = [indexPath row];
    
    image = [UIImage imageNamed:_carImages[row]];
    
    myCell.imageView.image = image;
    
    return myCell;
}

@end
