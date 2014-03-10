//
//  UICollectionViewDemo1ViewController.m
//  UICollectionViewDemo1
//
//  Created by JWMAC on 2014. 3. 10..
//  Copyright (c) 2014년 KimJiWook. All rights reserved.
// https://github.com/kimjiwook/WE_UICollectionViewDemos.git

#import "UICollectionViewDemo1ViewController.h"

@interface UICollectionViewDemo1ViewController ()

@end

@implementation UICollectionViewDemo1ViewController
@synthesize collectionView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"UICollection Sample...";
    
    // DataSource... Delegate...
    [collectionView setDataSource:self];
    [collectionView setDelegate:self];
}

// Section for Item Count...
- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 15;
}

// CollectionViewCell Item Create...
- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:cell.contentView.frame];
    imgView.image = [UIImage imageNamed:@"sample.png"];
    
    [cell.contentView addSubview:imgView];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 70, 100, 30)];
    [lable setText:[NSString stringWithFormat:@"[JW]%d-%d",indexPath.section,indexPath.row]];
    
    [cell.contentView addSubview:lable];
    
    return cell;
}

@end