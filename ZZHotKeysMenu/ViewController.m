//
//  ViewController.m
//  ZZHotKeysMenu
//
//  Created by 周晓瑞 on 2018/3/13.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ZZHotKeysLayout.h"
#import "ZZCollectionViewCell.h"

#define RGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBAColor(r, g, b ,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define RandColor RGBColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))

static NSString * const kCellID = @"Cell";

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,
     ZZHotKeysLayoutDelegate>

@property(nonatomic,weak)UICollectionView *hotKeyCollectView;
@property(nonatomic,strong)ZZHotKeysLayout *hkLayout;
@property(nonatomic,strong)NSMutableArray *hotKeys;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self hotKeyCollectView];
}


#pragma mark - 

- (NSMutableArray *)hotKeys{
    if (_hotKeys == nil) {
        _hotKeys = [NSMutableArray array];
        [_hotKeys addObject:@"哈哈哈1"];
        [_hotKeys addObject:@"哈哈哈哈哈 东零西碎哈"];
        [_hotKeys addObject:@"哈哈"];
        [_hotKeys addObject:@"哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈123哈"];
        [_hotKeys addObject:@"哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈魂牵梦萦塔顶"];
        [_hotKeys addObject:@"哈哈哈哈"];
        [_hotKeys addObject:@"哈哈革艺术硕士哈"];
        [_hotKeys addObject:@"哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈"];
        [_hotKeys addObject:@"哈哈哈1"];
        [_hotKeys addObject:@"哈哈哈哈哈 东零西碎哈"];
        [_hotKeys addObject:@"哈哈"];
        [_hotKeys addObject:@"哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈123哈"];
        [_hotKeys addObject:@"哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈魂牵梦萦塔顶"];
        [_hotKeys addObject:@"哈哈哈哈"];
        [_hotKeys addObject:@"哈哈革艺术硕士哈"];
        [_hotKeys addObject:@"哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈"];
        [_hotKeys addObject:@"哈哈哈1"];
        [_hotKeys addObject:@"哈哈哈哈哈 东零西碎哈"];
        [_hotKeys addObject:@"哈哈"];
        [_hotKeys addObject:@"哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈123哈"];
        [_hotKeys addObject:@"哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈魂牵梦萦塔顶"];
        [_hotKeys addObject:@"哈哈哈哈"];
        [_hotKeys addObject:@"哈哈革艺术硕士哈"];
        [_hotKeys addObject:@"哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈"];
        [_hotKeys addObject:@"哈哈哈1"];
        [_hotKeys addObject:@"哈哈哈哈哈 东零西碎哈"];
        [_hotKeys addObject:@"哈哈"];
        [_hotKeys addObject:@"哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈123哈"];
        [_hotKeys addObject:@"哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈魂牵梦萦塔顶"];
        [_hotKeys addObject:@"哈哈哈哈"];
        [_hotKeys addObject:@"哈哈革艺术硕士哈"];
        [_hotKeys addObject:@"哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈哈哈 东零西碎哈"];
        [_hotKeys addObject:@"哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈魂牵梦萦塔顶"];
        [_hotKeys addObject:@"哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈"];
        [_hotKeys addObject:@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
        [_hotKeys addObject:@"哈哈哈魂牵梦萦塔顶"];
    }
    return _hotKeys;
}

- (UICollectionView *)hotKeyCollectView{
    if (_hotKeyCollectView == nil) {
        UICollectionView *  collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:self.hkLayout];
        collectionView.backgroundColor = [UIColor whiteColor];
        collectionView.delegate=self;
        collectionView.dataSource =self;
        [self.view addSubview:collectionView];
        [collectionView registerClass:[ZZCollectionViewCell class] forCellWithReuseIdentifier:kCellID];
        _hotKeyCollectView = collectionView;
    }
    return _hotKeyCollectView;
}

- (ZZHotKeysLayout *)hkLayout{
    if (_hkLayout == nil) {
        _hkLayout = [[ZZHotKeysLayout alloc]init];
        _hkLayout.flowEdgeInset = UIEdgeInsetsMake(20, 10, 15, 40);
        _hkLayout.rowSpace = 30;
        _hkLayout.columSpace = 15;
        _hkLayout.delegate = self;
    }
    return _hkLayout;
}

#pragma mark - UICollectionViewDelegate,UICollectionViewDataSource

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ZZCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    cell.contentView.backgroundColor = RandColor;
    cell.hkLab.text = self.hotKeys[indexPath.item];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.hotKeys.count;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSString * hotKey = self.hotKeys[indexPath.item];
    NSLog(@"点击了:  %@",hotKey);
}

- (CGSize)hotKeysLayout:(ZZHotKeysLayout *)layout indexPath:(NSIndexPath *)indexPath{
    NSString * hotKey = self.hotKeys[indexPath.item];
    return  [self stringSize:hotKey];
}

- (CGSize)stringSize:(NSString *)string{
    if (string.length == 0) return CGSizeZero;
    UIFont * font = [UIFont systemFontOfSize:14];
    CGFloat yOffset = 3.0f;
    CGFloat width = [UIScreen mainScreen].bounds.size.width -  self.hkLayout.flowEdgeInset.left - self.hkLayout.flowEdgeInset.right;
    CGSize contentSize = [string boundingRectWithSize:CGSizeMake(width,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
    CGSize size = CGSizeMake(MIN(contentSize.width + 20,width) , MAX(22, contentSize.height + 2 * yOffset + 1));
    return size;
}

@end





