//
//  UICollectionViewDemo3ViewController.m
//  UICollectionViewDemo3
//
//  Created by JWMAC on 2014. 3. 10..
//  Copyright (c) 2014년 KimJiWook. All rights reserved.
// https://github.com/kimjiwook/WE_UICollectionViewDemos.git

#import "UICollectionViewDemo3ViewController.h"

@interface UICollectionViewDemo3ViewController ()

@end

@implementation UICollectionViewDemo3ViewController
@synthesize collectionView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"UICollection Sample...";
    
    // DataSource... Delegate...
    [collectionView setDataSource:self];
    [collectionView setDelegate:self];
    
    // Section Size... Layout Setting...
//    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
//    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
}

// CollectionView Sections Count...
- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}

// Section for Item Count...
- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
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

// Section Header Create...
- (UICollectionReusableView *) collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    if([kind isEqualToString:UICollectionElementKindSectionHeader]){
        UICollectionReusableView *rView = [self.collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"Header" forIndexPath:indexPath];
        
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 30)];
        
        [lable setText:[NSString stringWithFormat:@"%d번 라인",indexPath.section]];
        [lable setTextAlignment:NSTextAlignmentRight];
        [lable setFont:[UIFont systemFontOfSize:20.0f]];
        [lable setBackgroundColor:[UIColor yellowColor]];
        
        [rView addSubview:lable];
        
        return rView;
    }
    return Nil;
}

@end
