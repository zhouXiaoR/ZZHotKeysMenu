//
//  ZZHotKeysLayout.m
//  ZZHotKeysMenu
//
//  Created by 周晓瑞 on 2018/3/13.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ZZHotKeysLayout.h"

@interface ZZHotKeysLayout()

@property(nonatomic,strong)NSMutableArray
<UICollectionViewLayoutAttributes*> *attrsArray;

@property(nonatomic,assign)CGRect lastItemRect;

@end

@implementation ZZHotKeysLayout

- (NSMutableArray<UICollectionViewLayoutAttributes *> *)attrsArray{
    if (_attrsArray == nil) {
        _attrsArray = [NSMutableArray array];
    }
    return _attrsArray;
}

- (instancetype)init{
    if (self = [super init]) {
        self.flowEdgeInset = UIEdgeInsetsMake(10, 10, 10, 10);
        self.rowSpace = 10;
        self.columSpace = 10;
    }
    return self;
}

- (void)initData{
    [self.attrsArray removeAllObjects];
    self.lastItemRect = CGRectMake(self.flowEdgeInset.left,self.flowEdgeInset.top, 0, 0);
}


- (void)prepareLayout{
    [super prepareLayout];
    
    [self initData];
    
    NSInteger cout = [self.collectionView numberOfItemsInSection:0];
    for (int i=0;i<cout; i++){
        UICollectionViewLayoutAttributes * attribute = [self layoutAttributesForItemAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
        [self.attrsArray addObject:attribute];
    }
}

- (nullable UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewLayoutAttributes *attrs = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    
    CGFloat orx = 0;
    CGFloat ory = 0;
    
    CGFloat isRowDs = 0;
    CGFloat isColumnDs = 0;
    
    CGFloat isCacuRowSpace = 0;
    CGFloat isCacuColumnSpace = 0;
    
    if (CGRectGetMaxX(self.lastItemRect) != self.flowEdgeInset.left) {
        isCacuColumnSpace = self.flowEdgeInset.left;
        isColumnDs = self.columSpace;
    }
    
    if (CGRectGetMaxY(self.lastItemRect) != self.flowEdgeInset.top) {
        isCacuRowSpace = self.flowEdgeInset.top;
        isRowDs = self.rowSpace;
    }
    
    CGSize size = [self.delegate hotKeysLayout:self indexPath:indexPath];
    CGFloat maxDistance = self.collectionView.frame.size.width - CGRectGetMaxX(self.lastItemRect) - isColumnDs  - self.flowEdgeInset.right;
    if (size.width > maxDistance) {
        orx = self.flowEdgeInset.left;
        ory = self.lastItemRect.origin.y + self.lastItemRect.size.height + isRowDs;
    }else{
        orx = self.lastItemRect.origin.x + self.lastItemRect.size.width + isColumnDs;
        ory = self.lastItemRect.origin.y;
    }
    
    attrs.frame =  CGRectMake(orx,ory,size.width,size.height);
    
    self.lastItemRect = attrs.frame;
    
    return attrs;
}

- (nullable NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    return self.attrsArray;
}
- (CGSize)collectionViewContentSize{
    CGFloat maxContentHeight = self.lastItemRect.origin.y + self.lastItemRect.size.height + self.flowEdgeInset.bottom;
    return CGSizeMake(0, maxContentHeight);
}
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds{
    return YES;
}
@end
