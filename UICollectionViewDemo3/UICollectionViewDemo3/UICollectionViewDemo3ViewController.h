//
//  UICollectionViewDemo3ViewController.h
//  UICollectionViewDemo3
//
//  Created by JWMAC on 2014. 3. 10..
//  Copyright (c) 2014년 KimJiWook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewDemo3ViewController : UIViewController
<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>


@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@end
