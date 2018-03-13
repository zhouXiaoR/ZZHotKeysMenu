//
//  ZZHotKeysLayout.h
//  ZZHotKeysMenu
//
//  Created by 周晓瑞 on 2018/3/13.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZZHotKeysLayout;
@protocol ZZHotKeysLayoutDelegate <NSObject>
@required
- (CGSize)hotKeysLayout:(ZZHotKeysLayout *)layout indexPath:(NSIndexPath*)indexPath;
@end


@interface ZZHotKeysLayout : UICollectionViewLayout

@property(nonatomic,assign)CGFloat columSpace;
@property(nonatomic,assign)CGFloat rowSpace;
@property(nonatomic,assign)UIEdgeInsets flowEdgeInset;

@property(nonatomic,weak)id <ZZHotKeysLayoutDelegate> delegate;
@end
