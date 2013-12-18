//
//  SPCollectionViewCell+configureForVideo.m
//  CleanCollection
//
//  Created by guo liang on 13-12-18.
//  Copyright (c) 2013年 sniper. All rights reserved.
//

#import "SPCollectionViewCell+configureForVideo.h"
#import "Video.h"
@implementation SPCollectionViewCell (configureForVideo)

- (void)configureCellForVideo:(Video *)video
{
    self.nameLabel.text = video.name;
    self.imageView.image = [UIImage imageNamed:@"sniper"];

}

@end
