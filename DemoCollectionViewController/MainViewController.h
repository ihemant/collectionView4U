//
//  MainViewController.h
//  DemoCollectionViewController
//
//  Created by hemant kumar on 22/11/12.
//  Copyright (c) 2012 hemant kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCollectionViewCell.h"
@interface MainViewController : UICollectionViewController<UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSMutableArray *carImages;


@end
